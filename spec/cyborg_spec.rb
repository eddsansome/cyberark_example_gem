# frozen_string_literal: true

RSpec.describe Cyborg do
  # this will go in the rails initializer
  Cyborg.configure do |config|
    config.username = 'edward.sansome@smartpension.co.uk'
    config.password = '<password goes here>'
    config.application_id = 'eu106'
    config.auth_url = 'https://eu.epm.cyberark.com/EPM/API/Auth/EPM/Logon'
  end

  # use this in the application business logic
  def authenticator
    Cyborg.authenticator
  end

  # here is how you use it ^^
  it 'does something useful' do
    expect(authenticator.auth_token).to eq('token')
  end
end
