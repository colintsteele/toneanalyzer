require 'net/http'
require 'json'
require '~/.api/keys'

class ToneService

  def initialize(text, params = {version: '2016-05-1', tones: 'emotion'})
    @text = text
    @uri = URI("https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone")
    @params = params
    @headers = 'application/json'

  end

  def get
    @uri.query = URI.encode_www_form(@params)
    request = Net::HTTP::Post.new(@uri)
    request.body = {text:@text.to_s}.to_json
    request['Content-Type'] = @headers
    request.basic_auth '490d8f82-63d1-404d-a517-f6319fc1c61e', '8IMTnbkRLla4'

    res = Net::HTTP.start(@uri.hostname, @uri.port, :use_ssl => true) do |http|
      http.request(request)
    end
    @response = res
  end

end