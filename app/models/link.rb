class Link < ActiveRecord::Base
  # validates :long_url, presence: true
  # validates :key, uniqueness: true
  # validates :counter, presence: true

  def redirect_counter
    
  end

  def self.build_key
    letters_numbers = ("A".."Z").to_a + ("a".."z").to_a + ("1".."9").to_a
    key = ''
    8.times { key << letters_numbers.sample }
    key
  end

end



