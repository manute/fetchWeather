Code.require_file "test_helper.exs", __DIR__

defmodule WeatherTest do
  use ExUnit.Case

  test "curl the xml file from the url http://w1.weather.gov/xml/current_obs/KDTO.xml" do
   	 assert(true)
  end
end
