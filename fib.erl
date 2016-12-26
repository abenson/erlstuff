-module(fib).
-export([fib/1]).


fib(N) ->
	io:fwrite("0, 1, "),
	fibn(N, 1, 0).

fibn(N, X, Y) when N > 0 ->
	io:fwrite("~B, ", [X + Y]),
	fibn(N - 1, X + Y, X);
fibn(_, X, Y) ->
	io:fwrite("~B~n", [X + Y]).
