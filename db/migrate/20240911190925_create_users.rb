class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.text :addres
      t.integer :role, default: 1

      t.timestamps
    end
  end
end
