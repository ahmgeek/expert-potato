class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.user = current_user

    if @message.save
      ActionCable.server.broadcast 'messages',
                                   message: @message,
                                   user: @message.user.username,
                                   time: @message.created_at.strftime("at %I:%M%p ")
      head :ok
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :hall_id)
  end
end
