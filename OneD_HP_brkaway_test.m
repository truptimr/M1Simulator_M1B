% test 1D breakaway
clc
clear
close all

FMg = 1.5367e5;
Ks = 3*27500000;
Kh = 6*120e6;
xha_vec = (10e-3:-1e-6:-1e-3);
Fh_vec = zeros(size(xha_vec));
xm_vec = zeros(size(xha_vec));
xm = -FMg/Ks;
t = 1:1:length(xm_vec);
eprev= 0;
ki = 1e-9;
% xha = xha_vec(1);
%
% if abs(Fh)>=1200
%     Fh = 1200*sign(Fh);
%     Kh = 0;
% else
%     Fh = Kh*(xm-xha);
%     Kh = 6*120e6;
% end

for k = 2:1:length(xha_vec)
    %     xha = xha_vec(k);
    e = -Fh_vec(k-1)+eprev;
    xha = ki*e;
    eprev = e;
    Kh = 6*120e6;
    xm = (FMg - Kh*xha)/(Ks+Kh);
    Fh = -Kh*(xm-xha);
    if abs(Fh)>=1200
        Fh = 1200*sign(Fh);
        Kh = 0;
        xm = -(FMg +Fh)/Ks;
    else
        Fh = -Kh*(xm-xha);
        Kh = 6*120e6;
        xm = (FMg - Kh*xha)/(Ks+Kh);
    end
    
    
    % %
    %     Fh = -Kh*(xm-xha);
    %     if abs(Fh)>6000
    %         Fh = 6000*sign(Fh);
    %         Kh = 0;
    %     else
    %         Fh = Kh*(xm-xha);
    %         Kh = 6*120e6;
    %     end
    %     Kh;
    Fh_vec(k) = Fh;
    xm_vec(k) = xm;
    
    
end