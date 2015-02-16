class Favorite < ActiveRecord::Base
  validates :name, presence: true
  validate :address, presence: true

  belongs_to :list
  
end
