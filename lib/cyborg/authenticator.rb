# frozen_string_literal: true

require 'httparty'
module Cyborg
  class Authenticator
    include HTTParty

    def initialize
      self.class.base_uri(Cyborg.configuration.auth_url)
      @username = Cyborg.configuration.username
      @password = Cyborg.configuration.password
      @application_id = Cyborg.configuration.application_id
    end

    def auth_token
      response = self.class.post('/',
                                 body: { Username: @username, Password: @password,
                                         ApplicationID: @application_id }.to_json)
      # return the token
      if response.ok?
        response['EPMAuthenticationResult']
      else
        raise 'ERROR'
      end
    end
  end
end
