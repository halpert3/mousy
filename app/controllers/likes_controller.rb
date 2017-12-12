class LikesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_squeak
    
    def create
        @squeak.likes.where(user_id: current_user.id).first_or_create
        
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
        @squeak.likes.where(user_id: current_user.id).destroy_all
        redirect_back(fallback_location: root_path)
    end
    
    
    private 
    
    def set_squeak
    @squeak = Squeak.find(params[:squeak_id])
    end
    
end
