
%Script to find and plot the roots of a function @f, using many different starting values

S=zeros(201,201);
R=zeros(201,201);

for k = 0:2000
    x = -1 + (k)/1000;
    for l = 0:2000
       y = -1 + (l)/1000;
       z = x + y*i;
       S(k+1,l+1) = newton(z,@f,@fdash,10^-4); %Run Newton Method with a range of starting values
       R(k+1,l+1) = real(S(k+1,l+1)) + imag(S(k+1,l+1)); %Complex values cannot be shown in imagesc, so instead we express it through a real Matrix
    end
end

imagesc(R);
saveas(gcf, 'Figure2', 'png'); 
