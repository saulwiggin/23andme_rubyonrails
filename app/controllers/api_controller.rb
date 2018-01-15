class ApiController < ApplicationController
  def get
    require 'rest-client'
    require 'json'

    base_url = "https://api.23andme.com/3/accession/"

    token = "a2e401e2dc7aa172df1b466597edcb8b"

    class _____
    	attr_accessor :id, :first_name, :last_name
    end

    person = Person.new

    # Get the data from the /names/ endpoint,
    # using the authentication headers
    response = RestClient.get base_url , headers=headers

    # Use JSON.load to put the response into the data variable:
    data = JSON.load response

    accesson_data = data["profiles"]

    puts accesson_data

  end
  def get_chromosome
    require 'net/http'

    uri = URI.parse("https://api.23andme.com/3/accession/?chromosome=1")

    # Shortcut
    #response = Net::HTTP.post_form(uri, {"user[name]" => "testusername", "user[email]" => "testemail@yahoo.com"})

    # Full control
    http = Net::HTTP.new(uri.host, uri.port)

    request = Net::HTTP::Post.new(uri.request_uri)
    request.set_form_data({"user[name]" => "testusername", "user[email]" => "testemail@yahoo.com"})

    response = http.request(request)
    render :json => response.body
  end
  def post
  end
  def put
  end
  def delete
  end
  def receive_code
  end
  def txtDNAupload
    uploaded_file = params[:file]
    file_content = uploaded_file.read
    puts file_content
  end
end
