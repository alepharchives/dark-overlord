%%% @author Andreas Pauley <>
%%% Created :  7 Feb 2013 by Andreas Pauley <>

-module(overlord).

-export([start/0,
         stop/0,
         restart/0,
         minion_info/0,
         minion_crash/0,
         minion_exit/1,
         sing/0]).

start() ->
  application:start(overlord).

stop() ->
  application:stop(overlord).

restart() ->
  stop(),
  start().

minion_info() ->
  hypnosponge:minion_info().

minion_crash() ->
  hypnosponge:minion_crash().

minion_exit(Reason) ->
  hypnosponge:minion_exit(Reason).

sing() ->
  hypnosponge:sing().