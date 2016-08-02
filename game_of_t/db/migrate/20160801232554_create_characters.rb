class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image_url
      t.string :title
      t.references :house
      t.timestamps
    end
  end
end
