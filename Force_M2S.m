% function to convert forces and moment at M1B origin to forces and moments
% at 3 equivalent static supports 120 degrees apaert, r = 3m
%                     |s1 y+
%                     |______ x+
%                    / \
%                 s2/   \s3
% input = [Fx,Fy,Fz,Mx,My,Mz]
% output = [Fs1x, Fs2x, Fs3x, Fs1y, Fs2y, Fs3y, Fs1z, Fs2z, F3z]
function Fs = Force_M2S(FM)
sr1y = 3; sr1x = 0;
sr2x = 3*cosd(210);sr2y = 3*sind(210);
sr3x = 3*cosd(330);sr3y = 3*sind(330);

S2M = [1 0 0 1 0 0 1 0 0;
         0 1 0 0 1 0 0 1 0;
         0 0 1 0 0 1 0 0 1;
         0 0 sr1y 0 0 sr2y 0 0 sr3y;
         0 0 -sr1x 0 0 -sr2x 0 0 -sr3x;
         -sr1y sr1x 0 -sr2y sr2x 0 -sr3y sr3x 0];

%  M2S =[1/3 0   0   0         0        1/sr1y/3;
%        0   1/3 0   0         0        0;
%        0   0   1/3 1/sr1y/3  0        0;
%        1/3 0   0   0         0        1/sr2y/6;
%        0   1/3 0   0         0        1/sr2x/6;
%        0   0   1/3 1/sr2y/3  1/sr2x/2 0;
%        1/3 0   0   0         0        1/sr3y/6;
%        0   1/3 0   0         0        1/sr3x/6;
%        0   0   1/3 1/sr3y/3  1/sr3x/2 0];

M2S = pinv(S2M);
Fs = M2S*FM;
end
