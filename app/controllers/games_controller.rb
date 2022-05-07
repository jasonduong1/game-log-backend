class GamesController < ApplicationController
  def index
    response = HTTP.get("https://api.rawg.io/api/games?key=#{Rails.application.credentials.rawg.api_key}")

    if params[:search]
      response = HTTP.get("https://api.rawg.io/api/games?key=#{Rails.application.credentials.rawg.api_key}&search=#{params[:search]}")
    end
    expires_in 24.hours
    render json: response.parse(:json)
  end

  def show
    response = HTTP.get("https://api.rawg.io/api/games/#{params[:id]}?key=#{Rails.application.credentials.rawg.api_key}")
    expires_in 24.hours
    render json: response.parse(:json)
  end
end
