require 'rails_helper'

RSpec.describe Category, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:products) }

    end

    describe "InDirect Associations" do

    it { should have_many(:bookmarks) }

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:category_type) }

    it { should validate_presence_of(:category_type) }

    end
end
