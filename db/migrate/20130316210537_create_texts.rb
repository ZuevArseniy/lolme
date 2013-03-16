class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.integer :source_id
      t.string :external_id
      t.text :content
      t.datetime :external_time
      t.timestamps
    end
    add_index :texts, :source_id, :name => "texts_source_id"
    add_index :texts, :external_id, :name => "texts_external_id"
  end
end
