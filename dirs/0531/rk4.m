% RK4 method for 1st-order ODE IVP

function y = f(x,y)
  y = (x-y)^2
endfunction

x(1)=0;
y(1)=0.5;


h=0.05; % step's size
N=10; % number of steps

for n=1:N
  x(n+1)= x(1) + n*h;
  % y(n+1)= y(n)+h*f(x(n),y(n)); % Euler
  k1 = f(x(n),y(n));
  k2 = f(x(n)+0.5*h,y(n)+0.5*h*k1);
  k3 = f(x(n)+0.5*h,y(n)+0.5*h*k2);
  k4 = f(x(n)+h,y(n)+h*k3);
  y(n+1)= y(n)+h/6.0*(k1+2*k2+2*k3+k4);
end

plot(x,y)

% use the command "clear" before you run another round or another script
