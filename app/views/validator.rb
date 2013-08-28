def validate_format(string)
  if string =~ /https?:\/\/?/
    return string
  else
    return "http://#{string}"
  end
end



def validate_url(string)
  url = validate_format(string)
  uri = URI.parse(url)
  begin
    Net::HTTP.get_response(uri)
    return true
  rescue
    return false
  end
end



# p validate_format("http://google.com")
# p validate_format("google.com")
# p validate_format("google")


p validate_url("http://google.com")
p validate_url("google.com")
p validate_url("google")
