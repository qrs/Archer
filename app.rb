require 'json'

module Web
  class App < Sinatra::Base
    get '/' do
      erb :home
    end
    not_found do
			erb :not_found
		end
  end
end
