class AddReviewToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :review, :text
  end
end
