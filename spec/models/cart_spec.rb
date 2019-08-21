require 'rails_helper'

RSpec.describe Cart do
  it "can initialize with no contents" do
    cart = Cart.new(nil)

    expect(cart.contents).to eq({})
  end

  it "can initialize with contents" do
    cart = Cart.new({"4" => "3", "9" => "100"})

    expect(cart.contents).to eq({"4" => "3", "9" => "100"})
  end

  it "can report the quantity of a song" do
    cart = Cart.new({"4" => "3", "9" => "100"})

    expect(cart.quantity_of(4)).to eq(3)
  end

  it "can add a new song" do
    cart = Cart.new({4 => 3, 9 => 100})
    cart.add_song(5)
    expect(cart.quantity_of(5)).to eq(1)
  end
end
