function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = dnk_wage.static_resid_tt(T, y, x, params);
end
residual = zeros(24, 1);
lhs = params(8)*y(1)^params(7);
rhs = T(1)*y(4);
residual(1) = lhs - rhs;
lhs = 1;
rhs = y(5)*y(7)*T(2);
residual(2) = lhs - rhs;
lhs = y(7);
rhs = params(1);
residual(3) = lhs - rhs;
lhs = y(8);
rhs = params(2)/(params(2)-1)*y(9)/y(10);
residual(4) = lhs - rhs;
lhs = y(9);
rhs = y(11)*y(12)+y(9)*y(7)*params(4)*T(3);
residual(5) = lhs - rhs;
lhs = y(10);
rhs = y(12)+y(10)*y(7)*params(4)*T(4);
residual(6) = lhs - rhs;
lhs = y(13);
rhs = y(11)*y(14);
residual(7) = lhs - rhs;
lhs = y(15);
rhs = params(3)/(params(3)-1)*y(16)/y(17);
residual(8) = lhs - rhs;
lhs = y(16);
rhs = y(4)*T(5)*y(2)+y(16)*y(7)*params(5)*T(6);
residual(9) = lhs - rhs;
lhs = y(17);
rhs = T(5)*y(2)+y(17)*y(7)*params(5)*T(7);
residual(10) = lhs - rhs;
lhs = 1;
rhs = (1-params(4))*y(8)^(1-params(2))+params(4)*T(4);
residual(11) = lhs - rhs;
lhs = T(8);
rhs = (1-params(5))*y(15)^(1-params(3))+T(8)*params(5)*T(7);
residual(12) = lhs - rhs;
lhs = y(12);
rhs = y(3);
residual(13) = lhs - rhs;
lhs = y(12)*y(18);
rhs = y(19);
residual(14) = lhs - rhs;
lhs = y(19);
rhs = y(14)*y(2);
residual(15) = lhs - rhs;
lhs = y(1);
rhs = y(2)*y(20);
residual(16) = lhs - rhs;
lhs = y(20);
rhs = (1-params(5))*(y(15)/y(13))^(-params(3))+y(20)*params(5)*T(6);
residual(17) = lhs - rhs;
lhs = y(18);
rhs = (1-params(4))*y(8)^(-params(2))+y(18)*params(4)*T(3);
residual(18) = lhs - rhs;
lhs = log(y(14));
rhs = log(y(14))*params(9)+params(12)*x(1);
residual(19) = lhs - rhs;
lhs = log(y(5));
rhs = (1-params(10))*(-log(params(1)))+log(y(5))*params(10)+(1-params(10))*params(11)*log(y(6))+params(13)*x(2);
residual(20) = lhs - rhs;
lhs = y(21);
rhs = log(y(12));
residual(21) = lhs - rhs;
lhs = y(22);
rhs = log(y(6));
residual(22) = lhs - rhs;
lhs = y(24);
rhs = log(y(5));
residual(23) = lhs - rhs;
lhs = y(23);
rhs = log(y(2));
residual(24) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
