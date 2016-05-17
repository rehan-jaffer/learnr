class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :virtual_path, null: false
      t.text :content, null: false
      t.timestamps null: false
    end
  end
end
