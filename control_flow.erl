-module(control_flow).
    -export([controlFlow/0]).

    controlFlow() ->
        receive
            {FromPID,Who} ->
                case Who of
                    john -> FromPID ! "Hello John.";c
                    andrew -> FromPID ! "Hello Andrew.";
                    daniel -> FromPID ! "Hello Daniel.";
                    _->FromPID ! "Unknown Selectetion"
            end,
        controlFlow()
    end.