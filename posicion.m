function posicion(p)

waistPub = rospublisher('/motor_controller_1/command', ...
'std_msgs/Float64'); %Creación publicador
waistMsg = rosmessage(waistPub); %Creación de mensaje

shoulderPub = rospublisher('/motor_controller_2/command', ...
'std_msgs/Float64'); %Creación publicador
shoulderMsg = rosmessage(shoulderPub); %Creación de mensaje

elbowPub = rospublisher('/motor_controller_3/command', ...
'std_msgs/Float64'); %Creación publicador
elbowMsg = rosmessage(elbowPub); %Creación de mensaje

wristPub = rospublisher('/motor_controller_4/command', ...
'std_msgs/Float64'); %Creación publicador
wristMsg = rosmessage(wristPub); %Creación de mensaje

handPub = rospublisher('/motor_controller_5/command', ...
'std_msgs/Float64'); %Creación publicador
handMsg = rosmessage(handPub); %Creación de mensaje

% waistMsg.Data=deg2rad(p(1))+2.55;
% shoulderMsg.Data=deg2rad(p(2))+2.55;
% elbowMsg.Data=deg2rad(p(3))+2.55;
% wristMsg.Data=deg2rad(p(4))+2.55;
% handMsg.Data=deg2rad(p(5));
waistMsg.Data=p(1);
shoulderMsg.Data=p(2);
elbowMsg.Data=p(3);
wristMsg.Data=p(4);
handMsg.Data=p(5);

send(wristPub,wristMsg);
pause(0.2)
send(handPub,handMsg);
pause(0.2)
send(waistPub,waistMsg);
pause(0.2)
send(shoulderPub,shoulderMsg);
pause(0.2)
send(elbowPub,elbowMsg);
pause(0.2)

%phantom.plot([waist,shoulder,elbow,wrist],'noname')
end
