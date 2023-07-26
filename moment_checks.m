%% find maximum gravity moment about x, y, z axis
clc
clear
close all
tilt =13.5;
clkv = [0 60 120 180 240 300]';
elv = (0:1:60)';
Mx = zeros(length(elv),length(clkv));
My = zeros(length(elv),length(clkv));
Mz = zeros(length(elv),length(clkv));
for k = 1:1:length(clkv)
   for i = 1:1:length(elv)
       [Fg, Mg, FMg] = decompose_gravity_vector(tilt,clkv(k),elv(i));
       Mx(i,k) = Mg(1);
       My(i,k) = Mg(2);
       Mz(i,k) = Mg(3);
   end
end