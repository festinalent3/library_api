require 'rails_helper'

RSpec.describe Product, type: :model do

  it "is invalid if price is not provided in params" do
    product = Product.new(name: 'Chocolate cupcake')
    expect(product).not_to be_valid
  end

  it "is invalid if name is not provided in params" do
    product = Product.new(price: 7.90)
    expect(product).not_to be_valid
  end

end
