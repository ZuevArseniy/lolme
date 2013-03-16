class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.integer :source_id
      t.string :external_id
      t.text :content
      t.datetime :external_time
      t.timestamps
    end
  end
end
