class AddSurnameToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :surname, :string
  end

  def self.down
    remove_column :accounts, :surname
  end
end
