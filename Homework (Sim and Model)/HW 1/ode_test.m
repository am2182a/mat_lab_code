function ode_test
t = 0:0.001:5; 
init_x = 0; 

[t,x] = ode45( @rhs, t, init_x);
figure(1);plot(t,x); 
xlabel('t'); ylabel('x');

    function dxdt = rhs(t,x)
        a = 3
        dxdt = -x^3 + a*x; 
    end
end