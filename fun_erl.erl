-module(fun_erl).
    -export([hello/0]).

    hello() ->
        receive
            {FromPID, Who} ->
                case Who of
                    john -> FromPID ! "Hello john";
                    andrew -> FromPID ! "Hello andrew";
                    daniel -> FromPID ! "Hello Daniel";
                    _-> FromPID ! "Unknown selection"
                end,
    hello()
    end.