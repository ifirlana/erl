-module(useless).
%-export([add/2, hello/0, greet_and_add_two/1, greet/2]).%
-compile(export_all).

add(A,B) ->
 A+B.

hello() ->
    io:format("Hello world!\n"),
    io:format("BOOM\n").

greet_and_add_two(X) ->
    hello(),
    add(X,2).

greet(male, Name) ->
    io:format("Hello mr. ~s \n",[Name]);
greet(female, Name)->
    io:format("Hello ms. ~s \n", [Name]);
greet(_, Name)->
    io:format("Excuse me, who are you ~s ?",[Name]).

valid_time({Date = {Y, M, D}, Time = {H, Min, S}}) ->
    io:format("The Date tuple (~p) says today is : ~p,~p,~p,~n",[Date, Y, M, D]),
    io:format("The time tuple (~p) says today is : ~p,~p,~p,~n",[Time, H, Min, S]);
valid_time(_) ->
    io:format("Sorry you stupid.").

old_enough(X) when X > 16, X < 50 ->
    true;
old_enough(_) ->
    false.