class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name,         null: false
      t.text :description
      t.boolean :featured,    default: false
      t.string :image
      t.string :vimeo_id
      t.timestamps
    end
  end
end
