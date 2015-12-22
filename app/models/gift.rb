class Gift < ActiveRecord::Base
  belongs_to :child

  def self.find_naughty_children_gifts
    gifts= []
    Child.find_naughty_children.each do |child|
      child.gifts.each do |gift|
        gifts << gift
      end
    end
    gifts
  end

  def self.find_nice_children_gifts
    gifts= []
    Child.find_nice_children.each do |child|
      child.gifts.each do |gift|
        gifts << gift
      end
    end
    gifts
  end

end
