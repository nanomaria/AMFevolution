%Write preliminary model for mycorrhiza
clear all
close all
global rH qhp qcp  beta1 beta2 beta3 mup mum alpha qcm qhm d ap12 ap21 ap31 ap13 ap23 ap32 


qhp = 3;
qcm = 2;
qcp = 1;
qhm = 1;
mup = 0.3;
mum = 0.3;
alpha=0.4;
beta1 = 0.6;
beta2 = 0.4;
beta3 = 0.6;
rH = 0.3;
d = 1.2;
ap12 = .300;
ap21 = .300;
ap13 = 2.300;
ap31 = 2.300;
ap23 = 2.300;
ap32 = 2.300;
p10 = 0.2;
p20 = 0.2;
p30 = 0;
m0 = 0.2;
Tfin = 20;

options = odeset('RelTol',1e-4,'AbsTol',1e-6);
[T,Y1] = ode45(@Xplants1fungus_eq, 0:.1:Tfin, [p10; p20;p30; m0], options);

figure(1)
clf
plot(T,Y1(:,1),'g--',T,Y1(:,2),'g:', T,Y1(:,3),'g-', T,Y1(:,4), 'Linewidth',1.5)
%axis([0 50 0 8])
legend({'p1', 'p2', 'p3', 'm'}, 'Location','best', 'FontSize',12)
xlabel('time')
ylabel('Biomass')
%title('1 plant, X fungi')
set(gca,'fontsize',14)





