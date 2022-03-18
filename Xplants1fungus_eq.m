
function dy = Xplants1fungus_eq(t,y)


%3 piante, 
global rH qhp qcm qcp qhm mup mum d alpha...
    beta1 beta2 beta3 ap12 ap21 ap31 ap13 ap23 ap32 

p1 = y(1);
p2 = y(2);
p3 = y(3);
f1 = y(4);
dy = zeros(4,1);

dy(1) = qhp*rH*p1 + qhp*alpha*f1*((ap21*p2+ap31*p3)/((ap21*p2+ap31*p3)+(p2+p3)^2))*p1/(d+p1) - ...
    qcp*beta1*f1*p1 - mup*p1^2;
dy(2) = qhp*rH*p2 + qhp*alpha*f1*((ap12*p1+ap32*p3)/((ap12*p1+ap32*p3)+(p1+p3)^2))*p2/(d+p2) - ...
    qcp*beta2*f1*p2 - mup*p2^2;
dy(3) = qhp*rH*p3 + qhp*alpha*f1*((ap13*p1+ap23*p2)/((ap13*p1+ap23*p2)+(p1+p2)^2))*p3/(d+p3) - ...
    qcp*beta3*f1*p3 - mup*p3^2;
dy(4) = qcm*beta1*f1*p1 + qcm*beta2*f1*p2 +qcm*beta3*f1*p3 ...
    - qhm*alpha*f1*((ap21*p2+ap31*p3)/((ap21*p2+ap31*p3)+p2+p3))*p1/(d+p1)...
    - qhm*alpha*f1*((ap12*p1+ap32*p3)/((ap12*p1+ap32*p3)+p1+p3))*p2/(d+p2)...
    - qhm*alpha*f1*((ap13*p1+ap23*p2)/((ap13*p1+ap23*p2)+p1+p2))*p3/(d+p3)  - mum*f1^2;

end