class AddColumnToUsers2 < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :authority_code, :integer, presence: true, default: 0
  end
end
