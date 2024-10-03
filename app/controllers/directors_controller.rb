class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end
end