class ReviewsController < ApplicationController

    def index
        review = Review.all
        render json: Review, status: :ok
    end

    def show
    review = Review.find_by(id: params[:id])
    if user
        render json: review, status: :ok
    else
        render json: {error: "review not found"}, status: :not_found
    end
  end

  def create
    review = Review.create(review_params)
    if review.valid?
        render json: review, status: :created
    else
        render json: {error: "Invalid name or password"}, status: :unprocessable_entity
    end
  end

  def destroy
     review = Review.find(params[:id])
        review.destroy
        head :no_content
  end

  private

  def review_params
    params.permit(:description, :ratings)
  end
end
