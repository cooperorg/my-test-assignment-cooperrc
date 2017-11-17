function [SSE,yhat] = sse_nonlin_exp(a,x,y)
    % This is a sum of squares error function based on 
    % the two input constants a0 and a1 where a=[a0,a1]
    % and the data is x (independent), y (dependent)
    % and yhat is the model with the given a0 and a1 values
    a0=a(1);
    a1=a(2);
    yhat=a0*(1-exp(a1*x));
    SSE=sum((y-a0*(1-exp(a1*x))).^2);
end