Fxyz = out.yout{1}.Values.Data;
Xm = out.yout{2}.Values.Data;
Xh_r = out.yout{3}.Values.Data;
Xha_r = out.yout{4}.Values.Data;
Fh_r = out.yout{5}.Values.Data;
Kd = out.yout{7}.Values.Data;
pinv_var = out.yout{8}.Values.Data;

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

figure(101)
sgtitle('Kd')
for k = 1:1:2
    for j = 1:1:3
        subplot(2,3,(k-1)*3+j)
        plot(squeeze(Kd(:,(k-1)*2+j)))
    end
end

figure(102)
sgtitle('pinv_var')
for k = 1:1:6
    for j = 1:1:6
        subplot(6,6,(k-1)*6+j)
        plot(squeeze(pinv_var(k,j,:)))
    end
end
