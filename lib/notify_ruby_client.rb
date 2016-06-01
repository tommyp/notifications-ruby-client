require "net/https"
require "uri"
require "jwt"
require "time"
require "json"
require "rspec"

class NotifyRubyClient
	def initialize (base_url:, service_id:, secret:)
		@baseURL = baseURL
		@service_id = service_id
		@secret = secret
	end

	def create_api_token
		exp = Time.now.to_i + 4 * 3600
		exp_payload =  {:iss => @service_id, :iat => Time.now.to_i}

    JWT.encode(exp_payload, @secret, 'HS256')
	end

end
