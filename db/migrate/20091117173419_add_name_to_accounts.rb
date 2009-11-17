class AddNameToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :name, :string
  end

  def self.down
    remove_column :accounts, :name
  end
end
