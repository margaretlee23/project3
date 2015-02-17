class FavoritesController < ApplicationController

   def create
        # new_list = params.require(:list).permit(:title, :user_id)
        # @list = @user.lists.create(new_list)
        Favorite.create(name:params[:name], address:params[:address], list_id:params[:list_id])
        respond_to do |format|
            # format.html { redirect_to "/users/#{@user.id}/lists/#{@list.id}" }
            format.html { render json: @favorite }
            format.json { render json: @favorite }
        end
    end

    private

        def get_user
            if params[:user_id]
                user_id = params[:user_id]
                @user = User.find(user_id)
        end
      end

end