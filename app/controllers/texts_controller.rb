class TextsController < ApplicationController
  before_action :require_user

  def create
    text = current_user.texts.build(text_params)
    if text.save
      redirect_to root_path
    end
  end

  private

  def text_params
    params.require(:text).permit(:body)
  end

end