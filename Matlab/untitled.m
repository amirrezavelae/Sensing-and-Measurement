clc
clear
t = 0:0.001:50;
x = 0.0032*sin(t);
y = 0.0032*sin(t+pi/2);
figure
plot(t,y)
hold on
plot(t,x)
hold on
plot(t,x+y)
legend('sin(t)','sin(t+\pi / 2)' ,'sin(t) + sin(t+\pi / 2)',Location='best')
grid on
title('Signal without any noise',Interpreter='latex',FontSize=20)

x_new = x + wgn(length(t),1,0).' + 0.1*sin(100*pi*t);
y_new = y + wgn(length(t),1,0).' + 0.1*sin(100*pi*t);
figure
plot(t,x_new)
grid on
title('Noisy Signal from front of foot',Interpreter='latex',FontSize=20)

