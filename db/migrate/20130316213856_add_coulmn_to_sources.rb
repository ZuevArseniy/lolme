class AddCoulmnToSources < ActiveRecord::Migration
  def change
  	add_column :sources, :media_id, :integer
  	add_index :sources, :media_id, :name => 'media_id_fk_index'
  end
end
