class ReceiveController < ApplicationController
  def show
    #require_relative 'rest-client'
    #require 'json'
    token = "a2e401e2dc7aa172df1b466597edcb8b"
    headers = {Authorization: "Bearer #{token}"}

    base_url = 'https://api.23andme.com/authorize/?redirect_uri=http://localhost:3000/receive_code/&response_type=code&client_id=a2e401e2dc7aa172df1b466597edcb8b&scope=basic rs123'

    response = RestClient.get base_url, headers=headers
    data = JSON.load response

    puts data

  end
  def store_to_database

  end
end
