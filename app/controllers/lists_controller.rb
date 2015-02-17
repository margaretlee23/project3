class ListsController < ApplicationController
  before_action :get_user

    def index
        @lists = List.all
     
        respond_to do |format|
            format.html
            format.json { render json: @lists }
        end
    end

    def create
        # new_list = params.require(:list).permit(:title, :user_id)
        # @list = @user.lists.create(new_list)
        @list = List.create(title:params[:title], user_id:params[:user_id])
        respond_to do |format|
            # format.html { redirect_to "/users/#{@user.id}/lists/#{@list.id}" }
            format.json { render json: @list }
        end
    end

    def show
        @list = List.find(params[:id])
        @favorites = @list.favorites
    end


      def edit
            id = params[:id]
            @list = List.find(id)
            render :edit
    end

    def destroy
        id = params[:id]
        list = List.find(id)
        list.destroy
        
        respond_to do |format|
            format.html { redirect_to lists_path }
            format.json { render json: @list }
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