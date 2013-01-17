require 'spec_helper'

describe Paper do

  describe "Factory" do
    it { FactoryGirl.build(:paper).should be_valid}
  end

  describe "Validations" do
  end

  describe "Associations" do
    it "- Papers should have many review" do
      should have_many :reviews
    end

    it "- Papers should have many tags" do
      should have_many :tags
    end
  end
end
