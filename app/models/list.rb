class List < ActiveRecord::Base
  validates :title, presence: true
  
  # Relationships
  belongs_to :user
  has_many :favorites dependent: :destroy #deletes favorites if list is destroyed
  
end
