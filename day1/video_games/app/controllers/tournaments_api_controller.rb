class TournamentsApiController < ApplicationController
 def index
    tournaments_array = Tournament.all
    render json: tournaments_array

  end

  def create 
  	the_tournament = Tournament.create(tournament_params)
  render status: 201, json: the_tournament

  end

  private

  def tournament_params
  	params.require(:tournament).permit(:name)
  end

end
