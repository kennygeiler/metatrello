class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :url
      t.string :title
      t.text :body
      t.timestamps null: false
    end
  end
end
