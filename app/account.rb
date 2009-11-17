class Account < ActiveRecord::Base
  attr_reader :name, :surname, :sex, :account_id
  @@id_counter = 0

  def initialize(name, surname, sex)
    @name = name
    @surname = surname
    @sex = sex
    @account_id = (@@id_counter += 1) 
  end
end
