class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.references :publication, null: false, foreign_key: true
      t.references :writer, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
