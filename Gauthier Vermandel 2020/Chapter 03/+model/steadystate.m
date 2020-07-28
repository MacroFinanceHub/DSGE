function [ys_, params, info] = steadystate(ys_, exo_, params)
% Steady state generated by Dynare preprocessor
    info = 0;
    ys_(9)=1;
    ys_(10)=1;
    ys_(11)=1;
    ys_(12)=1;
    ys_(4)=1/params(2);
    ys_(7)=ys_(4)-(1-params(3));
    ys_(8)=0.3333333333333333;
    ys_(2)=ys_(8)*(ys_(7)/params(1))^(1/(params(1)-1));
    ys_(3)=ys_(2)^params(1)*ys_(8)^(1-params(1));
    ys_(6)=(1-params(1))*ys_(3)/ys_(8);
    ys_(5)=params(3)*ys_(2);
    ys_(1)=ys_(3)*(1-params(8))-ys_(5);
    params(10)=ys_(6)/(ys_(8)^params(11)*ys_(1)^params(9));
    % Auxiliary equations
end
