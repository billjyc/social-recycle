class AddAddressToItem < ActiveRecord::Migration
  def change
    add_column :items, :address, :string
  end
end
