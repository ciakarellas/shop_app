require 'rails_helper'

RSpec.describe "products/show", type: :view do
  let(:valite_attributes) {{name: 'Sneakers', price: 49.99, quantity: 4}}
  before(:each) do
    @product = assign(:product, Product.create!(valite_attributes))
  end

  it "renders attributes in <p>" do
    render
  end

  it 'allows to add to cart' do
    render

    expect(rendered).to match(/shopping-cart/)
  end
end
