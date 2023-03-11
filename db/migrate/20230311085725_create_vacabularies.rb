class CreateVacabularies < ActiveRecord::Migration[6.0]
  def change
    create_table :vacabularies do |t|
      t.string :title, null: false
      t.text :meaning, null: false
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
