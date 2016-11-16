-module(sample).
    -export([hello_world/0]).
    hello_world() -> io:fwrite("hello world \n"),
    X=2,
    X,
    3+X.