class GamesController < ApplicationController
  def index
    response = HTTP.get("https://api.rawg.io/api/games?key=#{Rails.application.credentials.rawg.api_key}")

    if params[:search]
      response = HTTP.get("https://api.rawg.io/api/games?key=#{Rails.application.credentials.rawg.api_key}&search=#{params[:search]}")
    end
    render json: response.parse(:json)
  end

  def show
    response = HTTP.get("https://api.rawg.io/api/games/#{params[:id]}?key=#{Rails.application.credentials.rawg.api_key}")
    render json: response.parse(:json)
  end
end
