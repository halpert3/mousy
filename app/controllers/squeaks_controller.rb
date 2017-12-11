class SqueaksController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def new #just puts up the form
    @squeak = Squeak.new
  end

  def create  
    @squeak = Squeak.new(squeak_params)
    
    if @squeak.save
      redirect_to @squeak, notice: "You squeaked!"
    else
      render :new #if squeak doesn't save, let's them try again. Goes back to 'new' method
    end
    
  end
  
  def edit
  end

  def show
    @squeak = Squeak.find(params[:id])
  end
  
  private
  
  def squeak_params
    params.require(:squeak).permit(:message, :user_id)
  end

end
