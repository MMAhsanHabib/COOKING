class CreateMenues < ActiveRecord::Migration[6.0]
  def change
    create_table :menues do |t|
      t.string :name
      t.text :ingridients
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
