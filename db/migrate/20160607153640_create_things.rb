class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :stuff1
      t.string :stuff2

      t.timestamps null: false
    end
  end
end
