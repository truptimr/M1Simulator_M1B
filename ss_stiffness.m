%static support stiffness depending on mirror position

function Ks = ss_stiffness(Xm_ss)
Ks_eq = 2.5e5*110; % equivalent static support stiffness
ss_gap = [8e-3 8e-3 6.5e-3 8e-3 8e-3 6.5e-3 8e-3 8e-3 6.5e-3]'; % static support gap
Ks = zeros(9,1);
for k = 1:1:9
    
    if abs(Xm_ss(k)) < ss_gap(k)
        Ks(k) = 0;
    else
        Ks(k) = Ks_eq;
    end
end
Ks = diag(Ks);
end