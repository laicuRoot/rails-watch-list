class CreateListReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :list_reviews do |t|
      t.integer :rating
      t.string :comments
      t.date :date
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
