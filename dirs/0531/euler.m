% Euler's method for 1st-order ODE IVP

function y = f(x,y)
  y = (x-y)^2
endfunction

x(1)=0;
y(1)=0.5;

h=0.05; % step's size
N=10; % number of steps

for n=1:N
  x(n+1)= x(1) + n*h;
  y(n+1)= y(n)+h*f(x(n),y(n));
end

plot(x,y)

% use the command "clear" before you run another round or another script
