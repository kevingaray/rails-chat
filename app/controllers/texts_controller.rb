class TextsController < ApplicationController
  before_action :require_user

  def create
    text = current_user.texts.build(text_params)
    if text.save
      ActionCable.server.broadcast "chatroom_channel", {mod_message: message_render(text)}
    end
  end

  private

  def text_params
    params.require(:text).permit(:body)
  end

  def message_render(text)
    render(partial: 'text', locals: {text: text})
  end
  
end