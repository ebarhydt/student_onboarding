class Opportunity < ActiveRecord::Base

	def self.fetch
		params = {client_id: '3MVG9_7ddP9KqTzerAYZGJoyUKNbfdOrrvKj3GyKiHylZI7An_w1CiIN1yfSMs2NYbninb1OdXU9y9r.iudul', redirect_uri: 'http://162.243.17.7:8443/RestTest/oauth/_callback', grant_type: 'password', response_type:'code', username:'gaguest@generalassemb.ly.rrv2',password:'GASFguest123',client_secret:'6475402443743669100'}
		response = RestClient.post 'https://test.salesforce.com/services/oauth2/token', params
		xml_doc = Nokogiri::XML(response)
		access_token = xml_doc.xpath(“//access_token”).text
		opportunities = RestClient.get 'https://cs10.salesforce.com/services/data/v35.0/query?q=SELECT+name+from+Opportunity', Authorization: 'Bearer ' + access_token
		xml_opps = Nokogiri::XML(xml_opps)
		opps_urls = []
		xml_opps.elements.each do |element|
			opps_urls << element.xpath("//records").attr("url")
		end
	end
end
