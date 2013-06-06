defmodule Weather.ParseXML do
	
	def parse_xml(xml) do 
	  	
	  	{ _ ,body_xml} = xml
	  		  	
	  	Regex.scan(%r/<.*?>.*?<\/.*?>/,body_xml)
	  	|> split_string_list
   end

   defp split_string_list(xml_tags) do 
   		Enum.map xml_tags , split_tag(&1)
   end

   defp split_tag(tag) do
   		splitted_tag = String.split tag,[">","<"]
   		{:'#{Enum.at(splitted_tag , 1)}', Enum.at(splitted_tag,2)}
    end

end	