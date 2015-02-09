class HomeController < ApplicationController

  def index
    # @user = User.new
    @user = User.first
    # @user = User.find(params[:id])
    # @chat = Chat.new
    @chats = Chat.all
    @users = User.all
    # @chats = chats.where(user_id:@user_id)
    # chats = Chat.all
  end

  def set_new_user
    @new_user = User.new
  end

  def set_new_chat
    @new_chat = Chat.new
  end

  def new
    @user = User.new
    @chat = Chat.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render "home/index" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def set_chat
      @chat = Chat.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :profile_name, :location, :photo_url, :bio)
    end

    def chat_params
      params.require(:user).permit(:user_id, :message)
    end

end
