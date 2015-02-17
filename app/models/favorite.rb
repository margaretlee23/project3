class Favorite < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  
  # Relationships
  belongs_to :list

end
