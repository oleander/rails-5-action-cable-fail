class PagesController < ApplicationController
  def index
    @movies = Movie.limit(2)
  end
end
