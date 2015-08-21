require "savon"

client = Savon.client(
	:wsdl => "https://api.mindbodyonline.com/0_5/ClassService.asmx?WSDL"
	)


