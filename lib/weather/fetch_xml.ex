defmodule Weather.FetchXML do
	
	alias HTTPotion.Response

	@url "http://w1.weather.gov/xml/current_obs/KDTO.xml"

	def fetch do
		
		HTTPotion.start

		case HTTPotion.get( @url ) do

			Response[status_code: status , body: body, headers: _ ] when status in 200..299 -> { :ok, body } 	  
     		Response[status_code: _ 	 , body: body, headers: _ ] -> { :error, body }
    
		end
	end

end