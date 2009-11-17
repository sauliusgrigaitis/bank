require 'rubygems'
require 'spec'
require File.dirname(__FILE__) + '/../app/account.rb'

describe Account do
  it "should allow create new account for user" do
    Account.new("Vardenis", "Pavardenis", "vyras").should be_kind_of(ActiveRecord)
  end
   
  it "should have account owner name and surname" do
    saulius_account = Account.new("Saulius", "Grigaitis", "vyras")
    saulius_account.name.should == "Saulius"
    saulius_account.surname.should == "Grigaitis"

    jonas_account = Account.new("Jonas", "Jonaitis", "vyras")
    jonas_account.name.should == "Jonas"
    jonas_account.surname.should == "Jonaitis"
  end

  it "should have account owner's sex" do
    jonas_account = Account.new("Jonas", "Jonaitis", "vyras")
    jonas_account.sex.should == "vyras"
  end
end


describe Account, "ID" do
  it "should have automaticaly generated ID" do
    jonas_account = Account.new("Jonas", "Jonaitis", "vyras")
    jonas_account.account_id.should be_instance_of(Fixnum)
  end

  it "should have unique id" do
    jonas_account = Account.new("Jonas", "Jonaitis", "vyras")
    petras_account = Account.new("Petras", "Petraitis", "vyras")
    jonas_account.account_id.should_not == petras_account.account_id
  end

  it "should have unique ids even if there is 100000 accounts" do
    ids = (1..1000000).collect do
      Account.new("Jonas", "Jonaitis", "vyras").account_id
    end
    ids.uniq.size.should == 1000000
  end
  
end
