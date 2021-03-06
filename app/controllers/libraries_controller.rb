class LibrariesController < ApplicationController
  def index
    libraries = current_user.libraries

    if params[:game_id]
      libraries = current_user.libraries.find_by(game_id: params[:game_id])
    end

    if stale?(libraries)
      render json: libraries
    end
  end

  def show
    library = current_user.libraries.find_by(id: params[:id])
    if stale?(library)
      render json: library
    end
  end

  def create
    library = Library.new(
      user_id: current_user.id,
      game_id: params[:game_id],
      rating: params[:rating],
      progress: params[:progress],
      review: params[:review],
      note: params[:note],
      title: params[:title],
      image: params[:image],
    )
    if library.save
      render json: library
    else
      render json: { errors: library.errors.full_messages }, status: :bad_request
    end
  end

  def update
    library = current_user.libraries.find_by(id: params[:id])
    library.game_id = params[:game_id] || library.game_id
    library.rating = params[:rating] || library.rating
    library.progress = params[:progress] || library.progress
    library.review = params[:review] || library.review
    library.note = params[:note] || library.note
    if library.save
      render json: library
    else
      render json: { errors: library.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    library = current_user.libraries.find_by(id: params[:id])
    library.destroy
    render json: { message: "Game removed from library!" }
  end
end
