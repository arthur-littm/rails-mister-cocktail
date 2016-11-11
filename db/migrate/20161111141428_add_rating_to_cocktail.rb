class AddRatingToCocktail < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :rating, :integer
  end
end
