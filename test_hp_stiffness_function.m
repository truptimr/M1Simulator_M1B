%test HP stiffness function;
clc
clear
close all
lim = 20e-6;
dx = linspace(-lim,lim,1000);
Xha = zeros(6,1000);
Xha(1,:)=dx';
Fh = zeros(6,1000);
Fh2 = zeros(6,1000);
for k = 1:1:1000
    [Fh(:,k),Kh,Fhbk] = hp_stiffness(zeros(6,1),Xha(:,k));
    [Fh2(:,k),Kh,Fhbk] = hp_stiffness2(zeros(6,1),Xha(:,k));
end

% Xh: node attached to the mirror
