class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
   has_many :photos


  validates :name, presence: true
  validates :description, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true


end
