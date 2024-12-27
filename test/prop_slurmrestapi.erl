-module(prop_slurmrestapi).

-export([prop_test/0]).

prop_test() ->
  {ok, _} = application:ensure_all_started(slurmrestapi),
  slurmrestapi_statem:prop_main().
