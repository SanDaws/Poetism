class CreatePublications < ActiveRecord::Migration[7.2]
  def change
    create_table :publications do |t|
      t.string :title, null: false
      t.text :publicaiton_text, null: false
      t.text :tags, null: false
      t.references :category, null: false, foreign_key: true
      t.references :writer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
