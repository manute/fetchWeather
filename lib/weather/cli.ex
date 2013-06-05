defmodule Weather.CLI do
	
	@url "http://w1.weather.gov/xml/current_obs/KDTO.xml"

	def run(argv) do
		argv
		|> parse_args
		|> process
	end

	def parse_args(argv) do
		 
		 parse = OptionParser.parse(argv, switches: [ help: :boolean],
                                     	  aliases:  [ h:    :help   ])
		 case parse do

		 	{[help: true], _ } 	      -> :help
		 	{[weather], _ }     	  -> :weather 
		 	{[weather], [help: true]} -> :help
		 	_						  -> :help
		 	
		 end
	end

	def process(:help) do
		
		IO.puts """
    		Get the information for the weather in the url : #{@url}.
    		usage: weather
   	 	"""
   	 	System.halt(0)

	end

	def process(:weather) do

	end
	
end