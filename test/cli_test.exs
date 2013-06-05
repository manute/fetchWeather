Code.require_file "test_helper.exs", __DIR__

defmodule CliTest do
  use ExUnit.Case

  import Weather.CLI ,only: [ parse_args: 1]

  test ":help returned by option parsin with -h and --help " do
   	 assert parse_args(["-h"   	]) == :help
	 assert parse_args(["--help"]) == :help

  end

  test "matches to process the weather" do
   	 assert parse_args(["weather"]) == :weather
  end

 end 