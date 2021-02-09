class UsersController < ApplicationController

  def edit

  end

  def update
    user = User.find(params[:id])
    jud = user.update(user_params)

    if jud then
      redirect_to "/"
    else
      render :edit
    end


  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
