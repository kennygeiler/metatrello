class UrlsController < ApplicationController

  def new
  end

  def create
    @url = Url.create(params[:url])
    if @url.save
      redirect_to @url
    else
      render "new"
    end
  end


end
