# frozen_string_literal: true

module Cyborg
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end

    def client
      @client ||= Cyborg::Client.new
    end

    def authenticator
      @authenticator ||= Cyborg::Authenticator.new
    end
  end
end

require 'cyborg/configuration'
require 'cyborg/client'
require 'cyborg/authenticator'
require 'httparty'
