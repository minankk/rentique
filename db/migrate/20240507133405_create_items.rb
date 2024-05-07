class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :category
      t.float :retail_price
      t.text :description
      t.float :rental_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
