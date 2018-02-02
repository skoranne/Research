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
gamma = 0.05;
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

function NONLINEAR_CONTRIBUTION(h,vc_ratio)
    retval_beta = 8*h^2*v^2*beta;
    retval_gamma = 18*h^2*v^2*gamma;
    return (retval_beta, retval_gamma);
end    


    
function f!(x,fvec)
  fvec[1] = x[1]-2*x[2]+x[3]*(0.987*x[3]-0.14*x[3]^3-0.02*x[3]^3);
end


L=10;
h=0.01;
v=2;
T=10;
g=(T*0.33);
dt = h/(v);
S2 = ( v*dt/h )^2;
VH_FRAC = (1/(2*h^2));
M=Int(L/h)+1;
E   = zeros(M);
EP  = zeros(M);
EPP = zeros(M);
INITIAL_VALUE = 0.5;
#E[1]  = INITIAL_VALUE;
EPP[1] = EP[2] = INITIAL_VALUE;
#EPP[1]= 0.1;

computed_value = RESULTANT_ENTRY( h,v );

#println("COMPUTED_VALUE = ", computed_value);

function CONSERVATION_LAW(x,K)
    c1 = computed_value;
    c2 = 8*beta*h^2*v^2;
    c3 = 18*gamma*h^2*v^2;
    return (c3*x^3 + c2*x^2) + c1*x - K;
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
    THRESHOLD = 0.001;
    old_x = x;
    for i in collect(1:100)
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

#NEWTON_SOLVE( 0.01, 0.01 );




println("M = ",M);
println("VH_FRAC = ", VH_FRAC);
TOTAL_TIME_STEPS = Int(round(T/dt));
println("TT = ", TOTAL_TIME_STEPS);
index = 1;
DERIVED_H = zeros(M);
#EPP[1]= 0.8;
START_POINT = 3;
for i in collect(1:TOTAL_TIME_STEPS)
    if( (i%1000) == 0 ) 
        println("Processing time step ",i/1000," of ", TOTAL_TIME_STEPS/1000);
        writedlm("e.dat", E );
        EJ = ( EP[1] - 2*EP[2] + EP[3] );
        CVAL = CONSERVATION_LAW( EJ, 2*EP[2] - EP[1] );
        println("EJ = ", EJ, " CVAL = ", CVAL);
    end
    for j in collect(START_POINT:M-2)
        EJNEW = EP[j-1] -2*EP[j] + EP[j+1];
        EJNEXT= 2*EP[j+1] - EPP[j+1] + S2*(EP[j] - 2*EP[j+1] + EP[j+2]);
        sol = NEWTON_SOLVE( EJNEW, -EJNEXT - EP[j-1] );
        f1 = 0.015; f2 = 1-f1;
        EJ = f1*EJNEW + f2*sol;
        #EJ = sol;
        #EJ = EJNEW;
	#println("EJ = ", EJNEW, " sol = ", sol, " CVAL = ", CVAL );
        #println(EJ[1]);
        # Leapfrog
        #E[j] = 2*EP[j] - EPP[j] + S2*( EP[j-1] -2*EP[j] + EP[j+1] );

        E[j] = 2*EP[j] - EPP[j] + S2*( EJ );
        
        #was the old code
        #E[j] =  (dt^2)*EJNEW  + 2*EP[j] - EPP[j]; # try 2dt^2
    end
    # Now E is computed, smoothen it with conservation law
    # Normalize
    max_field = 0;
    sum_field = 0;
    for j in collect(1:M)
       max_field = max( E[j], max_field );
       sum_field += E[j];
    end
    #=
    for j in collect(1:M)
       E[j] /= max_field;
       E[j] *= INITIAL_VALUE;
    end
    =#
    for j in collect(1:M)
        EPP[j] = EP[j];
        EP[j]  = E[j];    
    end
    if( i == 1 )
        EP[1] = EPP[1] = 0;
    end
end
cmax = -1;
cid = 1;
for i in collect(1:M)
  if( E[i] > cmax )
     cmax = E[i];
     cid = i;
  end
end
println("Max Value = ", cmax, " ar id = ", cid );
writedlm("e.dat", E );
for j in collect(1:M-1)
    DERIVED_H[j] = 1/v*(dt/h) * (E[j]-E[j+1]);
end
writedlm("h.dat", DERIVED_H );


    
