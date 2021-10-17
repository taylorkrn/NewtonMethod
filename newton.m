
% Newtown Method for finding roots, inputs are start point, function, derivative and the allowed error

function x = newton(x0,f,fdash,epsi)
  iteration = 0; %Iterations counter
  x = x0;
  fnctsave = f(x); %Save the value f(x), which will be used twice
  while abs(fnctsave) > epsi
    xit = x;
    x = xit - fnctsave/fdash(xit);
    fnctsave = f(x);
    iteration = iteration+1; 
  end
end
