require 'net/http'

class ProxyController < ApplicationController
  def index
    url = URI.parse('http://192.168.1.112:8080' + request.fullpath)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = false  # You're making an HTTP request here
    request = Net::HTTP::Get.new(url.request_uri)

    response = http.request(request)

    render plain: response.body, status: response.code
  end
end
