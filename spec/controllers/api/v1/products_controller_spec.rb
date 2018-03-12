require 'spec_helper'

RSpec.describe Api::V1::ProductsController, type: :controller do

	describe "GET #show" do

    before(:each) do
      @product = FactoryBot.create :product
      get :show, params: { id: @product.id }, format: :json
    end

    it "returns the information about a reporter on a hash" do
      product_response = json_response
      expect(product_response[:title]).to eql @product.title
    end

    it { should respond_with 200 }

  end

  describe "GET #index" do

    before(:each) do
      4.times { FactoryBot.create :product }
      get :index, format: :json
    end

    it "returns 4 records from the database" do
      products_response = json_response
      expect(products_response.length).to eq(4)
    end

    it { should respond_with 200 }

  end

end
