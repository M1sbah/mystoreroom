class AddStatusToStoreroom < ActiveRecord::Migration[7.0]
  def change
    add_column :storerooms, :status, :integer , default: 0
  end
end
