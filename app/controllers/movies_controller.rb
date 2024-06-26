class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render :new, status: :unprocessable_entity
    end

  end
  def show
    id = params[:id]
    @movie = Movie.find(id)
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_path, status: :see_other
  end

  private
    def movie_params
      params.require(:movie).permit(:titulo, :classificacao, :descricao, :dataLancamento)
    end
end
