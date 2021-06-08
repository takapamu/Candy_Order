class Admin::GenresController < ApplicationController
  
  def index
    @genre = Genre.new
    @genres = Genre.all
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end
  
  def create
    @genre = Genre.new(genre_params)
     if @genre.save
        redirect_to request.referer, success: "作成しました"
     else
        @genres = Genre.all
        flash.now[:danger] = '作成に失敗しました。'
        render 'index'
     end
  end
  
  def update
     @genre = Genre.find(params[:id])
     if @genre.update(genre_params)
       redirect_to  admin_genres_path
     else
       render 'edit'
     end
  end
  
private
  
  def genre_params
    params.require(:genre).permit(:name)
  end
  
end
