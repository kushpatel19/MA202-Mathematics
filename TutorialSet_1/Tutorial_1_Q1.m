clc;


prompt1 = 'Enter the value of x_l = ';
x_l = input(prompt1);
prompt2 = 'Enter the value of x_u = ';
x_u = input(prompt2);
tol = 0.0000000001;
err = 1000;
x_r = x_u;
format("long")


f_l = Function_1(x_l);
f_u = Function_1(x_u);

if f_l * f_u >= 0
    fprintf("Bisection method is not applicable\n");
else
    while err > tol
        x_m = 0.5 * (x_u + x_l);
        err = abs((x_r - x_m)/x_m);
        x_r = x_m;
        f_m = Function_1(x_m);
        if f_m == 0
            break
        else
            if f_m * f_l < 0
                x_u = x_m;
                f_u = f_m;
            else
                x_l = x_m;
                f_l = f_m;     
        end
        end
    end
end

x_r;
    
