require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:product) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    it { should have_one(:product_type) }

    end

    describe "Validations" do

    it { should validate_presence_of(:category_id) }

    it { should validate_presence_of(:product_id) }

    it { should validate_presence_of(:user_id) }

    end
end
