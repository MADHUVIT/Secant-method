%Secant method
syms x
f(x)=input('Enter your function:');
disp(f(x));
x0=input('Enter the initial x0 point:');
x1=input('Enter the initial x1 point:');
X=[x0,x1];
n=input('Enter the no. of iterations:');
for k=1:n
    X(k+2)=(X(k)*f(X(k+1))-X(k+1)*f(X(k)))/(f(X(k+1))-f(X(k)));
end
fprintf('Numerical solution x= ');fprintf('%f',X(end));fprintf('\n');
s=eval(solve(f(x)));
fprintf('Exact solution x= ');fprintf('%f',s(2));fprintf('\n');