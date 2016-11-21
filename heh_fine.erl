-module(heh_fine).
-compile(export_all).

fine() ->
 if 1=:=1 ->
    works
 end,
 if 1 =:= 2; 1=:=1 ->
    works
 end,
 if 1=:=2, 1=:=1 ->
    fails
 end.

oh_god(N) ->
 if N=:=2 ->
    might_success;
 true ->
    always_does
 end.