class ChatroomController < ApplicationController

  def index
    # code
    @messages = Message.all
  end
end
