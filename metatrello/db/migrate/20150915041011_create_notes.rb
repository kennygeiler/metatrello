class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :url_id
      t.string :title
      t.text :body
      t.timestamps null: false
    end
  end
end
