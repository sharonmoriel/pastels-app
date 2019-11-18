class CreatePastels < ActiveRecord::Migration[5.2]
  def change
    create_table :pastels do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :stock
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
