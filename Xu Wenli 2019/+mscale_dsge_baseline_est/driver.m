%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'mscale_dsge_baseline_est';
M_.dynare_version = '4.6.1';
oo_.dynare_version = '4.6.1';
options_.dynare_version = '4.6.1';
%
% Some global variables initialization
%
global_initialization;
diary off;
M_.exo_names = cell(9,1);
M_.exo_names_tex = cell(9,1);
M_.exo_names_long = cell(9,1);
M_.exo_names(1) = {'e_g'};
M_.exo_names_tex(1) = {'e\_g'};
M_.exo_names_long(1) = {'e_g'};
M_.exo_names(2) = {'e_i'};
M_.exo_names_tex(2) = {'e\_i'};
M_.exo_names_long(2) = {'e_i'};
M_.exo_names(3) = {'e_a'};
M_.exo_names_tex(3) = {'e\_a'};
M_.exo_names_long(3) = {'e_a'};
M_.exo_names(4) = {'e_z'};
M_.exo_names_tex(4) = {'e\_z'};
M_.exo_names_long(4) = {'e_z'};
M_.exo_names(5) = {'e_v'};
M_.exo_names_tex(5) = {'e\_v'};
M_.exo_names_long(5) = {'e_v'};
M_.exo_names(6) = {'e_pssi'};
M_.exo_names_tex(6) = {'e\_pssi'};
M_.exo_names_long(6) = {'e_pssi'};
M_.exo_names(7) = {'e_tauc'};
M_.exo_names_tex(7) = {'e\_tauc'};
M_.exo_names_long(7) = {'e_tauc'};
M_.exo_names(8) = {'e_taun'};
M_.exo_names_tex(8) = {'e\_taun'};
M_.exo_names_long(8) = {'e_taun'};
M_.exo_names(9) = {'e_tauk'};
M_.exo_names_tex(9) = {'e\_tauk'};
M_.exo_names_long(9) = {'e_tauk'};
M_.endo_names = cell(36,1);
M_.endo_names_tex = cell(36,1);
M_.endo_names_long = cell(36,1);
M_.endo_names(1) = {'lamb'};
M_.endo_names_tex(1) = {'lamb'};
M_.endo_names_long(1) = {'lamb'};
M_.endo_names(2) = {'mu'};
M_.endo_names_tex(2) = {'mu'};
M_.endo_names_long(2) = {'mu'};
M_.endo_names(3) = {'C'};
M_.endo_names_tex(3) = {'C'};
M_.endo_names_long(3) = {'C'};
M_.endo_names(4) = {'i'};
M_.endo_names_tex(4) = {'i'};
M_.endo_names_long(4) = {'i'};
M_.endo_names(5) = {'pi'};
M_.endo_names_tex(5) = {'pi'};
M_.endo_names_long(5) = {'pi'};
M_.endo_names(6) = {'R'};
M_.endo_names_tex(6) = {'R'};
M_.endo_names_long(6) = {'R'};
M_.endo_names(7) = {'u'};
M_.endo_names_tex(7) = {'u'};
M_.endo_names_long(7) = {'u'};
M_.endo_names(8) = {'Z'};
M_.endo_names_tex(8) = {'Z'};
M_.endo_names_long(8) = {'Z'};
M_.endo_names(9) = {'I'};
M_.endo_names_tex(9) = {'I'};
M_.endo_names_long(9) = {'I'};
M_.endo_names(10) = {'v'};
M_.endo_names_tex(10) = {'v'};
M_.endo_names_long(10) = {'v'};
M_.endo_names(11) = {'pssi'};
M_.endo_names_tex(11) = {'pssi'};
M_.endo_names_long(11) = {'pssi'};
M_.endo_names(12) = {'w'};
M_.endo_names_tex(12) = {'w'};
M_.endo_names_long(12) = {'w'};
M_.endo_names(13) = {'w_star'};
M_.endo_names_tex(13) = {'w\_star'};
M_.endo_names_long(13) = {'w_star'};
M_.endo_names(14) = {'h1'};
M_.endo_names_tex(14) = {'h1'};
M_.endo_names_long(14) = {'h1'};
M_.endo_names(15) = {'h2'};
M_.endo_names_tex(15) = {'h2'};
M_.endo_names_long(15) = {'h2'};
M_.endo_names(16) = {'N_d'};
M_.endo_names_tex(16) = {'N\_d'};
M_.endo_names_long(16) = {'N_d'};
M_.endo_names(17) = {'K_hat'};
M_.endo_names_tex(17) = {'K\_hat'};
M_.endo_names_long(17) = {'K_hat'};
M_.endo_names(18) = {'K'};
M_.endo_names_tex(18) = {'K'};
M_.endo_names_long(18) = {'K'};
M_.endo_names(19) = {'mc'};
M_.endo_names_tex(19) = {'mc'};
M_.endo_names_long(19) = {'mc'};
M_.endo_names(20) = {'pi_star'};
M_.endo_names_tex(20) = {'pi\_star'};
M_.endo_names_long(20) = {'pi_star'};
M_.endo_names(21) = {'x1'};
M_.endo_names_tex(21) = {'x1'};
M_.endo_names_long(21) = {'x1'};
M_.endo_names(22) = {'x2'};
M_.endo_names_tex(22) = {'x2'};
M_.endo_names_long(22) = {'x2'};
M_.endo_names(23) = {'Y'};
M_.endo_names_tex(23) = {'Y'};
M_.endo_names_long(23) = {'Y'};
M_.endo_names(24) = {'G'};
M_.endo_names_tex(24) = {'G'};
M_.endo_names_long(24) = {'G'};
M_.endo_names(25) = {'A'};
M_.endo_names_tex(25) = {'A'};
M_.endo_names_long(25) = {'A'};
M_.endo_names(26) = {'v_p'};
M_.endo_names_tex(26) = {'v\_p'};
M_.endo_names_long(26) = {'v_p'};
M_.endo_names(27) = {'tauc'};
M_.endo_names_tex(27) = {'tauc'};
M_.endo_names_long(27) = {'tauc'};
M_.endo_names(28) = {'taun'};
M_.endo_names_tex(28) = {'taun'};
M_.endo_names_long(28) = {'taun'};
M_.endo_names(29) = {'tauk'};
M_.endo_names_tex(29) = {'tauk'};
M_.endo_names_long(29) = {'tauk'};
M_.endo_names(30) = {'Welfare'};
M_.endo_names_tex(30) = {'Welfare'};
M_.endo_names_long(30) = {'Welfare'};
M_.endo_names(31) = {'Y_obs'};
M_.endo_names_tex(31) = {'Y\_obs'};
M_.endo_names_long(31) = {'Y_obs'};
M_.endo_names(32) = {'C_obs'};
M_.endo_names_tex(32) = {'C\_obs'};
M_.endo_names_long(32) = {'C_obs'};
M_.endo_names(33) = {'I_obs'};
M_.endo_names_tex(33) = {'I\_obs'};
M_.endo_names_long(33) = {'I_obs'};
M_.endo_names(34) = {'N_d_obs'};
M_.endo_names_tex(34) = {'N\_d\_obs'};
M_.endo_names_long(34) = {'N_d_obs'};
M_.endo_names(35) = {'R_obs'};
M_.endo_names_tex(35) = {'R\_obs'};
M_.endo_names_long(35) = {'R_obs'};
M_.endo_names(36) = {'pi_obs'};
M_.endo_names_tex(36) = {'pi\_obs'};
M_.endo_names_long(36) = {'pi_obs'};
M_.endo_partitions = struct();
M_.param_names = cell(33,1);
M_.param_names_tex = cell(33,1);
M_.param_names_long = cell(33,1);
M_.param_names(1) = {'betta'};
M_.param_names_tex(1) = {'betta'};
M_.param_names_long(1) = {'betta'};
M_.param_names(2) = {'b'};
M_.param_names_tex(2) = {'b'};
M_.param_names_long(2) = {'b'};
M_.param_names(3) = {'alfa'};
M_.param_names_tex(3) = {'alfa'};
M_.param_names_long(3) = {'alfa'};
M_.param_names(4) = {'delta0'};
M_.param_names_tex(4) = {'delta0'};
M_.param_names_long(4) = {'delta0'};
M_.param_names(5) = {'delta1'};
M_.param_names_tex(5) = {'delta1'};
M_.param_names_long(5) = {'delta1'};
M_.param_names(6) = {'delta2'};
M_.param_names_tex(6) = {'delta2'};
M_.param_names_long(6) = {'delta2'};
M_.param_names(7) = {'pi_target'};
M_.param_names_tex(7) = {'pi\_target'};
M_.param_names_long(7) = {'pi_target'};
M_.param_names(8) = {'ki'};
M_.param_names_tex(8) = {'ki'};
M_.param_names_long(8) = {'ki'};
M_.param_names(9) = {'fiw'};
M_.param_names_tex(9) = {'fiw'};
M_.param_names_long(9) = {'fiw'};
M_.param_names(10) = {'epsilonw'};
M_.param_names_tex(10) = {'epsilonw'};
M_.param_names_long(10) = {'epsilonw'};
M_.param_names(11) = {'ka'};
M_.param_names_tex(11) = {'ka'};
M_.param_names_long(11) = {'ka'};
M_.param_names(12) = {'etaw'};
M_.param_names_tex(12) = {'etaw'};
M_.param_names_long(12) = {'etaw'};
M_.param_names(13) = {'epsilonp'};
M_.param_names_tex(13) = {'epsilonp'};
M_.param_names_long(13) = {'epsilonp'};
M_.param_names(14) = {'etap'};
M_.param_names_tex(14) = {'etap'};
M_.param_names_long(14) = {'etap'};
M_.param_names(15) = {'fip'};
M_.param_names_tex(15) = {'fip'};
M_.param_names_long(15) = {'fip'};
M_.param_names(16) = {'rhoi'};
M_.param_names_tex(16) = {'rhoi'};
M_.param_names_long(16) = {'rhoi'};
M_.param_names(17) = {'fipi'};
M_.param_names_tex(17) = {'fipi'};
M_.param_names_long(17) = {'fipi'};
M_.param_names(18) = {'fiy'};
M_.param_names_tex(18) = {'fiy'};
M_.param_names_long(18) = {'fiy'};
M_.param_names(19) = {'rhoa'};
M_.param_names_tex(19) = {'rhoa'};
M_.param_names_long(19) = {'rhoa'};
M_.param_names(20) = {'rhoz'};
M_.param_names_tex(20) = {'rhoz'};
M_.param_names_long(20) = {'rhoz'};
M_.param_names(21) = {'rhog'};
M_.param_names_tex(21) = {'rhog'};
M_.param_names_long(21) = {'rhog'};
M_.param_names(22) = {'rhov'};
M_.param_names_tex(22) = {'rhov'};
M_.param_names_long(22) = {'rhov'};
M_.param_names(23) = {'rhopsi'};
M_.param_names_tex(23) = {'rhopsi'};
M_.param_names_long(23) = {'rhopsi'};
M_.param_names(24) = {'psis'};
M_.param_names_tex(24) = {'psis'};
M_.param_names_long(24) = {'psis'};
M_.param_names(25) = {'rhotauc'};
M_.param_names_tex(25) = {'rhotauc'};
M_.param_names_long(25) = {'rhotauc'};
M_.param_names(26) = {'taucs'};
M_.param_names_tex(26) = {'taucs'};
M_.param_names_long(26) = {'taucs'};
M_.param_names(27) = {'rhotaun'};
M_.param_names_tex(27) = {'rhotaun'};
M_.param_names_long(27) = {'rhotaun'};
M_.param_names(28) = {'tauns'};
M_.param_names_tex(28) = {'tauns'};
M_.param_names_long(28) = {'tauns'};
M_.param_names(29) = {'rhotauk'};
M_.param_names_tex(29) = {'rhotauk'};
M_.param_names_long(29) = {'rhotauk'};
M_.param_names(30) = {'tauks'};
M_.param_names_tex(30) = {'tauks'};
M_.param_names_long(30) = {'tauks'};
M_.param_names(31) = {'omegga'};
M_.param_names_tex(31) = {'omegga'};
M_.param_names_long(31) = {'omegga'};
M_.param_names(32) = {'fin'};
M_.param_names_tex(32) = {'fin'};
M_.param_names_long(32) = {'fin'};
M_.param_names(33) = {'fik'};
M_.param_names_tex(33) = {'fik'};
M_.param_names_long(33) = {'fik'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 9;
M_.endo_nbr = 36;
M_.param_nbr = 33;
M_.orig_endo_nbr = 36;
M_.aux_vars = [];
options_.varobs = cell(6, 1);
options_.varobs(1)  = {'Y_obs'};
options_.varobs(2)  = {'C_obs'};
options_.varobs(3)  = {'I_obs'};
options_.varobs(4)  = {'N_d_obs'};
options_.varobs(5)  = {'R_obs'};
options_.varobs(6)  = {'pi_obs'};
options_.varobs_id = [ 31 32 33 34 35 36  ];
M_.Sigma_e = zeros(9, 9);
M_.Correlation_matrix = eye(9, 9);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.nonzero_hessian_eqs = [1 2 3 4 5 6 7 8 9 10 11 12 13 15 16 17 18 19 20 21 22 23 24 25 26 28 29 36];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 36;
M_.eq_nbr = 36;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 18 54;
 0 19 55;
 1 20 56;
 2 21 0;
 3 22 57;
 0 23 58;
 0 24 59;
 4 25 60;
 5 26 61;
 6 27 62;
 7 28 0;
 8 29 0;
 0 30 63;
 0 31 64;
 0 32 65;
 0 33 0;
 9 34 0;
 10 35 0;
 0 36 0;
 0 37 0;
 0 38 66;
 0 39 67;
 11 40 0;
 12 41 0;
 13 42 0;
 14 43 0;
 15 44 0;
 16 45 0;
 17 46 68;
 0 47 69;
 0 48 0;
 0 49 0;
 0 50 0;
 0 51 0;
 0 52 0;
 0 53 0;]';
