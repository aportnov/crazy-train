%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc TEMPLATE.

-module(colony).
-author('author <author@example.com>').
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.

%% @spec start() -> ok
%% @doc Start the colony server.
start() ->
    colony_deps:ensure(),
    ensure_started(crypto),
    application:start(colony).

%% @spec stop() -> ok
%% @doc Stop the colony server.
stop() ->
    Res = application:stop(colony),
    application:stop(crypto),
    Res.
