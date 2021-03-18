class TheoriesController < ApplicationController
  def create
    @theory = Theory.new(theory_params)
    @theory.user = current_user
    if @theory.save
      redirect_to user_path(current_user)
    else
      render "animes/show"
    end
  end
  
  private

  def theory_params
    params.require(:theory).permit(:content)
  end
end
