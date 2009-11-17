class CreateTableAccount < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
    end
  end

  def self.down
    drop_table :accounts 
  end
end
