
-module(cmplx).
-compile(export_all).

%% Create a new complex-number of the form A + Bi
new(X, Y) ->
  {X, Y}.

% Add two complex numbers: (A + Bi) + (C + Di) = (A + C) + (Bi + Di)
add({A, B}, {C, D}) ->
  {A + C, B + D}.

% Square a complex number: (A + Bi)² = (A² - (B)²) + 2A(Bi)
sqr({A, B}) ->
  {(A * A) - (B * B), 2 * A * B}.

% Absolute value of a complex number: |A + Bi| = √(A² + B²)
abs({A, B}) ->
math:sqrt(A * A + B * B).
