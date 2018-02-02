################################################################################
# File   : first_order.jl
# Author : Sandeep Koranne (C) 2017
# Purpose: Rewrite Non-linear wave equation using first order derivation
################################################################################
eps_infty = 2.25;
alpha_a = 0.15;
alpha_b = 1-alpha_a;
beta = 0.15;
gamma = 0.05;
omega_a = 3.65;
omega_b = 4.65;
chi_d   = 5.5;

function RESULTANT_ENTRY(h,vc_ratio)
    X1_OMEGA = -(vc_ratio*vc_ratio)*eps_infty +
        (alpha_a*chi_d)/(1-(vc_ratio/omega_a)^2) +
        (alpha_b*chi_d)/(1-(vc_ratio/omega_b)^2);
    RES_ENTRY = -2-2*h^2*X1_OMEGA;
    return RES_ENTRY;
end

function NLWAVE(L, DX, v, T, delta)
    CFL=0.1;
    DT = CFL*DX/(v);
    S2 = (v^2*DT^2/DX^2);
    M  = Int(round(L/DX))+1;
    E   = zeros(M);
    EP  = zeros(M);
    HZ  =zeros(M);
    F   = zeros(M);
    FP  = zeros(M);
    G   = zeros(M);
    GP  = zeros(M);
    JF  = zeros(M);
    JFP = zeros(M);
    JG  = zeros(M);
    JGP = zeros(M);

    TOTAL_TIME_STEPS = Int(round(T/DT));
    computed_value = RESULTANT_ENTRY( DX,v );
    println("computed_value = ", computed_value);
    
    # Initial conditions
    INITIAL_VALUE = 0.5;
    for j in 1:M-1
        E[j+Int(round(v*DT))] = EP[j] = INITIAL_VALUE*exp.(-0.5*(abs(j-10)/2)^2);
    end
    writedlm("ep.dat", E );
    DT_DX_FACTOR = DT/DX;
    for n in collect(1:TOTAL_TIME_STEPS)

        for i=2:M-1
            #HZ[i] = DX/DT*(eps_infty*E[i] + alpha_a*(F[i]-FP[i])/DX + alpha_b*(G[i]-GP[i])/DX) + (EP[i]).^2*beta + (EP[i]).^3*gamma;
            HZ[i] = HZ[i] - DT_DX_FACTOR*(E[i+1]-E[i]);
            E[i] = E[i] - DT_DX_FACTOR*(HZ[i]-HZ[i-1]);
            JF[i] = omega_a^2 * chi_d * 0.5 * ( E[i]+EP[i] ) - omega_a^2*0.5*(F[i]+FP[i]);
            JG[i] = omega_b^2 * chi_d * 0.5 * ( E[i]+EP[i] ) - omega_b^2*0.5*(G[i]+GP[i]);
            G[i] = G[i] + DT*( JG[i] + JGP[i] )/2;
            F[i] = F[i] + DT*( JF[i] + JFP[i] )/2;
        end
        GP[:]  = G;
        FP[:]  = F;
        JGP[:] = JG;
        JFP[:] = JF;
        EP[:]  = E; 
    end
    writedlm("e.dat", E);
    writedlm("h.dat", HZ);
end # NLWAVE(L, DX, v, T)

#v=0.1
#NLWAVE( 10, 0.1, 0.1, 1, 0.01 );

#v=0.2
NLWAVE( 10, 0.01, 0.2, 2, 0.01 );

#v=0.45
#NLWAVE( 10, 0.01, 0.45, 100, 0.01 );

#NLWAVE( 10, 0.01, 0.9, 10, 0.01 );

#v=0.5
#NLWAVE( 10, 0.01, 0.5, 2, 0.01 );
 
#v=0.787
#NLWAVE( 10, 0.1, 0.787, 1, 0.01 );