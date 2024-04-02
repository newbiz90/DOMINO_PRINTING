# controllers/chat_controller.rb

class ChatController < ApplicationController
  def create
    prompt = params[:prompt]
    response = OpenaiService.create_chat(prompt)
    render json: response['choices'][0]['text']
  end
end
