%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'dynareSAMOptionValue';
M_.dynare_version = '4.5.3';
oo_.dynare_version = '4.5.3';
options_.dynare_version = '4.5.3';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('dynareSAMOptionValue.log');
M_.exo_names = 'eps_z';
M_.exo_names_tex = '{\epsilon_z}';
M_.exo_names_long = 'Aggregate productivity innovation';
M_.exo_names = char(M_.exo_names, 'eps_s');
M_.exo_names_tex = char(M_.exo_names_tex, '{\epsilon_{\sigma_z}}');
M_.exo_names_long = char(M_.exo_names_long, 'Aggregate productivity uncertainty innovation');
M_.endo_names = 'm';
M_.endo_names_tex = '{m}';
M_.endo_names_long = 'Matches';
M_.endo_names = char(M_.endo_names, 'n');
M_.endo_names_tex = char(M_.endo_names_tex, '{n}');
M_.endo_names_long = char(M_.endo_names_long, 'Employment');
M_.endo_names = char(M_.endo_names, 'u');
M_.endo_names_tex = char(M_.endo_names_tex, '{n}');
M_.endo_names_long = char(M_.endo_names_long, 'Unemployment');
M_.endo_names = char(M_.endo_names, 'us');
M_.endo_names_tex = char(M_.endo_names_tex, '{u^s}');
M_.endo_names_long = char(M_.endo_names_long, 'Number of searching workers');
M_.endo_names = char(M_.endo_names, 'v');
M_.endo_names_tex = char(M_.endo_names_tex, '{v}');
M_.endo_names_long = char(M_.endo_names_long, 'Number of vacancies');
M_.endo_names = char(M_.endo_names, 'h');
M_.endo_names_tex = char(M_.endo_names_tex, '{h}');
M_.endo_names_long = char(M_.endo_names_long, 'Vacancy filling rate');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, '{z}');
M_.endo_names_long = char(M_.endo_names_long, 'Aggregate productivity');
M_.endo_names = char(M_.endo_names, 'f');
M_.endo_names_tex = char(M_.endo_names_tex, '{f}');
M_.endo_names_long = char(M_.endo_names_long, 'Job finding rate');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, '{y}');
M_.endo_names_long = char(M_.endo_names_long, 'Output');
M_.endo_names = char(M_.endo_names, 'sigma_z');
M_.endo_names_tex = char(M_.endo_names_tex, '{\sigma_z}');
M_.endo_names_long = char(M_.endo_names_long, 'Aggregate productivity shock volatility');
M_.endo_names = char(M_.endo_names, 'p');
M_.endo_names_tex = char(M_.endo_names_tex, '{p}');
M_.endo_names_long = char(M_.endo_names_long, 'Entry probability');
M_.endo_names = char(M_.endo_names, 'aHat');
M_.endo_names_tex = char(M_.endo_names_tex, '{\hat{a}}');
M_.endo_names_long = char(M_.endo_names_long, 'Cutoff');
M_.endo_names = char(M_.endo_names, 'aStar');
M_.endo_names_tex = char(M_.endo_names_tex, '{a^*}');
M_.endo_names_long = char(M_.endo_names_long, 'Cond. expected productivity draw');
M_.endo_names = char(M_.endo_names, 'JaHat');
M_.endo_names_tex = char(M_.endo_names_tex, '{J(\hat{a})}');
M_.endo_names_long = char(M_.endo_names_long, 'Match value at cutoff');
M_.endo_names = char(M_.endo_names, 'JStar');
M_.endo_names_tex = char(M_.endo_names_tex, '{J^*(a)}');
M_.endo_names_long = char(M_.endo_names_long, 'Conditional expected match value');
M_.endo_names = char(M_.endo_names, 'JU');
M_.endo_names_tex = char(M_.endo_names_tex, '{J^U}');
M_.endo_names_long = char(M_.endo_names_long, 'Value of unmatched entrepreneur');
M_.endo_names = char(M_.endo_names, 'JaHat_aHatSS');
M_.endo_names_tex = char(M_.endo_names_tex, '{\bar{J}(\hat{a})}');
M_.endo_names_long = char(M_.endo_names_long, 'Match value at steady-state cutoff');
M_.endo_names = char(M_.endo_names, 'JaHatPTilde');
M_.endo_names_tex = char(M_.endo_names_tex, 'JaHatPTilde');
M_.endo_names_long = char(M_.endo_names_long, 'JaHatPTilde');
M_.endo_names = char(M_.endo_names, 'JStarPTilde');
M_.endo_names_tex = char(M_.endo_names_tex, 'JStarPTilde');
M_.endo_names_long = char(M_.endo_names_long, 'JStarPTilde');
M_.endo_names = char(M_.endo_names, 'JU_d');
M_.endo_names_tex = char(M_.endo_names_tex, 'JU\_d');
M_.endo_names_long = char(M_.endo_names_long, 'JU_d');
M_.endo_names = char(M_.endo_names, 'JaHatPTilde_aHatSS');
M_.endo_names_tex = char(M_.endo_names_tex, 'JaHatPTilde\_aHatSS');
M_.endo_names_long = char(M_.endo_names_long, 'JaHatPTilde_aHatSS');
M_.endo_names = char(M_.endo_names, 'n_Obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'n\_Obs');
M_.endo_names_long = char(M_.endo_names_long, 'n_Obs');
M_.endo_names = char(M_.endo_names, 'z_Obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'z\_Obs');
M_.endo_names_long = char(M_.endo_names_long, 'z_Obs');
M_.endo_names = char(M_.endo_names, 'sigma_z_Obs');
M_.endo_names_tex = char(M_.endo_names_tex, 'sigma\_z\_Obs');
M_.endo_names_long = char(M_.endo_names_long, 'sigma_z_Obs');
M_.endo_partitions = struct();
M_.param_names = 'betta';
M_.param_names_tex = '{\beta}';
M_.param_names_long = 'Subjective discount factor';
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, '{\eta}');
M_.param_names_long = char(M_.param_names_long, 'Elasticity of substitution b/w differentiated products');
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, '{\alpha}');
M_.param_names_long = char(M_.param_names_long, 'Elasticity of matching w.r.t. u');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, '{\delta}');
M_.param_names_long = char(M_.param_names_long, 'Exogenous job destruction rate');
M_.param_names = char(M_.param_names, 'omega');
M_.param_names_tex = char(M_.param_names_tex, '{\omega}');
M_.param_names_long = char(M_.param_names_long, 'Bargaining weight for workers');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, 'kappa');
M_.param_names_long = char(M_.param_names_long, 'kappa');
M_.param_names = char(M_.param_names, 'chi');
M_.param_names_tex = char(M_.param_names_tex, '{\chi}');
M_.param_names_long = char(M_.param_names_long, 'Strike value');
M_.param_names = char(M_.param_names, 'psi');
M_.param_names_tex = char(M_.param_names_tex, '{\mu}');
M_.param_names_long = char(M_.param_names_long, 'Matching efficiency');
M_.param_names = char(M_.param_names, 'xss');
M_.param_names_tex = char(M_.param_names_tex, '{\bar{x}}');
M_.param_names_long = char(M_.param_names_long, 'Inverse markup');
M_.param_names = char(M_.param_names, 'zBar');
M_.param_names_tex = char(M_.param_names_tex, '{\bar{z}}');
M_.param_names_long = char(M_.param_names_long, 'Aggregate productivity, steady-state value');
M_.param_names = char(M_.param_names, 'rho_z');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_z}');
M_.param_names_long = char(M_.param_names_long, 'Aggregate productivity shock, persistence');
M_.param_names = char(M_.param_names, 'rho_sigma_z');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{\sigma_z}}');
M_.param_names_long = char(M_.param_names_long, 'Aggregate productivity uncertainty shock, persistence');
M_.param_names = char(M_.param_names, 'sigma_zbar');
M_.param_names_tex = char(M_.param_names_tex, '{\bar{\sigma}_z}');
M_.param_names_long = char(M_.param_names_long, 'Aggregate productivity uncertainty shock, mean value');
M_.param_names = char(M_.param_names, 'sigma_sigma_z');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_{\sigma_z}}');
M_.param_names_long = char(M_.param_names_long, 'Aggregate productivity uncertainty shock, sd of innovation');
M_.param_names = char(M_.param_names, 'sigma_a');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_a}');
M_.param_names_long = char(M_.param_names_long, 'Idiosyncratic productivity shock, sd');
M_.param_names = char(M_.param_names, 'Upsilon');
M_.param_names_tex = char(M_.param_names_tex, '{\Upsilon}');
M_.param_names_long = char(M_.param_names_long, 'Fixed mass of entrepreneurs');
M_.param_names = char(M_.param_names, 'aMean');
M_.param_names_tex = char(M_.param_names_tex, '{\mu_a}');
M_.param_names_long = char(M_.param_names_long, 'Idiosyncratic productivity shock, mean');
M_.param_names = char(M_.param_names, 'aH');
M_.param_names_tex = char(M_.param_names_tex, '{a_L}');
M_.param_names_long = char(M_.param_names_long, 'Idiosyncratic productivity shock, upper limit');
M_.param_names = char(M_.param_names, 'aL');
M_.param_names_tex = char(M_.param_names_tex, '{a^H}');
M_.param_names_long = char(M_.param_names_long, 'Idiosyncratic productivity shock, lowerl limit');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 24;
M_.param_nbr = 19;
M_.orig_endo_nbr = 24;
M_.aux_vars = [];
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 0;
erase_compiled_function('dynareSAMOptionValue_static');
erase_compiled_function('dynareSAMOptionValue_dynamic');
M_.orig_eq_nbr = 24;
M_.eq_nbr = 24;
M_.ramsey_eq_nbr = 0;
M_.lead_lag_incidence = [
 0 4 0;
 1 5 0;
 0 6 0;
 0 7 0;
 0 8 0;
 0 9 0;
 2 10 0;
 0 11 0;
 0 12 0;
 3 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 28;
 0 20 0;
 0 21 29;
 0 22 30;
 0 23 0;
 0 24 31;
 0 25 0;
 0 26 0;
 0 27 0;]';
