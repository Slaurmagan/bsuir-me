class ChatroomController < ApplicationController
  before_action :require_user
  def index
    # code
    @message = Message.new
    @messages = Message.custom_display
    if ActionCable.server.connections.length > 0
      users = ActionCable.server.connections.count

    end
  end


  private

end
