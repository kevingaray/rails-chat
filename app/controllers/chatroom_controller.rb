class ChatroomController < ApplicationController
    before_action :require_user

    def index
      @texts = Text.all  
    end
     
end