function [Y] = newtonpoly( x, y )
	[m n] = size( x );

	if ( m ~= 1 && n ~= 1 )
		throw( MException( 'MATLAB:invalid_argument', ...
		                   'The arguments must be vectors' ) );
	end

	if ( ~all( size( y ) == size( x ) ) )
		throw( MException( 'MATLAB:invalid_argument', ...
		                   'The vectors ''x'' and ''y'' must have the same dimensions' ) );
	end
