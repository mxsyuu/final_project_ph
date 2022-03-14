require 'rails_helper'

RSpec.describe Product, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:bookmarks) }

    it { should belong_to(:product_type) }

    it { should belong_to(:creator) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:brand) }

    it { should validate_presence_of(:creator_id) }

    it { should validate_numericality_of(:ph_level).is_less_than(12).is_greater_than_or_equal_to(2) }

    it { should validate_uniqueness_of(:product_name).scoped_to(:brand) }

    it { should validate_presence_of(:product_name) }

    it { should validate_presence_of(:product_type_id) }

    end
end
