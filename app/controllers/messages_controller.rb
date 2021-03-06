class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @messages = Message.all
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    else
      @error = @message.errors.full_messages.first
      render action: 'index'
    end
  end

  private

  def message_params
    params.require(:message).permit(:text, :username)
  end
end
