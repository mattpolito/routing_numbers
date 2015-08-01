require 'oj'
require 'routing_numbers/configuration'
require 'routing_numbers/response'

module RoutingNumbers
  def self.configure
    yield(self) if block_given?
  end

  def self.configuration
    Configuration.instance
  end

  def self.find(routing_number)
    uri              = configuration.uri
    uri.path         = 'api/data.json'
    uri.query_values = { rn: routing_number.to_s }
    api_response     = configuration.client.get(uri.to_s)
    data             = Oj.load(api_response)

    Response.new.tap do |r|
      r.address        = data["address"]
      r.city           = data["city"]
      r.name           = data["customer_name"]
      r.routing_number = data["rn"]
      r.state          = data["state"]
      r.telephone      = data["telephone"]
      r.zip            = data["zip"]
      r.message        = data["message"]
    end
  end
end
