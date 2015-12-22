class List < ActiveRecord::Base
  belongs_to :child
  has_many :gifts
end
