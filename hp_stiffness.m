function [Fh,Kh,Fhbk] = hp_stiffness(Xh,Xha)
Fhbp = 1600; %M1B coodinate system limits. tension
Fhbn = -1600;% compression
K = 120e6;
Kh = K*ones(6,1);
Fhbk = zeros(6,1);
Fh = -K*(Xh - Xha);
indp = Fh>= Fhbp;
indn = Fh<= Fhbn;
Kh(indp) = 0;
Kh(indn) = 0;
Fhbk(indp) = Fhbp;
Fhbk(indn) = Fhbn;
Kh = diag(Kh);
Fh = -Kh*(Xh - Xha)+Fhbk;