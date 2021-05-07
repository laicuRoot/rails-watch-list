class RemoveImgsrcFromList < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :imgsrc, :string
  end
end
