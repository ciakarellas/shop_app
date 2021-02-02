require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  let(:valid_attributes) { { name: 'Sneakers', price: 49.99, quantity: 4 } }
  before(:each) do
    @product = Product.create! valid_attributes
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do
    end
  end
end
