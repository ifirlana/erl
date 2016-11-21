-module(what_if).
-compile(export_all).

help_me(Animal) ->
    if Animal == cat ->
        Talk = "Meow";
       Animal == dog ->
        Talk = "GUk guk";
       Animal == snake ->
        Talk = "Seesss";
       true ->
        Talk = "Whatever"
    end,
    {Animal, "Says "++Talk++"!"}.

beach(Temperature) ->
    case Temperature of
        {celsius, N} when N >= 20, N =< 45 ->
            'favorable';
        {kelvin, N} when N >= 293, N =< 318 ->
            'scientifically favorablable';
        {fahrenheit, N} when N >= 68, N =< 113 ->
            'favorable in the Indonesia';
        _->
            'just f*ck off'
    end.