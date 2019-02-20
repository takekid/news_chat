class AddProductToData < ActiveRecord::Migration[5.2]
  def change
    add_column :data, :product, :string
  end
end
