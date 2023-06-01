module Iplookupapi
  class Endpoints

    attr_writer :apikey

    def initialize(options = {})
      @apikey = options[:apikey] || Iplookupapi.configuration.apikey
    end

    def status()
      @result = call_api('status?type=quota')
    end

    def info(ip, language = '')
      @result = call_api(sprintf('info?ip=%s&language=%s', ip, language))
    end

    def call_api(route)
      begin
        @response = RestClient.get "#{Iplookupapi::BASE_URL}#{route}&apikey=#{@apikey}", { 'Accept' => 'application/json' }
      rescue RestClient::ExceptionWithResponse => e
        @data = e.response
      end
    end
  end
end