M_.nstatic = 17;
M_.nfwrd   = 4;
M_.npred   = 3;
M_.nboth   = 0;
M_.nsfwrd   = 4;
M_.nspred   = 3;
M_.ndynamic   = 7;
M_.equations_tags = {
  1 , 'name' , 'Searching workers' ;
  2 , 'name' , 'Matching function' ;
  3 , 'name' , 'Job finding rate ' ;
  4 , 'name' , 'Vacancy filling rate' ;
  5 , 'name' , 'Employment law of motion' ;
  6 , 'name' , 'Unemployment rate' ;
  7 , 'name' , 'Match value at cutoff' ;
  9 , 'name' , 'Expected value of newly matched firm' ;
  11 , 'name' , 'Value of unmatched entrepreneur' ;
  12 , 'name' , 'Indifference condition' ;
  13 , 'name' , 'Definition of p' ;
  14 , 'name' , 'Definition of a-Star' ;
  15 , 'name' , 'Vacancy creation' ;
  16 , 'name' , 'Aggregate productivity' ;
  17 , 'name' , 'Aggregate productivity volatility' ;
  18 , 'name' , 'Output' ;
  19 , 'name' , 'Value of matched entrepreneur at steady state cut-off level' ;
  21 , 'name' , 'Value of entrepreneur leaving without match' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(24, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(19, 1);
M_.NNZDerivatives = [67; 32; 28];
load inputParameters
set_param_value('zBar', sPar.zBar);
set_param_value('betta',sPar.beta);
set_param_value('eta',sPar.eta);
set_param_value('alpha',sPar.alpha);
set_param_value('delta',sPar.delta);
set_param_value('kappa',sPar.kappa);
set_param_value('psi',sPar.psi);
set_param_value('xss',sPar.xss);
set_param_value('sigma_a',sPar.sigma_a);
set_param_value('Upsilon',sPar.Upsilon);
set_param_value('aMean',sPar.aMean);
set_param_value('aH',sPar.aH);
set_param_value('aL',sPar.aL);
set_param_value('omega',sPar.omega);
set_param_value('chi',sPar.chi);
set_param_value('rho_z',sPar.rho_z);
set_param_value('sigma_zbar',sPar.sigma_zbar);
set_param_value('sigma_sigma_z',sPar.sigma_sigma_z);
set_param_value('rho_sigma_z',sPar.rho_sigma_z);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 1;
resid;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.k_order_solver = 1;
options_.irf = 0;
options_.k_order_solver = 1;
options_.order = 3;
options_.pruning = 1;
var_list_ = char();
info = stoch_simul(var_list_);
vNames = M_.endo_names; 
IrfPeriods = 20;                
BurninPeriods = 10000;   
mEpsZero = zeros(BurninPeriods+IrfPeriods,M_.exo_nbr);         
mIrfZero = simult_(oo_.dr.ys,oo_.dr,mEpsZero,options_.order)'; 
vEMAS = mIrfZero(1+BurninPeriods,:);                           
mEps = zeros(BurninPeriods+IrfPeriods,M_.exo_nbr);
mEps(1+BurninPeriods,strmatch('eps_s',M_.exo_names,'exact')) = 1; 
mIrf = simult_(oo_.dr.ys,oo_.dr,mEps,options_.order)';
mIrfProp = (mIrf(1+BurninPeriods+1:1+BurninPeriods+IrfPeriods,:)-mIrfZero(1+BurninPeriods+1:1+BurninPeriods+IrfPeriods,:))./repmat(vEMAS,IrfPeriods,1); 
mIrfProp(abs(mIrfProp)<1e-12)=0;
mIRFProp_zUncertainty_EMAS = mIrfProp;
options_.irf = 0;
options_.nomoments = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char();
info = stoch_simul(var_list_);
mEps = zeros(BurninPeriods+IrfPeriods,M_.exo_nbr);
mEps(1+BurninPeriods,strmatch('eps_z',M_.exo_names,'exact')) = 1; 
mIrf = simult_(oo_.dr.ys,oo_.dr,mEps,options_.order)';
mIrfProp = (mIrf(1+BurninPeriods+1:1+BurninPeriods+IrfPeriods,:)-mIrfZero(1+BurninPeriods+1:1+BurninPeriods+IrfPeriods,:))./repmat(vEMAS,IrfPeriods,1); 
mIrfProp(abs(mIrfProp)<1e-12)=0;
mIRFProp_Order1_z_EMAS = mIrfProp;
tic
addpath('simAndMoments3order');
options_.irf = 0;
options_.nomoments = 1;
options_.noprint = 1;
options_.order = 1;
var_list_ = char();
info = stoch_simul(var_list_);
f_11 = [oo_.dr.ghx oo_.dr.ghu];
vNames = M_.endo_names;
vNames_cell = cellstr(vNames);
options_.k_order_solver = 1;
options_.irf = 0;
options_.nomoments = 1;
options_.noprint = 1;
options_.order = 3;
var_list_ = char();
info = stoch_simul(var_list_);
optPruning.numSim         = 2000;                   
optPruning.seedNum        = 1; 
optPruning.orderApp       = options_.order;                                     
optPruning.computeIRF     = 1;
optPruning.ySelect     = vNames;
optPruning.plotIRF = 0;
optPruning.shockSize = +1;
outDynare = RunDynarePruning(optPruning,oo_,M_,f_11);
vNames_Andreasen = outDynare.label_y;
vEMWS_Andreasen = outDynare.Mean_y';
mIRFProp_Andreasen_z_EMAS = outDynare.IRFy(:,:,options_.order,1)'./repmat(vEMAS,IrfPeriods,1);
mIRFProp_Andreasen_Order1_z_EMAS = outDynare.IRFy(:,:,1,1)'./repmat(vEMAS,IrfPeriods,1);
mIRFProp_Andreasen_Order3_z_EMAS = outDynare.IRFy(:,:,3,1)'./repmat(vEMAS,IrfPeriods,1);
mIRFProp_Andreasen_zVol_EMAS = outDynare.IRFy(:,:,options_.order,2)'./repmat(vEMAS,IrfPeriods,1);
disp(['Run time for computation of IRFs a la Andreasen was ',num2str(toc),' seconds']);
save('Output\IRFs\IRFs_SaMOptionValue_Uniform_Spc', 'vEMAS', 'vNames', 'vNames_Andreasen', 'mIRFProp_zUncertainty_EMAS', 'mIRFProp_Andreasen_zVol_EMAS','mIRFProp_Andreasen_z_EMAS','mIRFProp_Andreasen_Order1_z_EMAS','mIRFProp_Order1_z_EMAS','mIRFProp_Andreasen_Order3_z_EMAS'); 
save('dynareSAMOptionValue_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('dynareSAMOptionValue_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('dynareSAMOptionValue_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('dynareSAMOptionValue_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('dynareSAMOptionValue_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('dynareSAMOptionValue_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('dynareSAMOptionValue_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
