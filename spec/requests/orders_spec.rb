require 'rails_helper'

describe "Orders", type: :request do
  let!(:product) { create(:product) }
  let(:order) { create(:order) }
  let(:valid_attributes) do
    {
        order_items_json: "[{\"product_id\":\"#{product.id}\",\"quantity\":\"2\"}]"
    }
  end

  let(:invalid_attributes) do
    {
      order_items_json: nil
    }
  end

  describe "GET /show" do
    it "returns a success response" do
      get order_path(order)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "returns a success response" do
      get new_order_path
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid params" do
      it "creates a new Order" do
        expect {
          post orders_path, params: { order: valid_attributes }
        }.to change(Order, :count).by(1)
      end

      it "redirects to the created order" do
        post orders_path, params: { order: valid_attributes }
        expect(response).to redirect_to(Order.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e., to display the 'new' template)" do
        post orders_path, params: { order: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end
end
