
r = 100;
rs = 50;
rg = r*10;
l = 2.78e-3;
c = 4.83e-6;
t = -.001:1e-5:10e-3;
scaleFactor = 2500;

p2 = (-1/(2*r*c))+ sqrt((1/(4*r^2*c^2)) - 1/(c*l));
p1 = (-1/(2*r*c))- sqrt((1/(4*r^2*c^2)) - 1/(c*l));
h_t = ((1/(c*(p1-p2)*(rs+rg)))*(p1*exp(p1.*t)-p2*exp(p2.*t))) / scaleFactor.* (t >= 0);

t_0 = 1e-3;

rect_t = double(t>=0 & t <= t_0);

x = conv(rect_t, h_out);

figure(1);
plot(x);

xlabel('seconds');
ylabel('volts');