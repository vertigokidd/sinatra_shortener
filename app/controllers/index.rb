#GET =========================================

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:short_url' do
  @key = params[:short_url]
  link = Link.find_by_key("#{@key}").long_url
  redirect "http://#{link}"
end

#POST ========================================

post '/urls' do
  @long_url = params[:long_url]
  @key = Link.build_key
  params[:key] = @key
  new_link = Link.create(params)
  erb :shorten_url
end
