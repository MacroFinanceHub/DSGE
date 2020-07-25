%% Exercices from chapter 2
clear; clc;

%% Series
[gdp, ~, t_y] = call_dbnomics('OECD/QNA/USA.B1_GS1.LNBQRSA.Q');
[con, ~, t_c] = call_dbnomics('OECD/QNA/USA.P3.LNBQRSA.Q');

%% Manipulating and Visualizing the series

l_y = log(gdp(:,2));
l_c = log(con(:,2));

figure
subplot(2,1,1);
plot(t_y, l_y);
title('Evolution of gdp');

subplot(2,1,2);
plot(t_c, l_c);
title('Evolution of consumption');

%% Removing Trends
X_y = [ones(length(l_y), 1) (1:length(l_y))'];
OLS_y = X_y\l_y;
trend_y = X_y*OLS_y;

X_c = [ones(length(l_c), 1) (1:length(l_c))'];
OLS_c = X_c\l_c;
trend_c = X_c*OLS_c;

gama_y = 1 + OLS_y(2);
gama_c = 1 + OLS_c(2);

%% gaps

ly_gap = l_y - trend_y;
y = ly_gap - mean(ly_gap);

lc_gap = l_c - trend_c;
c = lc_gap - mean(lc_gap);

%% Start Dynare
addpath C:\dynare\4.6.1\matlab

%% Run dynare
dynare modelExercices
