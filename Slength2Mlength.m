function dM = Slength2Mlength(ds)

%         1 y+
%         |
%         |______ x+
%        / \
%       /   \
%      2     3
sr1y = 3; sr1x = 0;
sr2x = 3*cosd(210);sr2y = 3*sind(210);
sr3x = 3*cosd(330);sr3y = 3*sind(330);
% ds2dM = [1/3 1/3 1/3 0 0 0 0 0 0;
%          0 0 0 1/3 1/3 1/3 0 0 0;
%          0 0 0 0 0 0 1/3 1/3 1/3;
%          0 0 0 0 0 0 sr1y sr2y sr3y;
%          0 0 0 0 0 0 sr1x sr2x sr3x;
%          sr1y sr2y sr3y sr1x sr2x sr3x 0 0 0];
ds2dM = [1/3 0 0 1/3 0 0 1/3 0 0;
         0 1/3 0 0 1/3 0 0 1/3 0;
         0 0 1/3 0 0 1/3 0 0 1/3;
         0 0 sr1y 0 0 sr2y 0 0 sr3y;
         0 0 -sr1x 0 0 -sr2x 0 0 -sr3x;
         -sr1y sr1x  0 -sr2y sr2x 0 -sr3y sr3x 0];
dM = ds2dM*ds;
end