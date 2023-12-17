clear all; close all; clc;
num =[24];
A1=[0 1 0;0 0 1;-24 -26 -9];
B1=[0;0;24];
C1=[1 0 0];
D1=[0];
den=[ 1 9 26 24 ];
sys=tf(num,den);
[A B C D ]=tf2ss(num,den);
sys1 =ss(A,B,C,D)
t=linspace(0,10,50);
y_ss=step(sys1,t);
s=step(sys,t);
sys2=ss(A1,B1,C1,D1);
fin_cal=step(sys2,t);

figure(1);

plot(t,y_ss);
hold on;
plot(t,s,'--r','linewidth',1.5);
plot(t,fin_cal,'*g','linewidth',2);
xlabel('time');
ylabel('Amplitude');
title('presenting both ss and tf on same pragh to verify it');
legend('state space','transfer function','calculation');
grid on;
