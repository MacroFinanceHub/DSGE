function [residual, g1, g2, g3] = dynamic_resid_g1_g2_g3(T, y, x, params, steady_state, it_, T_flag)
% function [residual, g1, g2, g3] = dynamic_resid_g1_g2_g3(T, y, x, params, steady_state, it_, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = mscale_dsge_baseline.dynamic_g3_tt(T, y, x, params, steady_state, it_);
    end
    [residual, g1, g2] = mscale_dsge_baseline.dynamic_resid_g1_g2(T, y, x, params, steady_state, it_, false);
    g3       = mscale_dsge_baseline.dynamic_g3(T, y, x, params, steady_state, it_, false);

end
