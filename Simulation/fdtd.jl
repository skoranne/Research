################################################################################
# File    : fdtd.jl
# Author  : Sandeep Koranne (C) 2017 All rights reserved.
# Purpose : 1D FDTD experiment
#
################################################################################

# Use dimension less quantities as much as possible


CFL  = 1;          # Magic time step
c0   = 299792458.0;   # m/s
h    = 0.6582119514; # Planck's constant
dz   = 0.001;
dt   = dz/(2.*c0);       # calculate this from nmax and lambda
DT_DZ = c0*(dt/dz);
# NB: eps0*mu0 = 1/c^2, so we need to normalize the E/H fields
eps0 = 8.854187e-12; # permitivitty of free space
println("EPS0 = $eps0");
mu0  = 1.256637e-6;     # permeability of free space
println("MU0 = $mu0");
print("This should be 1");
println(eps0*mu0*(c0^2));

lambda = 1.55;         # wavelength in micro-meter
wave_energy = 1.5;
frequency = (wave_energy / h); # use e = h nu
EFIELD_WIDTH = 10;
T0 = 30;

function print_constants()
    print("dt = ");
    println(dt);
    print("dz = ");
    println(dz);
    print("frequency = ");
    println(frequency);
end

# M is the spatial resolution to use

function polarization( A, B, position, E )
    if( ( position >= A ) && ( position <= B ) )
        return 1+(0.5*abs(E^3));
    else
        return 1.0;
    end
end

function fdtd(M)
    N = 1000;
    t = 1:N;
    print("t = ");
    println(length(t));
    print(t);
    #SOURCE = exp.(-0.5*((t-T0).^2) / (EFIELD_WIDTH^2)).* cos.( frequency);
    SOURCE = exp.(-0.5*((t-T0).^2) / (EFIELD_WIDTH^2));
    #print(SOURCE);
    writedlm("M.txt", SOURCE, " " );
    ZSOURCE = 60; # location of source
    Z = ( 0 : M-1 ).*dz;
    writedlm("Z.txt", Z, " ");
    EPS = zeros( M, 1 );
    MU  = zeros( M, 1 );
    MHY = ones( M, 1 ); # update coefficients
    MEX = ones( M, 1 ); # update coefficients

    for j in collect(1:M)
        EPS[j] = eps0; # replace this by the computed eps for the material
        MU[j]  = mu0;
        MHY[j] = DT_DZ;
        MEX[j] = DT_DZ;
    end
    for j in collect(100:200)
        MHY[j] = 1/(1.0)*DT_DZ;
    end

    CB = 1.0/(sqrt(mu0*eps0));
    print("CB = ");
    println(CB);
    HY = zeros( M, 1 );
    EX = zeros( M, 1 );
    E3 = E2 = E1 = 0;
    H3 = H2 = H1 = 0;
    for n = collect( 1:length(t) )
        # H field loop
        for j = collect( 1 : M-1 )
            HY[j] += polarization( 100,200, j, EX[j] ) * MHY[j] * ( EX[j+1] - EX[j] );
        end
        HY[M] += MHY[M] * ( E3 - EX[M] );
        # Hard vs soft source works, tested.
        # To add scatter-field, total-field source, we need to compute
        # the E and H contributions as functions of time.
        EX[ZSOURCE] += SOURCE[ n ]; # soft source is EX[SOURCE] += SOURCE[n];
        H3 = H2; H2 = H1; H1 = HY[1];
        EX[1] += MEX[1] * ( HY[1] - H3 );
        for j = collect( 2 : M )
            EX[j] += MEX[j] * ( HY[j] - HY[j-1] );
        end
        E3 = E2; E2 = E1; E1 = EX[M];

        writedlm("E$n.txt", EX, " ");
        #writedlm("H$n.txt", HY, " ");
        #writedlm("ZE$n.txt",[1:M zeros(M,1) EX], " ");
        #writedlm("ZH$n.txt",[1:M HY zeros(M,1)], " ");
    end
end

print_constants();
fdtd(300);

