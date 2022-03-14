require 'rails_helper'

RSpec.describe Product, type: :model do
  
    describe "Direct Associations" do

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:product_name).scoped_to(:brand) }

    it { should validate_presence_of(:product_name) }

    it { should validate_presence_of(:product_type_id) }

    end
end
