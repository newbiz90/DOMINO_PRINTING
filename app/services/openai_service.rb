# services/openai_service.rb

class OpenaiService
  include HTTParty
  base_uri 'https://api.openai.com/v1'
  headers 'Content-Type' => 'application/json'
  headers 'Authorization' => "Bearer #{ENV['OPENAI_API_KEY']}"

  def self.create_chat(prompt)
    response = post('/completions', body: { prompt: prompt, model: 'text-davinci-003' }.to_json)
    JSON.parse(response.body)
  end
end
