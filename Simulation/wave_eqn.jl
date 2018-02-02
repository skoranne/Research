################################################################################
# File   : wave_eqn.jl
# Author : Sandeep Koranne (C) 2017 All rights reserved
# Purpose: Non-linear conservation law for Optics
#
################################################################################
function wave_equation(L,h,v,T)
    CFL=1;
    dt = h/(CFL*v);
    print("L=", L, " h= ", h, " v= ",v," CFL = ", CFL, " dt = ", dt, " ");
    M=Int(L/h)+1;
    S=(v*dt)/h;
    S2=S^2;
    E   = zeros(M);
    EP  = zeros(M);
    EPP = zeros(M);
    TOTAL_TIME_STEPS = Int(round(T/dt));
    println("TT = ", TOTAL_TIME_STEPS);
    index = 1;
    flag = 2;
    if( flag == 1 )
        START_INDEX = Int(round(3/h));
        PULSE_WIDTH = 0.8;
        END_INDEX = Int(START_INDEX + PULSE_WIDTH/h);
        for j in collect(START_INDEX:END_INDEX)
            EPP[j] = h;
        end
        # in one time step the pulse ideally moves by v
        INCREMENT = Int(round(v*dt/h));
        println("INCREMENT = ", INCREMENT);
        for j in collect(START_INDEX+INCREMENT:END_INDEX+INCREMENT)
            EP[j] = h;
        end
    end

    if( flag == 2 )
        EPP[1] = h;
        EP[2] = h;
    end
    START_POINT=3;
    error = 0;
    writedlm("ep.dat", EP );

    E[1] = E[M] = 0;
    for i in collect(2:TOTAL_TIME_STEPS-1)
        if( (i%1000) == 0 ) 
            println("Processing time step ",i/1000," of ", TOTAL_TIME_STEPS/1000);
            writedlm("e.dat", E );
        end
        E[1] = 0;#E[2];
        E[M] = 0;#E[M-1];

        for j in collect(START_POINT:M-1)        
            # Leapfrog
            E[j] = 2*EP[j] - EPP[j] + S2*( EP[j-1] -2*EP[j] + EP[j+1] );

            # Upwinding does not work
            #E[j] = 2*EP[j] - EPP[j] + 0.5*S2*( EP[j-2] -2*EP[j-1] + EP[j] );
        end
        E[1] = 0;#E[2];
        E[M] = 0;#E[M-1];
        for j in collect(1:M)        
            EPP[j] = EP[j];
            EP[j] = E[j];
        end
    end
    writedlm("e.dat", E );
    DERIVED_H = zeros(M);
    for j in collect(1:M-1)
        DERIVED_H[j] = 1/v*(dt/h) * (E[j]-E[j+1]);
    end
    writedlm("h.dat", DERIVED_H );
end # wave_equation(L,h,v,T)

wave_equation( 10, 0.01, 2, 2 );


    
