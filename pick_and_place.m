% 
% 
% l=[81 106.5 92.2];
% 
% lim=[-2.61 2.61];
% L(1)=Link('revolute','alpha',0,'a',0,'d',l(1),'offset',0,'qlim',lim,'modified');
% L(2)=Link('revolute','alpha',pi/2,'a',0,'d',0,'offset',pi/2,'qlim',lim,'modified');
% L(3)=Link('revolute','alpha',0,'a',l(2),'d',0,'offset',0,'qlim',lim,'modified');
% L(4)=Link('revolute','alpha',0,'a',l(2),'d',0,'offset',0,'qlim',lim,'modified');
% phantom=SerialLink(L,'name','Phantom X');
% phantom.tool=transl(l(3),0,0)*trotz(-pi/2,'rad')*trotx(-pi/2,'rad');%No es solo desplazamiento?
% 
% %% Cinematica Inversa
% x=0;
% y=0;
% z=0;
% phi=pi/2;
% D=[x;y;z];
% t=transl(D);
% 
% l1=l(1);
% l2=l(2);
% l3=l2;
% l4=l(3);
% q1=atan2(y,x);
% zr=rotz(q1);
% R=trotz(q1)*troty(phi);
% ax=R(1,3); 
% ay=R(2,3);
% az=R(3,3);
% W=[x y (z-386)]-l4*[ax ay az];
% k2=W(1)^2+W(2)^2+(W(3)-l1)^2;
% cq3=(k2-l2^2-l3^2)/(2*l2*l3);
% sq3=sqrt(1-cq3^2);
% q3=atan2(sq3,cq3);
% r=[R(1,1:3);R(2,1:3);R(3,1:3)];
% alpha=atan2(W(3)-l1,sqrt(W(1)^2+W(2)^2));
% beta=atan2(l3*sq3,l2+l3*cq3);
% q2=alpha-beta;
% %q4=phi-q2-q3;
% ry = zr'*r;
% 
% [q1 q2 q3 q4]
% %%
% q=invKine(D,phi)
% H=t*R;
% inv=phantom.ikunc(H,[0 0 0 0])
% figure
% %phantom.plot(inv,'noname','workspace',[-200 200 -200 200 -200 200], 'zoom', 5)
% grid on
% phantom.teach()
%%
rosinit; %Conexión con nodo maestro
%%
motorsetup(0.5,0.3,0.5,0.5,3);
arduino = arduino('/dev/ttyS37')
arduino.pinMode(12,'output') %Luz Roja - Robot en movimiento
arduino.pinMode(7,'output') % Luz Verde - Robot quieto
%%
p0=[2.55 2.55 2.55 2.55 pi];
p1=[1.7845    3.2418    3.8196    3.8963    pi];
p2=[1.8612    3.8605    3.5895    3.5691    pi];
p3=[1.8612    3.8605    3.5895    3.5691    3.5];
%p4=[1.7845    3.2418    3.8196    3.8963    3.5];%pick1

%p5=[2.6129    3.2623    3.7685    3.8759         0];
p6=[2.6333    3.8605    3.5895    3.5691    3.5];
p7=[2.6333    3.8605    3.5895    3.5691         pi];%place
p8=[2.6333    3.2623    3.7685    3.5691         pi];

p9=[3.4668    3.1191    3.9935    3.7531    3.1344];
p10=[3.4515    3.6151    3.9884    3.3032    3.1344];
p11=[3.4515    3.6151    3.9884    3.3032    3.5];%pick2
p12=[3.4668    3.1191    3.9935    3.3032    3.5];

p13=[2.6333    3.2929    3.5333    4.1315    3.5];
p14=[2.6333    3.6611    3.5793    3.5793    3.5];
p15=[2.6333    3.7992    3.5997    3.5435   pi];%place
p16=[2.6333    3.8605    3.5895    3.5691         3];
posiciones=[p0; p1; p2; p3; p6; p7; p8; p9; p10; p11; p12; p13; p14; p15; p16; p0];
%%
%A Home
o = ismov();
%arduino.digitalWrite(7,1);
%arduino.digitalWrite(12,0);
pause(1);
for i = 1:length(posiciones)
    p=posiciones(i,:)
    %arduino.digitalWrite(7,0);
    %arduino.digitalWrite(12,1);
    
    posicion(p);
    pause (2);
while o == 1
    
   o = ismov();
   
end
    %arduino.digitalWrite(7,1);
    %arduino.digitalWrite(12,0);
    pause(2);
end
%%
rosshutdown
