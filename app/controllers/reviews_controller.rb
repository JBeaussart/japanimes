class ReviewsController < ApplicationController
  before_action :find_review, only: [ :update, :destroy ]

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
    @review.update(review_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @review.destroy
    redirect_to user_path(current_user)
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end