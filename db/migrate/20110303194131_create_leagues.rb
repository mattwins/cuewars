class CreateLeagues < ActiveRecord::Migration
  def self.up
    create_table :leagues do |t|
      t.string :name
      t.date :start
      t.date :end
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :leagues
  end
end
