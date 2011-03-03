class CreateLeaguesFixtures < ActiveRecord::Migration
  def self.up
    create_table :leagues_fixtures, :id => false do |t|
      t.integer :league_id
      t.integer :fixture_id
    end
  end

  def self.down
    drop_table :leagues_fixtures
  end
end
