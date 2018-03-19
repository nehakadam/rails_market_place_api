require 'spec_helper'

RSpec.describe Order, type: :model do
  let(:order) { FactoryBot.build :order }
  subject { order }

  it { should respond_to(:total) }
  it { should respond_to(:user_id) }

  it { should validate_presence_of :user_id }
  # it { should validate_presence_of :total}
  # it { should validate_numericality_of(:total).is_greater_than_or_equal_to(0) }

  it { should belong_to :user }

  #it { should have_many(:placements) }
  it { should have_many(:products).through(:placements) }
  it { should have_many(:orders).through(:placements) }

  it { should have_many(:placements) }
  


  describe '#set_total!' do
	  before(:each) do
	    product_1 = FactoryBot.create :product, price: 100
	    product_2 = FactoryBot.create :product, price: 85

	    @order = FactoryBot.build :order, product_ids: [product_1.id, product_2.id]
	  end

	  it "returns the total amount to pay for the products" do
	    expect{@order.set_total!}.to change{@order.total}.from(0).to(185)
	  end
	end

end