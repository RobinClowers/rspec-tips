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
end
