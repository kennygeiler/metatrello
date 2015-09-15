class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :name, unique: true
      t.boolean :private, default: false
      t.string :password
      t.timestamps null: false
    end
  end
end
