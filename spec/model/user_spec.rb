require 'spec_helper'

describe User do
  describe "when not an admin" do
    let(:user) { FactoryGirl.build :user }

    it "admin? should be false" do
      user.admin?.should be_false
    end
  end

  describe "when an admin" do
    let(:user) { FactoryGirl.build :admin }

    it "admin? should be true" do
      user.admin?.should be_true
    end
  end

  describe "attributes" do
    it "has the expected attributes" do
      user = User.new
      user.should respond_to :name
      user.should respond_to :email
      user.should respond_to :admin
    end

    it "requires name" do
      user = User.new email: 'a@b.com'
      user.valid?.should be_false
      user.errors[:name].should_not be_empty
    end

    it "requires email" do
      user = User.new name: 'foo'
      user.valid?.should be_false
      user.errors[:email].should_not be_empty
    end
  end
end
