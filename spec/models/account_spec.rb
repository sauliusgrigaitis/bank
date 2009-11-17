require File.join( File.dirname(__FILE__), "..", "spec_helper" )

describe Account do
  it "should allow create new account for user" do
    Account.new(
      :name => "Vardenis", 
      :surname => "Pavardenis", 
      :sex => "vyras"
    ).should be_kind_of(ActiveRecord::Base)
  end
   
  it "should have account owner name and surname" do
    saulius_account = Account.new(
      :name => "Vardenis", 
      :surname => "Pavardenis", 
      :sex => "vyras"
    )
    saulius_account.name.should == "Vardenis"
    saulius_account.surname.should == "Pavardenis"

    jonas_account = Account.create(
      :name => "Jonas", 
      :surname => "Jonaitis", 
      :sex => "vyras"
    )
    jonas_account.name.should == "Jonas"
    jonas_account.surname.should == "Jonaitis"
  end

  it "should have account owner's sex" do
    jonas_account = Account.new(
      :name => "Jonas", 
      :surname => "Jonaitis", 
      :sex => "vyras"
    )
    jonas_account.sex.should == "vyras"
  end
end
