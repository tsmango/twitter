class Twitter
  API_VERSION = "1"
  API_URL     = "http://api.twitter.com/#{API_VERSION}/"
  
  # Performs a GET request and parses the returned json.
  # 
  # @param [String] path
  #   Path of the API method the request should be made to.
  # @param [Hash] params
  #   Parameters that should be appended to the query string.
  # 
  # @return [Hash] the parsed json returned by the GET request.
  def self.get(path, params = {})
    JSON.parse(RestClient.get(API_URL + path + '.json?' + params.to_params))
  end
end