-module(brot).
-export([mandelbrot/2]).


mandelbrot(C, M) ->
  Z0 = cmplx:new(0, 0),
  I = 0,
  test(I, Z0, C, M).


% Test if maximal number of iterations has been reached.
test(I, _, _, I)->
	0;
test(I, Z0, C, M) ->
  ZAbs = cmplx:abs(Z0),
  if ZAbs > 2.0 ->
      I;
    true ->
      Z1 = cmplx:add(C,cmplx:sqr(Z0)),
      test(I + 1, Z1, C, M)
end.