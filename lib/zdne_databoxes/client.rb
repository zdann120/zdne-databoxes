require 'faraday'
require 'faraday_middleware'
module ZdneDataboxes
  class Client
    def initialize(box_id)
      @box_id = box_id
      @conn = Faraday.new(url: 'https://data.zchry.cc/api/v1') do |f|
        f.response :logger
        f.adapter  Faraday.default_adapter
        f.response :json, :content_type => /\bjson$/
      end
    end

    def create(identifier, payload)
      url = "boxes/#{@box_id}/data"
      @conn.post do |req|
                  req.url url
                  req.headers['Content-Type'] = 'application/json'
                  req.body = { identifier: identifier, payload: payload }.to_json
      end.body
    end

    def show(identifier)
      @conn.get("boxes/#{@box_id}/data/#{identifier}").body
    end

    def delete(identifier)
      @conn.delete "boxes/#{@box_id}/data/#{identifier}"
    end
  end
end
