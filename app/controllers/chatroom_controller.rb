class ChatroomController < ApplicationController

    def index
      @messages = Text.all  
    end
  
  end