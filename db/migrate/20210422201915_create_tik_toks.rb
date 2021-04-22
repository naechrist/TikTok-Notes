class CreateTikToks < ActiveRecord::Migration[6.0]
  def change
    create_table :tik_toks do |t|
      t.text :description
      t.string :link
      t.integer :user_id
      t.integer :category_id
      t.boolean :favorite

      t.timestamps
    end
  end
end
