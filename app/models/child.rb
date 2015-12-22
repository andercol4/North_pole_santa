class Child < ActiveRecord::Base
  has_many :gifts

  def self.find_naughty_children
    where('rating BETWEEN 1 AND 3')
  end

  def self.find_nice_children
    where('rating BETWEEN 7 AND 10')
  end
end
