class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.string :name
      t.string :nickname
      t.string :email

      t.timestamps
    end
    
    add_index :players, :email,                  :unique => true
    add_index :players, :reset_password_token,   :unique => true
  end

  def self.down
    drop_table :players
  end
end
