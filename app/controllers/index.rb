
get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/urls' do
  @long_url = params[:long_url]
  @key = Link.build_key
  p @key
  params[:key] = @key
  new_link = Link.create(params)
  erb :shorten_url_TEST
end
