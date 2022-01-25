class BookmarksController < ApplicationController
  # nested
  def index
    @bookmarks = Bookmark.all
  end


  def new
    @list = List.find params[:list_id]
    @bookmark = Bookmark.new
    @movies = Movie.all
    @lists = List.all
  end

  def create
    @list = List.find params[:list_id]
    @bookmark = Bookmark.create(strong_params)
    @bookmark.list = @list
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:bookmark).permit(:comment)
  end

end
