class Link < ActiveRecord::Base
  # validates :long_url, presence: true
  # validates :key, uniqueness: true
  # validates :counter, presence: true

  def redirect_counter
    count = self.counter
    count += 1
    self.update_attributes(counter: count)
  end

  def self.build_key
    letters_numbers = ("A".."Z").to_a + ("a".."z").to_a + ("1".."9").to_a
    key = ''
    8.times { key << letters_numbers.sample }
    key
  end

  def validate_url
    if XX =~ /(https?:\/\/)(w{3}?).(\w{2,}).(\w{2,4}\S*)/
      gsub(/(https?:\/\/)(w{3}?).(\w{2,}).(\w{2,4}\S*)/, 2, 3, 4)
    else
    end
  end

end



