class ShortUrlController < ApplicationController
  def show
    short_url = ShortUrl.where(key: params[:key]).first

    if short_url
      redirect_to short_url.original_url
    else
      redirect_to root_url
    end
  end
end
