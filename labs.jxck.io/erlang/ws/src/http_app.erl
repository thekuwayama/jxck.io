%%%-------------------------------------------------------------------
%% @doc http public API
%% @end
%%%-------------------------------------------------------------------

-module(http_app).

-include("logger.hrl").

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    ?Log(http_sup:start_link()).

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
