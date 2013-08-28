get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/urls' do
  @long_url = params[:long_url]
  erb :shorten_url_TEST
end
