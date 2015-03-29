% fixed point iteration: 

function [x] = fp( f, x1 )
	x = x1;

	for k = 1:100
		x_prev = x;

		x = f(x);

		if abs( x - x_prev ) < 1e-10
			return;
		end
	end

	throw( MException( 'MATLAB:non_convergence', ...
	                   'The fixed-point iteration did not converge' ) );
end
