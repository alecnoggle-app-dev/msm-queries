class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb" })
  end

  def movie_details

    @id = params.fetch("id")
    @the_movie = Movie.where({ :id => @id }).at(0)

    render({ :template => "movie_templates/details.html.erb" })
  end

end