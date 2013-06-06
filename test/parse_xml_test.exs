Code.require_file "test_helper.exs", __DIR__

defmodule ParseXMLTest do
  use ExUnit.Case

  import  Weather.ParseXML ,only: [ parse_xml: 1]

  test "parse xml into list of atom key and value " do
   	 
   	 xml_parsed = parse_xml( fake_data_xml() )
   	 first_tag  = Enum.at xml_parsed , 0
   	 
   	 assert  first_tag == {:credit,"NOAA's National Weather Service"}
  end


  defp fake_data_xml() do
  	{:ok,"<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?> \r\n<?xml-stylesheet href=\"latest_ob.xsl\" type=\"text/xsl\"?>\r\n<current_observation version=\"1.0\"\r\n\t xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"\r\n\t xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n\t xsi:noNamespaceSchemaLocation=\"http://www.weather.gov/view/current_observation.xsd\">\r\n\t<credit>NOAA's National Weather Service</credit>\r\n\t<credit_URL>http://weather.gov/</credit_URL>\r\n\t<image>\r\n\t\t<url>http://weather.gov/images/xml_logo.gif</url>\r\n\t\t<title>NOAA's National Weather Service</title>"}
  end

end