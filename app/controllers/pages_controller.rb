class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  end
  def login
    render template: "pages/login"
  end
  def purchase
    render template: "pages/purchase"
  end
end
