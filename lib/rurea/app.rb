module Rurea
  class App < Sinatra::Base
    before do
      content_type :json
    end

    not_found do
      content_type :json
      { :status => 400, :result => "Bad Request: query error." }.to_json
    end

    get '/:version/:word' do
      response_to_json Rurema.search(params[:version], params[:word])
    end

    get '/:version/:word/:num' do
      response_to_json Rurema.search(params[:version], params[:word], params[:num])
    end

    def response_to_json(res)
      { :status => res[0], :result => res[1] }.to_json
    end
  end
end
