class Pastel < ApplicationRecord

  include PgSearch::Model
  pg_search_scope :search_by_name_address_description,
    against: [ :name, :address, :description],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :orders, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stock, presence: true
  validates :photo, presence: true
end
