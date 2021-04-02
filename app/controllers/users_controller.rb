class UsersController < ApplicationController
    
    def new
        render :layout => false
        @user = User.new
    end
    
    def create
        @user = User.create(user_params)
        if @user.id
          session[:user_id] = @user.id
          redirect_to @user
        else
          render :new
        end
    end
    
    def show
     
        @user = User.find(session[:user_id])
    end

    def edit
    end

    def update
        @user.update(user_params)
        if @user.valid?
            redirect_to @user
        else
            render :edit
        end
    end

    def destroy
    end
    
    private
    
    def user_params
        params.require(:user).permit(:username, :email, :password, :dob, :name, :admin)
    end
end
