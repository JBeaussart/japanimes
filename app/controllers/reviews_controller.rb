class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_path(current_user)
  end

  private

  def review_params
    params.require(:review).permit(:nickname, :description, :photo, :price_cents, :address, :punchline)
  end
end
