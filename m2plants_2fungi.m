%Write preliminary model for mycorrhiza
clear all
close all
global rH qhp qcp  beta1 beta2 mup mum alpha qcm qhm d ap12 ap21


qhp = 3;
qcm = 2;
qcp = 1;
qhm = 1;
mup = 0.3;
mum = 0.3;
alpha=0.6;
beta1 = 0.6;
beta2 = 0.4;
rH = 0.0;
d = 1.2;
ap12 = .1;
ap21 = .1;
p10 = .05;
p20 = 0.05;
m10 = 1;
m20 = .1;

Tfin = 200;

options = odeset('RelTol',1e-4,'AbsTol',1e-6);
[T,Y1] = ode45(@X2plants2fungi_eq, 0:.1:Tfin, [p10; p20;m10; m20], options);

figure(1)
clf
plot(T,Y1(:,1),'g--',T,Y1(:,2),'b--', T,Y1(:,3),'g:', T,Y1(:,4), 'b:','Linewidth',1.5)
%axis([0 50 0 8])
legend({'p1', 'p2', 'm1', 'm2'}, 'Location','best', 'FontSize',12)
xlabel('time')
ylabel('Biomass')
%title('1 plant, X fungi')
set(gca,'fontsize',14)





