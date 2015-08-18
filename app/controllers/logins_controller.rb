class LoginsController < ApplicationController
 
  def new
    
  end
  
  def create
    chef = Chef.find_by(email: params[:email])
    if chef && chef.authenticate(params[:password])
      session[:chef_id] = chef.id
      redirect_to recipes_path
    else
      flash.now[:danger] = "Uh oh! Your email address or password does not match." 
      render 'new'
    end
  end
  
  def destroy
    session[:chef_id] = nil
    redirect_to root_path
  end
end