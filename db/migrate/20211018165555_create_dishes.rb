class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string       :title,          null: false   
      t.text         :category,       null: false
      t.text         :material,       null: false
      t.text         :one,            null: false
      t.text         :two,            null: false
      t.text         :three,          null: false
      t.references   :user,       null: false, foreign_key: true

      t.timestamps
    end
  end
end

