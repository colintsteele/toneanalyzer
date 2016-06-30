class Analysis < ApplicationRecord

  def self.test
    @text = %q^ “Chewing gum has absolutely no nutritional value so most health professionals would advise against swallowing it,” says Ganjhu. Besides that, the whole point of gum is to chew it until the flavor is gone and then spit it out. “Gum won’t harm or kill you but it just isn’t logical to swallow it purposefully,” says Ganjhu. ^

    url = "https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone"
    uri = URI(url)

    myparams = {:version => '2016-05-19', :tones => 'emotion'}
    uri.query = URI.encode_www_form(myparams)

    request = Net::HTTP::Post.new(uri)
    request.body = {text:params['test_text'].to_s}.to_json
    request['Content-Type'] = 'application/json'
    request.basic_auth '490d8f82-63d1-404d-a517-f6319fc1c61e', '8IMTnbkRLla4'

    res = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true) do |http|
      http.request(request)
    end

    @response = res.body
  end
end
