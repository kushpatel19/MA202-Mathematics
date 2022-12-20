    
function  [val] = Function_1(x)
R = 0.518;
T = -50 + 273.15;
Tc = 191;
Pc = 4580;
p = 65000;  
b = (0.0866 * R * Tc)/Pc;
a = (0.427 * R * R * Tc * Tc * sqrt(Tc))/(Pc);

val = (a * (x - b)) + (p * x * ((x * x) - (b * b)) * sqrt(T)) - (R * T * x * sqrt(T) * (x + b));
end 
    