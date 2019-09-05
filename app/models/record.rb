class Record < ApplicationRecord
  #belongs_to :artist
  belongs_to :user
  validates :tittle, :year, presence: true
  
end
