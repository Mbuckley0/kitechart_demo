class CreateKites < ActiveRecord::Migration
  def change
    create_table :kites do |t|
      t.string :color
      t.integer :size
      t.string :material

      t.timestamps null: false
    end
  end
end
