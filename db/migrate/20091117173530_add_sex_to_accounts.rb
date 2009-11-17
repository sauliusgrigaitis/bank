class AddSexToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :sex, :string
  end

  def self.down
    remove_column :accounts, :sex
  end
end
