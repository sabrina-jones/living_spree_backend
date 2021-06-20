class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :category_id
      t.string :image_url
      t.string :name
      t.string :summary
      t.string :when
      t.string :time
      t.string :where

      t.timestamps
    end
  end
end
