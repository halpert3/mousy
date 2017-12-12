class RelationshipsController < ApplicationController
    def create
        @relationship = current_user.relationships.build(friend_id: params[:friend_id])
        @friend = User.find(params[:friend_id])
        
        if @relationship.save
            flash[:notice] = "You've added #{@friend.username} to your nest."
            redirect_to profile_path(params[:friend_id])
        else
            flash[:notice] = "Something went wrong. Try again."
            redirect_to profile_path(params[:friend_id])
        end
    end
    
    private
    
    def relationship_params #whitelist
        params.require(:relationship).permit(:user_id, :friend_id)
    
    end

end
