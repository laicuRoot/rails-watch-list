class AddImgsrcToList < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :imgsrc, :string
  end
end
