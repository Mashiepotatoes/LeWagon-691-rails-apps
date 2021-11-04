class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :overview
      t.string :poster_url
      t.decimal :rating, precision: 5, scale: 2

      t.timestamps
    end
  end
end
