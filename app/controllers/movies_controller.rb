class MoviesController < ApplicationController
  before_action :find_movie, only: [:show]

  def index; end

  def show; end

  private

  def movie_params
    param.require(:movie).permit(:title)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
