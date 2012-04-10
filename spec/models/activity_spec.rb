require 'spec_helper'

describe Activity do
	before do
		@activity                 = Activity.new
		@activity.product         = "Torta"
		@activity.date            = "12/12/2012"
		@activity.time            = "15:30"
		@activity.clientName      = "Anna"
		@activity.clientAddress   = "Rua das Couves"
		@activity.clientTelephone = "12345678"
		@activity.clientEmail     = "anna@anna.com"
	end

	subject { @activity }
	it { should respond_to(:product) }
	it { should respond_to(:date) }
	it { should respond_to(:time) }
	it { should respond_to(:clientName) }
	it { should respond_to(:clientAddress) }
	it { should respond_to(:clientTelephone) }
	it { should respond_to(:clientEmail) }

	describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
      addresses.each do |invalid_address|
        @activity.clientEmail = invalid_address
        @activity.should_not be_valid
      end      
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.com A_USER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @activity.clientEmail = valid_address
        @activity.should be_valid
      end      
    end
  end

  describe "when telephone format is invalid" do
  	it "should be invalid" do
	  	telephones = %w[1234, 1234567890]
	  	telephones.each do |invalid_telephone|
	  		@activity.clientTelephone = invalid_telephone
	  		@activity.should_not be_valid
	  	end
  	end
  end

  describe "when telephone format is valid" do
  	it "should be valid" do
  		telephones = %w[12345678, 97653214]
  		telephones.each do |valid_telephone|
  			@activity.clientTelephone = valid_telephone
  			@activity.should be_valid
  		end
  	end
  end
end
