class ChatsController < ApplicationController
  before_action :set_chat, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.first

  end

  def new
    set_user
    set_new_chat
  end

  def create
    @chat = Chat.new(chat_params)
    user = User.find(params[:user_id])
    @chat.user_id = user.id
    respond_to do |format|
      if @chat.save
        format.html { redirect_to root_path, notice: 'Chat was successfully created.' }
        format.json { render :show, status: :created, location: @chat }
        # format.json { render json: @chat, status: :created, location: @chat }
        # format.html { render json: @chat, notice: 'Chat was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @chat.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def delete
  end

  # def destroy
  #   @chat.destroy
  #   respond_to do |format|
  #     format.html { redirect_to chats_url, notice: 'Chat was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    def set_chat
      @chat = Chat.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def set_new_chat
      @new_chat = Chat.new
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def chat_params
      params.require(:chat).permit(:message, :user_id)
    end
end

