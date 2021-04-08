class SessionsController < ApplicationController

    def new
        @user = User.new
    end
    
    def create
        # byebug
        @user = User.find_by_email(params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
          session[:user_id] = @user.id
          redirect_to @user
        else
          #set error message with flash
          @user = nil
          render :new
        end
    end
    
    def destroy
        session.clear
        redirect_to "/login"
    end

    def omniauth
      # byebug
      @user = User.find_or_create_by(uid: auth["uid"]) do |u|
          u.name = auth['info']['name']
          u.email = auth['info']['email']
          u.username =  auth['info']['email']
          u.password = SecureRandom.hex(20)
          u.image = auth['info']['image']
          u.cvo = true
      end

      

      session[:user_id] = @user.id
      # byebug
      redirect_to user_path(@user)
    end

    def destroy
      session.clear
      redirect_to "/login"
    end
  
    private
  
    def auth
      request.env['omniauth.auth']
    end

    
end
