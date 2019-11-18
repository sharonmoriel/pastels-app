class Order < ApplicationRecord
  belongs_to :pastel
  belongs_to :user
end
