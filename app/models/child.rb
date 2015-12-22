class Child < ActiveRecord::Base
  has_many :lists

  def self.find_naughty_children
    where('rating BETWEEN 1 AND 3')

  end
end
