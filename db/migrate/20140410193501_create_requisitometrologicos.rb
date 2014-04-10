class CreateRequisitometrologicos < ActiveRecord::Migration
  def change
    create_table :requisitometrologicos do |t|
      t.string :nome_do_requisito
      t.float :valor_do_requisito
      t.string :filename
      t.string :content_type
      t.integer :binary_id
      t.integer :size

      t.timestamps
    end
  end
end
