class ApiController < ApplicationController
  def api
    # These gems make calling the API a piece of cake
    require 'rest-client'
    require 'json'

    # This is the base URL -- we'll add endpoints to it for specific data
    base_url = "https://api.23andme.com/1/demo"
    # This is the demo token, that gives you access to simulated data
    token = "fdab6a6892b198e40c2484bf2121f761"

    class _____
    	attr_accessor :id, :first_name, :last_name
    end

    # Instantiate a new Person:
    person = Person.new

    # Get the data from the /names/ endpoint,
    # using the authentication headers
    response = RestClient.get base_url + "/names/", headers=headers

    # Use JSON.load to put the response into the data variable:
    data = JSON.load response

    profiles = data["profiles"]

  end
  def post
  end
  def put
  end
  def get
  end
  def delete
  end
  def receive_code
  end
end
