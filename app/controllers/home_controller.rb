class HomeController < ApplicationController
protect_from_forgery with: :exception

  def index
    @user = User.first
    @chats = Chat.all.order("created_at DESC")
    @users = User.all
  end



  # def set_new_user
  #   @new_user = User.new
  # end

  # def set_new_chat
  #   @new_chat = Chat.new
  # end

  def new
    @user = User.new
    @chat = Chat.new
  end

  def post_chat
    @chat = Chat.new(chat_params)
    user = User.find(params[:user_id])
    @chat.user_id = user.id
    respond_to do |format|
      if @chat.save
        format.html { redirect_to root_path, notice: 'Chat was successfully created.' }
        format.json { render json: @chat.as_json, status: :created, location: @chat }
      else
        format.html { render :new }
        format.json { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { render chats_index_path, notice: 'User was successfully created.' }
        # format.html { render root_path, notice: 'User was successfully created.' }
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
