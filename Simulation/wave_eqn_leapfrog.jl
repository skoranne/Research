################################################################################
## File      : wave_eqn_leapfrog.jl
## Author    : Sandeep Koranne (C) 2017. All rights reserved.
## Purpose   : Numerical solution to 1D wave equation.
## Algorithm : Leapfrog method.
############################################################
1;
OMEGA=2;
c=1;
CFL_NU=1; # Stability condition
h=0.01; # Spatial discretization step size
k = h/(CFL_NU*c);
alpha=(c*k)/h;
AX = 0; BX = 1; # spatial interval
AT = 0; BT = 0.2; # time interval
DIMX = Int(round((BX-AX)/h)); # number of x-samples
DIMT = Int(round((BT-AT)/k)); # number of time samples
U  = zeros(DIMX); # Dirichlet BC
UP = zeros(DIMX);
UPP= zeros(DIMX);

println("DIMX = ", DIMX, " DIMT = ", DIMT);

# Initial conditions
for n in collect(1:2)
    for j in collect(1:DIMX)
        if( n == 1 )
            UPP[j] = cos(OMEGA*pi*(n-1)*k)*sin(OMEGA*pi*(j-1)*h);
        end
        if( n == 2 )
            UP[j] = cos(OMEGA*pi*(n-1)*k)*sin(OMEGA*pi*(j-1)*h);
        end
    end
end

writedlm("ep.dat", UPP);
# Leapfrog propagation step
for n in collect(2:DIMT-1)
    for j in collect(2:DIMX-1)
        U1 = 2*UP[j] - UPP[j];
        U2 = UP[j-1] -2*UP[j] + UP[j+1];
        U[j]  = U1 + alpha^2*U2;
    end
    U[1] = U[DIMX] = 0;
    for j in collect(1:DIMX)
        UPP[j]=UP[j];
        UP[j]=U[j];
    end
end
writedlm("e.dat", U);



