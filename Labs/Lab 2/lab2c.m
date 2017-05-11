
r = 100;
rs = 50;
rg = r*10;
l = 2.78e-3;
c = 4.83e-6;
t = -1:1e-4:10e-3;
scaleFactor = 2500;

p1 = (-1/(2*r*c))+ sqrt((1/(4*r^2*c^2)) - 1/(c*l));
p2 = (-1/(2*r*c))- sqrt((1/(4*r^2*c^2)) - 1/(c*l));
h_t = ((1/(c*(p1-p2)*(rs+rg)))*(p1*exp(p1*t)-p2*exp(p2*t))) / scaleFactor;

t_0 = 1e-3;

constant = 1/(c*(p1-p2)*(rs+rg));

funct1 = constant*(-exp(p1*(t)) + exp(p2*(t))).*(t<t_0);
funct2 = constant*(-exp(p1*(t))+exp(p2*(t)) + exp(p1*(t-t_0))-exp(p2(t-t_0))).*(t>=t_0);

Convolved = funct1 + funct2;

figure(1);
plot(t, Convolved);
xlim([-1e-3 1e-2]);
xlabel('seconds');
ylabel('volts');