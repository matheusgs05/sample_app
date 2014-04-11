class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :arquivo
      t.integer :id_uploader
      t.string :file_name
      t.string :content_type
      t.integer :binary_id
      t.integer :size

      t.timestamps
    end
  end
end
