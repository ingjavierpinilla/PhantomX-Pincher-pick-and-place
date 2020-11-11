function motorsetup(waist,shoulder,elbow,wrist,hand)
   client_speed=rossvcclient('/motor_controller_1/set_speed'); %Creacion del cliente
reqMsg_speed=rosmessage(client_speed); %Creacion del mensaje
reqMsg_speed.Speed=waist%Argumentos del mensaje
response=call(client_speed,reqMsg_speed,'Timeout',3) %call service para enviar el mensaje

client_speed=rossvcclient('/motor_controller_2/set_speed'); %Creacion del cliente
reqMsg_speed=rosmessage(client_speed); %Creacion del mensaje
reqMsg_speed.Speed=shoulder%Argumentos del mensaje
response=call(client_speed,reqMsg_speed,'Timeout',3) %call service para enviar el mensaje

client_speed=rossvcclient('/motor_controller_3/set_speed'); %Creacion del cliente
reqMsg_speed=rosmessage(client_speed); %Creacion del mensaje
reqMsg_speed.Speed=elbow%Argumentos del mensaje
response=call(client_speed,reqMsg_speed,'Timeout',3) %call service para enviar el mensaje

client_speed=rossvcclient('/motor_controller_4/set_speed'); %Creacion del cliente
reqMsg_speed=rosmessage(client_speed); %Creacion del mensaje
reqMsg_speed.Speed=wrist%Argumentos del mensaje
response=call(client_speed,reqMsg_speed,'Timeout',3) %call service para enviar el mensaje

client_speed=rossvcclient('/motor_controller_5/set_speed'); %Creacion del cliente
reqMsg_speed=rosmessage(client_speed); %Creacion del mensaje
reqMsg_speed.Speed=3%Argumentos del mensaje
response=call(client_speed,reqMsg_speed,'Timeout',3) %call service para enviar el mensaje

client_torque=rossvcclient('/motor_controller_1/torque_enable');
reqMsg_torque=rosmessage(client_torque);
reqMsg_torque.TorqueEnable=0
response=call(client_torque,reqMsg_torque,'Timeout',3)

client_torque=rossvcclient('/motor_controller_2/torque_enable');
reqMsg_torque=rosmessage(client_torque);
reqMsg_torque.TorqueEnable=0
response=call(client_torque,reqMsg_torque,'Timeout',3)

client_torque=rossvcclient('/motor_controller_3/torque_enable');
reqMsg_torque=rosmessage(client_torque);
reqMsg_torque.TorqueEnable=0
response=call(client_torque,reqMsg_torque,'Timeout',3)

client_torque=rossvcclient('/motor_controller_4/torque_enable');
reqMsg_torque=rosmessage(client_torque);
reqMsg_torque.TorqueEnable=0
response=call(client_torque,reqMsg_torque,'Timeout',3)

client_torque=rossvcclient('/motor_controller_5/torque_enable');
reqMsg_torque=rosmessage(client_torque);
reqMsg_torque.TorqueEnable=0
response=call(client_torque,reqMsg_torque,'Timeout',3) 


%Punch
%     cpClient1=rossvcclient('/motor_controller_1/set_compliance_punch'); 
%     cpClient2=rossvcclient('/motor_controller_2/set_compliance_punch'); 
%     cpClient3=rossvcclient('/motor_controller_3/set_compliance_punch'); 
%     cpClient4=rossvcclient('/motor_controller_4/set_compliance_punch'); 
%     cpClient5=rossvcclient('/motor_controller_5/set_compliance_punch'); 
%     
%     cpMsg1=rosmessage(cpClient1);
%     cpMsg2=rosmessage(cpClient2);
%     cpMsg3=rosmessage(cpClient3);
%     cpMsg4=rosmessage(cpClient4);
%     cpMsg5=rosmessage(cpClient5);
%     
%     cpMsg1.Punch=6;
%     cpMsg2.Punch=6;
%     cpMsg3.Punch=6;
%     cpMsg4.Punch=6;
%     cpMsg5.Punch=6;
%     
%     call(cpClient1,cpMsg1);
%     pause(0.2);
%     call(cpClient2,cpMsg2);
%     pause(0.2);
%     call(cpClient3,cpMsg3);
%     pause(0.2);
%     call(cpClient4,cpMsg4);
%     pause(0.2);
%     call(cpClient5,cpMsg5);
%     pause(0.2);
%Margin
    cmClient1=rossvcclient('/motor_controller_1/set_compliance_margin'); 
    cmClient2=rossvcclient('/motor_controller_2/set_compliance_margin'); 
    cmClient3=rossvcclient('/motor_controller_3/set_compliance_margin'); 
    cmClient4=rossvcclient('/motor_controller_4/set_compliance_margin'); 
    cmClient5=rossvcclient('/motor_controller_5/set_compliance_margin'); 
    
    cmMsg1=rosmessage(cmClient1);
    cmMsg2=rosmessage(cmClient2);
    cmMsg3=rosmessage(cmClient3);
    cmMsg4=rosmessage(cmClient4);
    cmMsg5=rosmessage(cmClient5);
    
    cmMsg1.Margin=1;
    cmMsg2.Margin=6;
    cmMsg3.Margin=1;
    cmMsg4.Margin=6;
    cmMsg5.Margin=6;
    
    call(cmClient1,cmMsg1);
    pause(0.2);
    call(cmClient2,cmMsg2);
    pause(0.2);
    call(cmClient3,cmMsg3);
    pause(0.2);
    call(cmClient4,cmMsg4);
    pause(0.2);
    call(cmClient5,cmMsg5);
    pause(0.2);


%Slope
% 
% csClient1=rossvcclient('/motor_controller_1/set_compliance_slope'); 
%     csClient2=rossvcclient('/motor_controller_2/set_compliance_slope'); 
%     csClient3=rossvcclient('/motor_controller_3/set_compliance_slope'); 
%     csClient4=rossvcclient('/motor_controller_4/set_compliance_slope'); 
%     csClient5=rossvcclient('/motor_controller_5/set_compliance_slope'); 
%     
%     csMsg1=rosmessage(csClient1);
%     csMsg2=rosmessage(csClient2);
%     csMsg3=rosmessage(csClient3);
%     csMsg4=rosmessage(csClient4);
%     csMsg5=rosmessage(csClient5);
%     
%     csMsg1.Slope=64;
%     csMsg2.Slope=6;
%     csMsg3.Slope=6;
%     csMsg4.Slope=6;
%     csMsg5.Slope=6;
%     
%     call(csClient1,csMsg1);
%     pause(0.2);
%     call(csClient2,csMsg2);
%     pause(0.2);
%     call(csClient3,csMsg3);
%     pause(0.2);
%     call(csClient4,csMsg4);
%     pause(0.2);
%     call(csClient5,csMsg5);
%     pause(0.2);
% 
% 

end    






