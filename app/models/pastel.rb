class Pastel < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :orders, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stock, presence: true
  validates :photo, presence: true
end
