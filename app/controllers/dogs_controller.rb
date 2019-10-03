class DogsController < ApplicationController
  def create
    binding.pry
    dog = Dog.new(dog_params)
    dog.save
    if dog.save
      redirect_to posts_path
    else
      redirect_to root_path
    end
  end

  private

  def dog_params
    dog_params_result=params.require(:dog).permit(:name,:avatar,:profile,:type).merge(user_id: current_user.id)
    # unless dog_params_result[:avatar]
    #   dog_params_result[:avatar] = File.read("app/assets/images/dog.jpeg")
    # end
    return dog_params_result
  end
end
