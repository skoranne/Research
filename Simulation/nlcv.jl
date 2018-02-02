################################################################################
# File   : kozul_time.jl
# Author : Sandeep Koranne (C) 2017 All rights reserved
# Purpose: Non-linear conservation law for Optics
#
################################################################################
#using NLsolve;
#using ForwardDiff;
eps_infty = 2.25;
alpha_a = 0.15;
alpha_b = 1-alpha_a;
beta = 0.15;
gamma = 0.015;
omega_a = 3.65;
omega_b = 4.65;
chi_d   = 5.5;

function RESULTANT_ENTRY(h,vc_ratio)
    X1_OMEGA = -(vc_ratio*vc_ratio)*eps_infty +
        (alpha_a*chi_d)/(1-(vc_ratio/omega_a)^2) +
        (alpha_b*chi_d)/(1-(vc_ratio/omega_b)^2);
    RES_ENTRY = -2-2*h^2*X1_OMEGA;
    #println("X1_OMEGA  = ", X1_OMEGA);
    #println("RES_ENTRY = ", RES_ENTRY);
    return RES_ENTRY;
end

L=1;
h=0.001;
v=0.2;
CFL=0.01;
dt = CFL*h/(v);
T=400*dt;
S2 = (v^2*dt^2/h^2);
print("S2 = ", S2);
VH_FRAC = (1/(2*h^2));
M=Int(L/h)+1;
E   = zeros(M);
EP  = zeros(M);
EPP = zeros(M);

computed_value = RESULTANT_ENTRY( h,v );
println("computed_value = ", computed_value);

function CONSERVATION_LAW(x,K)
    c1 = computed_value;
    c2 = 8*beta*h^2*v^2;
    c3 = 18*gamma*h^2*v^2;
    return (c3*x^3 + c2*x^2) + c1*x -K ;
end

function NEWTON_FRAC(x,K)
    c1 = computed_value;
    c2 = 8*beta*h^2*v^2;
    c3 = 18*gamma*h^2*v^2;

    numerator = CONSERVATION_LAW( x, K );
    denom     = 3*c3*x^2 + 2*c2*x + c1;
    return x - (numerator/denom);
end

function NEWTON_SOLVE(x,K)
    THRESHOLD = 0.01; # this is controlling
    old_x = x;
    for i in collect(1:40)
        val = CONSERVATION_LAW(old_x, K);
        if( abs(val) < THRESHOLD )
            return old_x;
        end
        new_x = NEWTON_FRAC( old_x, K );
        #println("VAL = ", val, " OLD_X = ", old_x, " NEW_X = ", new_x);
        old_x = new_x;
    end
    println("Non-convergence ", old_x);
    return old_x;
end
function f!(x,fvec)
  fvec[1] = x[1]+x[3]+x[2]*(-2*x[2]-computed_value*(0.14*x[2]^3-0.02*x[2]^3));
end

#NEWTON_SOLVE( 0.01, 0.01 );




println("M = ",M);
println("VH_FRAC = ", VH_FRAC);
TOTAL_TIME_STEPS = Int(round(T/dt));
println("TT = ", TOTAL_TIME_STEPS);
index = 1;

#EPP[1:10]= EP[2:11] = sin.(collect(1:10));
#EPP[1:10] = sin.(2*collect(1:10));
INITIAL_VALUE = 0.5;
EPP[6] = EP[7] = INITIAL_VALUE;
for j in 1:M-1
    #EP[j+Int(round(v*dt))] = EPP[j] = 0.5*(tanh((abs(j-20))));
    #EP[j+Int(round(v*dt))] = EPP[j] = ( abs(j-10) < 1 ? 1: 0);
    EP[j+Int(round(v*dt))] = EPP[j] = INITIAL_VALUE*exp.(-0.5*(abs(j-10)/2)^2);
    #EP[j+Int(round(v*dt))] = EPP[j] = 0.5*(sech((abs(j-20))));
end
DERIVED_H=zeros(M);
writedlm("ep.dat", EP);
K = diagm( 2*ones(M), 0 ) + diagm( -1*ones(M-1), 1 ) + diagm(-1*ones(M-1),-1);
UPDATE_MATRIX = 2*eye(M,M) - S2.*(K);
#println("K = ", K);
IMPLICIT_UPDATE_MATRIX_INV = inv(4/S2*ones(M,M) + K);
A = diagm( -S2*ones(M-1),-1) + diagm((1+2*S2)*ones(M)) + diagm(-S2*ones(M-1),1);
for i in collect(1:TOTAL_TIME_STEPS)
    if( (i%100) == 0 ) 
        println("Processing time step ",i/1000," of ", TOTAL_TIME_STEPS/1000);
        writedlm("e.dat", E );
    end
    #=
    for j in collect(3:M-1)
        E[j] =  2*EP[j] - EPP[j] + S2*( EP[j+1] - 2*EP[j] + EP[j-1] )
    end
    =#
    # Explicit method
    E = UPDATE_MATRIX*EP - EPP;
    #Implicit method
    #E[j] = S2( E[j+1] - 2*E[j] + E[j-1] ) + 2*EP[j] - EPP[j]
    #E = IMPLICIT_UPDATE_MATRIX_INV*((2*(4/S2*ones(M,M)-K))*EP - (4/S2*ones(M,M)+K)*EPP);
    #RHS = 2*EP-EPP;
    #E = A\RHS;
    for j in 3:M-1
        prev_value = E[j];
        E[j] = NEWTON_SOLVE( E[j], E[j-1]+E[j+1] );
        #E[j] = 0.5*(prev_value + E[j]);
    end
    E3 = E2; E2 = E1; E1 = E[M];

    E[1] = E[M] = 0;
    EPP[:] = EP[:];
    EP[:]  = E[:];
    
    
    #=
    for j in collect(1:M)
        EPP[j] = EP[j];
        EP[j]  = E[j];
    end
    =#
end
for j in 1:M-1
    DERIVED_H[j] = (E[j]-E[j+1]);
end
writedlm("h.dat", DERIVED_H);
writedlm("e.dat", E );



    
