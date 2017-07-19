class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :serialnum
      t.string :name
      t.integer :size
      t.text :desc
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
