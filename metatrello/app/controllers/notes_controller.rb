class NotesController < ApplicationController

  def new
    @url = Url.find(params[:url_id])
    @note = Note.new
  end

  def create
    @note = Note.create(notes_params)
    if @note.save
      redirect_to url_notes_path(@note)
    else
      render new_url_note_path(@note.url_id)
    end

  end

  private

  def notes_params
    params.require(:note).permit(:url_id, :title, :body)
  end


end
