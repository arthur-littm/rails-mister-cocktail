class CreateStars < ActiveRecord::Migration[5.0]
  def change
    create_table :stars do |t|
      t.references :cocktail, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
