class Link < ActiveRecord::Base
  validates :long_url, presence: true
  validates :short_url, uniqueness: true
  validates :counter, presence: true

  def short_url_generator
    
  end

  def redirect_counter
    
  end
end



