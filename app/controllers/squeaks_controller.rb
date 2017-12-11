class SqueaksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_squeak, only: [:edit, :update, :show, :destroy]
  
  
  def index
    @squeaks = Squeak.all
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

  def update
    if @squeak.update(squeak_params)
      redirect_to @squeak, notice: 'You updated your squeak successfully.'
    else
      flash.now[:alert] = 'Something messed up. Try again.'
      render :edit
    end
  end

  def show
  end
  
  private
  
  def squeak_params
    params.require(:squeak).permit(:message, :user_id)
  end
  
  def set_squeak
    @squeak = Squeak.find(params[:id])
  end

end
