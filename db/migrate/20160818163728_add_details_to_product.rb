class AddDetailsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :image, :text
  end
end
