class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.text :profile
      t.references :type, default: 1
      t.references :user

      t.timestamps
    end
  end
end
