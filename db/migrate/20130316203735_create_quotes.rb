class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text  :body
      t.integer :bash_id


      t.timestamps
    end
  end
end
