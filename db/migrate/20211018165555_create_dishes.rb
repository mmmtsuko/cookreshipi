class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string       :title,      null: false   
      t.text         :arerugi,    null: false
      t.text        :material,   null: false
      t.text         :procedure,  null: false
      t.references   :user,       null: false, foreign_key: true

      t.timestamps
    end
  end
end

