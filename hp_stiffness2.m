function [Fh,Kh,Fhbk] = hp_stiffness2(Xh,Xha)
% Xh: node attached to the mirror
% Xha : node attached to the linear actuator
% Fhbp = 1600; %M1B coodinate system breakaway limits limits. tension
% Fhbn = -1600;% compression
% K = 120e6; % indivdual hardpoint stiffness
% Kh = K*ones(6,1); % diagonal stiffness matrix under no breakaway
% Fhbk = zeros(6,1);
% Fh = -K*(Xh - Xha); % calculate spring force
% indp = Fh>= Fhbp; % diagnose positive breakaway condition
% indn = Fh<= Fhbn; % diagnose negetive breakaway condition
% Kh(indp) = 0; % make stiffness zero for hardpoints that are broken away
% Kh(indn) = 0;
% Fhbk(indp) = Fhbp; %  limit the forces of hardpoints that are broken away
% Fhbk(indn) = Fhbn;
% Kh = diag(Kh);
% Fh = -Kh*(Xh - Xha)+Fhbk; % reaction force at each hardpoint

A = 0;
B = 1500;
b = 12.5e-6;
g = 100;
x = (Xh - Xha);
Fhbk = A+B*(1-exp((x/b).^(2*g)*log(0.5)));
Fhbk = -Fhbk.*sign(x);
A = (120e6+1);
B = -120e6;
b = 12.5e-6;
g = 100;

Kh = A+B*(1-exp((x./b).^(2*g)*log(0.5)));
Kh = diag(Kh);

Fh= -Kh*x+Fhbk;