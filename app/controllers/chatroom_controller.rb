class ChatroomController < ApplicationController

    def index
      @texts = Text.all  
    end
  
  end