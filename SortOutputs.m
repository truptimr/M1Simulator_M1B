Fxyz = out.yout{1}.Values.Data;
Xm = out.yout{2}.Values.Data;
Xh_r = out.yout{3}.Values.Data;
Xha_r = out.yout{4}.Values.Data;
Fh_r = out.yout{5}.Values.Data;

figure(1)
yyaxis left
plot(Fh_r(:,1));
yyaxis right
plot(Xh_r(:,1));

figure(2)
plot(Xm(:,1))
hold on
plot(Xm(:,2))
plot(Xm(:,3))
plot(Xm(:,4))
plot(Xm(:,5))
plot(Xm(:,6))
