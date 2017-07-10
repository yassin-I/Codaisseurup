class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :categories, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :guests, through: :bookings, source: :user




  validates :name, presence: true
  validates :description, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true


end
