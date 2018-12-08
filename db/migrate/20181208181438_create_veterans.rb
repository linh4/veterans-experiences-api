class CreateVeterans < ActiveRecord::Migration[5.2]
  def change
    create_table :veterans do |t|
      t.string :username
      t.string :location
      t.string :password_digest
      t.timestamps
    end
  end
end
