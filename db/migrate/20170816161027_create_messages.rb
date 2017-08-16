class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :contact
      t.string :model
      t.integer :year
      t.boolean :gibdd
      t.text :description

      t.timestamps null: false
    end
  end
end
