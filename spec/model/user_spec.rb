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
    let(:user) { User.new email: email, name: name }
    let(:name) { 'user name' }
    let(:email) { 'a@b.com' }

    it { should respond_to :name }
    it { should respond_to :email }
    it { should respond_to :admin }

    context "without a name" do
      let(:name) { '' }
      let!(:valid) { user.valid? }

      it "is not valid" do
        valid.should be_false
      end

      it "includes an error for blank name" do
        user.errors[:name].should_not be_empty
      end
    end

    context "without an email" do
      let(:email) { '' }
      let!(:valid) { user.valid? }

      it "is not valid" do
        valid.should be_false
      end

      it "includes an error for blank email" do
        user.errors[:email].should_not be_empty
      end
    end
  end
end
