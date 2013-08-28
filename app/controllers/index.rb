#GET =========================================

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:short_url' do
  @key = params[:short_url]
  @link_object = Link.find_by_key("#{@key}")
  @link_object.redirect_counter
  link = @link_object.long_url
  redirect "#{link}"
end

#POST ========================================

post '/urls' do
  valid_url = validate_format(params[:long_url])
  if validate_url(valid_url)
    params[:long_url] = valid_url
    @key = Link.build_key
    params[:key] = @key
    new_link = Link.create(params)
    erb :shorten_url
  else
    redirect '/'
  end
end
