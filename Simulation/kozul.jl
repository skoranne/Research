function RESULTANT_ENTRY(h,vc_ratio)
    alpha_a = 0.15;
    omega_a = 3.65;
    alpha_b = 1-alpha_a;
    omega_b = 4.65;
    chi_d   = 5.5;
    eps_infty = 2.25;

    X1_OMEGA = -(vc_ratio*vc_ratio)*eps_infty +
        (alpha_a*chi_d)/(1-(vc_ratio/omega_a)^2) +
        (alpha_b*chi_d)/(1-(vc_ratio/omega_b)^2);
    RES_ENTRY = -2-h^2*X1_OMEGA;
    #println("X1_OMEGA  = ", X1_OMEGA);
    #println("RES_ENTRY = ", RES_ENTRY);
    return RES_ENTRY;
end
L=1;

index = 1;
for h in collect(0.01:0.005:0.1)
    for v in collect(0.1:0.005:1)
        #println(index," ",v);
        computed_value = RESULTANT_ENTRY(h,v);

        M=Int(round(L/h)+1);
        A = diagm(computed_value*ones(M),0) + diagm(-1*ones(M-1),-1) + diagm(1*ones(M-1),1);
        EA = eig(A);
        max_eigenvalue = maximum( abs.( EA[1] ) );
        min_eigenvalue = minimum( abs.( EA[1] ) );
        println("h= ", h, " v= ", v, " COMPUTED_VALUE = ", computed_value, " spectrum = ", (max_eigenvalue-min_eigenvalue));
        #writedlm("e.dat", EA[1]);
        #EIG_DATA[index,2] = (EA[1][1]);
        #println(v," ",computed_value," ",EA[1][1]);
        #index = index+1;
        #print(A);
        #SOLN = real(A\RHS);
        #print(SOLN);
        #writedlm("s.dat", SOLN);
    end
end



    
