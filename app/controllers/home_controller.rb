class HomeController < ApplicationController

  def index
    @user = User.first
    @chat = Chat.new
    @chats = Chat.all
  end

end
