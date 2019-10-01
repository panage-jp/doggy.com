class DeleteColumnFrooUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :authority, :integer
  end
end
