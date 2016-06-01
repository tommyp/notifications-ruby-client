class NotifyRubyClient::Email

  def send_email(to, template, personalisation=nil)

    uri = URI.parse(@baseURL + "/notifications/email")
    headers = {
             "Content-type" => "application/json",
             "Authorization" => "Bearer " + create_api_token,
             "User-agent" => "NOTIFY-API-RUBY-CLIENT"
             }

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(uri.request_uri, headers)

    form_data = {to: to, template: template}
    form_data.merge!(personalisation: personalisation) if personalisation
    request.set_form_data(form_data)

    # if !personalisation.nil?
    # 	request.set_form_data({
    # 		to: to,
    # 		template: template,
    # 		personalisation: personalisation,
    # 	})
    # else
    # 	request.set_form_data({
    # 		to: to,
    # 		template: template,
    # 	})
    # end

    response = http.request(request, headers)

    puts response.code
    puts response.body
  end

end
