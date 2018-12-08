class CreateVeterans < ActiveRecord::Migration[5.2]
  def change
    create_table :veterans do |t|
      t.string :username
      t.string :location
      t.string :password
      t.timestamps
    end
  end
end
