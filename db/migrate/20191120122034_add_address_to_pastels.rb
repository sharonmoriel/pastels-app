class AddAddressToPastels < ActiveRecord::Migration[5.2]
  def change
    add_column :pastels, :address, :string
  end
end
