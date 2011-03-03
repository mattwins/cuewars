class CreateLeaguesPlayers < ActiveRecord::Migration
  def self.up
    create_table :leagues_players, :id => false do |t|
      t.integer :league_id
      t.integer :player_id
    end
  end

  def self.down
    drop_table :leagues_players
  end
end
