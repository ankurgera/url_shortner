class UrlsController < ApplicationController

  def show
  	@url = Url.find_or_create_by(original_url: url_params[:url])
    @short_url = @url.short_url if(@url.valid?)
  end

  private

  def url_params
  	params.permit(:url)
  end
end
