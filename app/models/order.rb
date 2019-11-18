class Order < ApplicationRecord
  belongs_to :pastel
  belongs_to :user

  validates :quantity, presence: true
  validates :order_date, presence: true
end
