require 'singleton'
require 'addressable/uri'
require 'rest-client'

module RoutingNumbers
  class Configuration
    include Singleton

    attr_writer :secure

    def base_url
      "routingnumbers.herokuapp.com"
    end

    def protocol
      secure ? "https" : "http"
    end

    def secure
      @secure || false
    end

    def uri
      Addressable::URI.new(host: base_url, scheme: protocol)
    end

    def client
      RestClient
    end
  end
end
