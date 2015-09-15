class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

  def create
    @url = Url.create(url_params)
    if @url.save
      redirect_to new_url_note_path(@url)
    else
      render "new"
    end
  end

private

 def url_params
    params.require(:url).permit(:name, :private, :password)
  end

end
