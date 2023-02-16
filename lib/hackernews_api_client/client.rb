module HackernewsApiClient
  class Client
    include HackernewsApiClient::Faraday::Connection
    include HackernewsApiClient::Faraday::Request
  end
end
