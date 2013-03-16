class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :source_id
      t.string :external_id
      t.string :src
      t.datetime :external_time
      t.timestamps
    end
    add_index :images, :source_id, :name => "images_source_id"
    add_index :images, :external_id, :name => "images_external_id"
  end
end
