class HomeController < ApplicationController
  def index
  end

  def create
    @short_url = ShortUrl.create(original_url: params[:url])

    render "index"
  end
end
