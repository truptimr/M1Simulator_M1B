function [Fg, Mg, FMg] = decompose_gravity_vector(t,clk,zenith)

%% mirror in M1B
M = 1.5671e+04; % kg Mirror mass
% [Ixx, Iyy, Izz, Ixy,Iy,  Izx] = [3805.16, 73275.66, 145422.8, 0.0118564, 1.47262E-4, 14.53672]; % about CG
% Mass matrix
cg = [2.67299E-5     -5.356E-8     -0.161687]'; % cg in M1S1 coordinate system
g = 9.806; % m/s2
M1B = 180;


RM1B = [cosd(M1B) 0 sind(M1B);
        0 1 0;
        -sind(M1B) 0 cosd(M1B)];
Rz = [cosd(clk) -sind(clk) 0;
    sind(clk)   cosd(clk) 0;
    0  0   1];
Rx1 = [1 0 0;
    0 cosd(t) -sind(t);
    0 sind(t) cosd(t)];
Rx2 = [1 0 0;
    0 cosd(-zenith) -sind(-zenith);
    0 sind(-zenith) cosd(-zenith)];
R = RM1B*Rx1*Rz*Rx2; % matrix to decompose gravity force into x, y and z force in mirror coordinates
% Fm1 = R*Fg1;

% R = Ry*Rz*Rx; 
Fg = -R*[0;0;M*g]; % force about CG

x = 0; y = 0; z = -0.4751-(-0.161687);
Mg = [0 -z y;z 0 -x;-y x 0]*Fg; % moment about M1B coordinates
FMg = [Fg;Mg]; % force and moment about M1-B origin
end