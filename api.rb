require 'sinatra'

class API < Sinatra::Base

  get '/sass_css/:name.css' do
    content_type 'text/css', :charset => 'utf-8'
    scss(:"/stylesheets/#{params[:name]}")
  end

  get '/swipe' do
    erb :swipe_view
  end

  get '/list' do
    erb :list_view
  end

end
