# controllers/chat_controller.rb

class ChatController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @prompt = params[:prompt]
    @openai_response = OpenaiService.create_chat(@prompt) if @prompt.present?
  end
end