M_.nstatic = 9;
M_.nfwrd   = 10;
M_.npred   = 11;
M_.nboth   = 6;
M_.nsfwrd   = 16;
M_.nspred   = 17;
M_.ndynamic   = 27;
M_.dynamic_tmp_nbr = [40; 50; 9; 0; ];
M_.equations_tags = {
  1 , 'name' , '方程1：预算约束的拉格朗日乘数' ;
  2 , 'name' , '方程2：资本可利用程度' ;
  3 , 'name' , '方程3：债券欧拉方程' ;
  4 , 'name' , '方程4：tobin q' ;
  5 , 'name' , '方程5：资本欧拉的方程' ;
  6 , 'name' , '方程6：h1' ;
  7 , 'name' , '方程7：h2' ;
  8 , 'name' , '方程8：最优工资定价' ;
  9 , 'name' , '方程9：最优要素需求比' ;
  10 , 'name' , '方程10：边际成本' ;
  11 , 'name' , '方程11：x1' ;
  12 , 'name' , '方程12：x2' ;
  13 , 'name' , '方程13：最优通胀' ;
  14 , 'name' , '方程14：总资源约束' ;
  15 , 'name' , '方程15：资本演化方程' ;
  16 , 'name' , '方程16：生产函数' ;
  17 , 'name' , '方程17：有效资本服务' ;
  18 , 'name' , '方程18：价格扩散方程' ;
  19 , 'name' , '方程19：通胀演化方程' ;
  20 , 'name' , '方程20：工资演化方程' ;
  21 , 'name' , '方程21：货币政策-泰勒规则' ;
  22 , 'name' , '方程22：财政支出政策' ;
  23 , 'name' , '方程23：生产率冲击' ;
  24 , 'name' , '方程24：投资效率冲击' ;
  25 , 'name' , '方程25：跨期偏好冲击' ;
  26 , 'name' , '方程26：期内偏好冲击' ;
  27 , 'name' , '方程27：增值税冲击' ;
  28 , 'name' , '方程28：劳动所得税冲击' ;
  29 , 'name' , '方程29：资本所得税冲击' ;
  30 , 'name' , '方程30：产出的观测方程' ;
  31 , 'name' , '方程31:消费的观测方程' ;
  32 , 'name' , '方程32:投资的观测方程' ;
  33 , 'name' , '方程33:通胀的观测方程' ;
  34 , 'name' , '方程34:利率的观测方程' ;
  35 , 'name' , '方程35:劳动的观测方程' ;
  36 , 'name' , '方程36:福利函数' ;
};
M_.mapping.lamb.eqidx = [1 2 3 4 5 7 11 12 ];
M_.mapping.mu.eqidx = [2 4 5 ];
M_.mapping.C.eqidx = [1 14 31 36 ];
M_.mapping.i.eqidx = [3 21 ];
M_.mapping.pi.eqidx = [3 6 7 11 12 13 18 19 20 21 33 ];
M_.mapping.R.eqidx = [2 5 9 29 34 ];
M_.mapping.u.eqidx = [2 5 15 17 ];
M_.mapping.Z.eqidx = [4 15 24 ];
M_.mapping.I.eqidx = [4 14 15 32 ];
M_.mapping.v.eqidx = [1 6 25 36 ];
M_.mapping.pssi.eqidx = [6 26 36 ];
M_.mapping.w.eqidx = [6 7 9 10 20 28 ];
M_.mapping.w_star.eqidx = [6 7 8 20 ];
M_.mapping.h1.eqidx = [6 8 ];
M_.mapping.h2.eqidx = [7 8 ];
M_.mapping.N_d.eqidx = [6 7 9 10 16 28 35 36 ];
M_.mapping.K_hat.eqidx = [9 10 16 17 29 ];
M_.mapping.K.eqidx = [15 17 ];
M_.mapping.mc.eqidx = [10 11 ];
M_.mapping.pi_star.eqidx = [13 18 19 ];
M_.mapping.x1.eqidx = [11 13 ];
M_.mapping.x2.eqidx = [12 13 ];
M_.mapping.Y.eqidx = [11 12 14 16 21 22 30 ];
M_.mapping.G.eqidx = [14 22 ];
M_.mapping.A.eqidx = [10 16 23 ];
M_.mapping.v_p.eqidx = [16 18 ];
M_.mapping.tauc.eqidx = [1 4 27 ];
M_.mapping.taun.eqidx = [7 28 ];
M_.mapping.tauk.eqidx = [2 5 29 ];
M_.mapping.Welfare.eqidx = [36 ];
M_.mapping.Y_obs.eqidx = [30 ];
M_.mapping.C_obs.eqidx = [31 ];
M_.mapping.I_obs.eqidx = [32 ];
M_.mapping.N_d_obs.eqidx = [35 ];
M_.mapping.R_obs.eqidx = [34 ];
M_.mapping.pi_obs.eqidx = [33 ];
M_.mapping.e_g.eqidx = [22 ];
M_.mapping.e_i.eqidx = [21 ];
M_.mapping.e_a.eqidx = [23 ];
M_.mapping.e_z.eqidx = [24 ];
M_.mapping.e_v.eqidx = [25 ];
M_.mapping.e_pssi.eqidx = [26 ];
M_.mapping.e_tauc.eqidx = [27 ];
M_.mapping.e_taun.eqidx = [28 ];
M_.mapping.e_tauk.eqidx = [29 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [3 4 5 8 9 10 11 12 17 18 23 24 25 26 27 28 29 ];
M_.exo_names_orig_ord = [1:9];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(36, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(9, 1);
M_.params = NaN(33, 1);
M_.endo_trends = struct('deflator', cell(36, 1), 'log_deflator', cell(36, 1), 'growth_factor', cell(36, 1), 'log_growth_factor', cell(36, 1));
M_.NNZDerivatives = [165; 306; -1; ];
M_.static_tmp_nbr = [20; 11; 0; 0; ];
M_.params(1) = 0.995;
betta = M_.params(1);
M_.params(2) = 0.7;
b = M_.params(2);
M_.params(3) = 0.33;
alfa = M_.params(3);
M_.params(4) = 0.025;
delta0 = M_.params(4);
M_.params(6) = 0.05;
delta2 = M_.params(6);
M_.params(7) = 0.02;
pi_target = M_.params(7);
M_.params(8) = 4;
ki = M_.params(8);
M_.params(10) = 3;
epsilonw = M_.params(10);
M_.params(13) = 3;
epsilonp = M_.params(13);
M_.params(11) = 2;
ka = M_.params(11);
M_.params(12) = 0.2;
etaw = M_.params(12);
M_.params(14) = 0.2;
etap = M_.params(14);
M_.params(9) = 0.75;
fiw = M_.params(9);
M_.params(15) = 0.66;
fip = M_.params(15);
M_.params(16) = 0.8;
rhoi = M_.params(16);
M_.params(17) = 1.5;
fipi = M_.params(17);
M_.params(18) = 0.2;
fiy = M_.params(18);
M_.params(19) = 0.92;
rhoa = M_.params(19);
M_.params(20) = 0.94;
rhoz = M_.params(20);
M_.params(21) = 0.72;
rhog = M_.params(21);
M_.params(22) = 0.9;
rhov = M_.params(22);
M_.params(23) = 0.7;
rhopsi = M_.params(23);
M_.params(24) = 6;
psis = M_.params(24);
M_.params(25) = 0.72;
rhotauc = M_.params(25);
M_.params(26) = 0.15;
taucs = M_.params(26);
M_.params(27) = 0.72;
rhotaun = M_.params(27);
M_.params(28) = 0.05;
tauns = M_.params(28);
M_.params(29) = 0.72;
rhotauk = M_.params(29);
M_.params(30) = 0.125;
tauks = M_.params(30);
M_.params(31) = 0.2;
omegga = M_.params(31);
M_.params(32) = 0.5;
fin = M_.params(32);
M_.params(33) = 0.5;
fik = M_.params(33);
M_.params(5) = 1/M_.params(1)-(1-M_.params(4));
delta1 = M_.params(5);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(25) = 1;
oo_.steady_state(8) = 1;
oo_.steady_state(10) = 1;
oo_.steady_state(11) = M_.params(24);
oo_.steady_state(27) = M_.params(26);
oo_.steady_state(28) = M_.params(28);
oo_.steady_state(29) = M_.params(30);
oo_.steady_state(5) = M_.params(7);
oo_.steady_state(4) = 1/M_.params(1)*(1+oo_.steady_state(5))-1;
oo_.steady_state(7) = 1;
oo_.steady_state(6) = (1/M_.params(1)-(1-M_.params(4)))*(1+oo_.steady_state(27))/(1-oo_.steady_state(29));
oo_.steady_state(20) = (((1+oo_.steady_state(5))^(1-M_.params(13))-M_.params(15)*(1+oo_.steady_state(5))^((1-M_.params(13))*M_.params(14)))/(1-M_.params(15)))^(1/(1-M_.params(13)))-1;
oo_.steady_state(26) = (1-M_.params(15))*((1+oo_.steady_state(20))/(1+oo_.steady_state(5)))^(-M_.params(13))/(1-M_.params(15)*(1+oo_.steady_state(5))^(M_.params(13)*(1-M_.params(14))));
oo_.steady_state(19) = (1+oo_.steady_state(20))*(M_.params(13)-1)/M_.params(13)/(1+oo_.steady_state(5))*(1-(1+oo_.steady_state(5))^(M_.params(13)*(1-M_.params(14)))*M_.params(1)*M_.params(15))/(1-M_.params(1)*M_.params(15)*(1+oo_.steady_state(5))^((1-M_.params(13))*(M_.params(14)-1)));
oo_.steady_state(12) = (1-M_.params(3))*oo_.steady_state(19)*(M_.params(3)*oo_.steady_state(19)/oo_.steady_state(6))^(M_.params(3)/(1-M_.params(3)));
oo_.steady_state(13) = oo_.steady_state(12)*((1-M_.params(9)*(1+oo_.steady_state(5))^((M_.params(10)-1)*(1-M_.params(12))))/(1-M_.params(9)))^(1/(1-M_.params(10)));
oo_.steady_state(16) = (oo_.steady_state(13)*(M_.params(10)-1)/M_.params(10)/M_.params(24)*(1-oo_.steady_state(28))/(1+oo_.steady_state(27))/(1-M_.params(2))*(1-M_.params(1)*M_.params(2))*((M_.params(3)*oo_.steady_state(19)/oo_.steady_state(6))^(M_.params(3)/(1-M_.params(3)))*(1-M_.params(31))/oo_.steady_state(26)-M_.params(4)*(M_.params(3)*oo_.steady_state(19)/oo_.steady_state(6))^(1/(1-M_.params(3))))^(-1)*(oo_.steady_state(12)/oo_.steady_state(13))^((-M_.params(10))*M_.params(11))*(1-M_.params(1)*M_.params(9)*(1+oo_.steady_state(5))^((1-M_.params(12))*M_.params(10)*(1+M_.params(11))))/(1-(1+oo_.steady_state(5))^((M_.params(10)-1)*(1-M_.params(12)))*M_.params(1)*M_.params(9)))^(1/(1+M_.params(11)));
oo_.steady_state(17) = (M_.params(3)*oo_.steady_state(19)/oo_.steady_state(6))^(1/(1-M_.params(3)))*oo_.steady_state(16);
oo_.steady_state(18) = oo_.steady_state(17);
oo_.steady_state(9) = M_.params(4)*oo_.steady_state(18);
oo_.steady_state(23) = oo_.steady_state(25)*oo_.steady_state(17)^M_.params(3)*oo_.steady_state(16)^(1-M_.params(3))/oo_.steady_state(26);
oo_.steady_state(24) = M_.params(31)*oo_.steady_state(23);
oo_.steady_state(3) = oo_.steady_state(23)-oo_.steady_state(24)-oo_.steady_state(9);
oo_.steady_state(1) = (1-M_.params(1)*M_.params(2))*1/oo_.steady_state(3)/(1-M_.params(2))/(1+oo_.steady_state(27));
oo_.steady_state(2) = (1+oo_.steady_state(27))*oo_.steady_state(1);
oo_.steady_state(21) = oo_.steady_state(23)*oo_.steady_state(19)*oo_.steady_state(1)/(1-(1+oo_.steady_state(5))^(M_.params(13)*(1-M_.params(14)))*M_.params(1)*M_.params(15));
oo_.steady_state(22) = oo_.steady_state(23)*oo_.steady_state(1)/(1-M_.params(1)*M_.params(15)*(1+oo_.steady_state(5))^((1-M_.params(13))*(M_.params(14)-1)));
oo_.steady_state(14) = M_.params(24)*(oo_.steady_state(12)/oo_.steady_state(13))^(M_.params(10)*(1+M_.params(11)))*oo_.steady_state(16)^(1+M_.params(11))/(1-M_.params(1)*M_.params(9)*(1+oo_.steady_state(5))^((1-M_.params(12))*M_.params(10)*(1+M_.params(11))));
oo_.steady_state(15) = oo_.steady_state(16)*(1-oo_.steady_state(28))*oo_.steady_state(1)*(oo_.steady_state(12)/oo_.steady_state(13))^M_.params(10)/(1-(1+oo_.steady_state(5))^((M_.params(10)-1)*(1-M_.params(12)))*M_.params(1)*M_.params(9));
oo_.steady_state(30) = 1/(1-M_.params(1))*(log(oo_.steady_state(3)-M_.params(2)*oo_.steady_state(3))-oo_.steady_state(16)^(1+M_.params(11))*oo_.steady_state(11)/(1+M_.params(11)));
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
resid;                            
oo_.dr.eigval = check(M_,options_,oo_);
steady;
model_diagnostics(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.01)^2;
M_.Sigma_e(2, 2) = (0.01)^2;
M_.Sigma_e(3, 3) = (0.01)^2;
M_.Sigma_e(4, 4) = (0.01)^2;
M_.Sigma_e(5, 5) = (0.01)^2;
M_.Sigma_e(6, 6) = (0.01)^2;
M_.Sigma_e(7, 7) = (0.01)^2;
M_.Sigma_e(8, 8) = (0.01)^2;
M_.Sigma_e(9, 9) = (0.01)^2;
estim_params_.var_exo = zeros(0, 10);
estim_params_.var_endo = zeros(0, 10);
estim_params_.corrx = zeros(0, 11);
estim_params_.corrn = zeros(0, 11);
estim_params_.param_vals = zeros(0, 10);
estim_params_.param_vals = [estim_params_.param_vals; 19, NaN, (-Inf), Inf, 1, 0.72, 0.05, NaN, NaN, NaN ];
estim_params_.var_exo = [estim_params_.var_exo; 3, NaN, (-Inf), Inf, 4, 0.01, Inf, NaN, NaN, NaN ];
options_.bayesian_irf = true;
options_.forecast = 20;
options_.mh_jscale = 0.8;
options_.mh_replic = 2000;
options_.mode_check.status = true;
options_.mode_compute = 6;
options_.datafile = 'msnk_baseline';
options_.order = 1;
var_list_ = {'Y'};
oo_recursive_=dynare_estimation(var_list_);
save('mscale_dsge_baseline_est_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('mscale_dsge_baseline_est_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('mscale_dsge_baseline_est_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('mscale_dsge_baseline_est_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('mscale_dsge_baseline_est_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('mscale_dsge_baseline_est_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('mscale_dsge_baseline_est_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
