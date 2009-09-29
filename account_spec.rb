require 'rubygems'
require 'spec'
require 'account'

describe Account do
  it "should allow create new account for user" do
    Account.new("Vardenis", "Pavardenis").should be_instance_of(Account)
  end
   
  it "should have account owner name and surname" do
    saulius_account = Account.new("Saulius", "Grigaitis")
    saulius_account.name.should == "Saulius"
    saulius_account.surname.should == "Grigaitis"

    jonas_account = Account.new("Jonas", "Jonaitis")
    jonas_account.name.should == "Jonas"
    jonas_account.surname.should == "Jonaitis"
  end

end

