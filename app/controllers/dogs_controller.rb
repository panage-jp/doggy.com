class DogsController < ApplicationController
  def create
    dog = Dog.new(dog_params)
    dog.save
    if dog.save
      redirect_to user_path(current_user.id)
    else
      redirect_to root_path
    end
  end

  def destroy
    dog = Dog.find(params[:id])
    unless current_user && dog.user.id == current_user.id
      redirect_to root_path
    else

      dog.destroy
      redirect_to user_path(current_user.id)
    end
  end


  private

  def dog_params
    dog_params_result=params.require(:dog).permit(:name,:avatar,:profile,:type).merge(user_id: current_user.id)
    return dog_params_result
  end
end
