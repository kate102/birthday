require 'sinatra'

set :session_secret, 'super secret'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    'Happy Birthday!'
    erb :index
  end

  run! if app_file == $0

end
