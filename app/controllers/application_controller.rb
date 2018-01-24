class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def store_to_database
  end
end
