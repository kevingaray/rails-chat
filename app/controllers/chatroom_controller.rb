class ChatroomController < ApplicationController
    before_action :require_user

    def index
      @text = Text.new
      @texts = Text.custom_display  
    end
     
end