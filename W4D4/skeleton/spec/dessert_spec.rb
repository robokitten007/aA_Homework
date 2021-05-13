require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef"), name: "Alice" }
  let (:icecream) {Desert.new("icecream", 1, chef)}
  describe "#initialize" do
    it "sets a type" do
      expect(icecream.type).to eq("icecream")
    end 

    it "sets a quantity"
      expect(icecream.quantity).to eq(1)
    end 

    it "starts ingredients as an empty array"
      expect(icecream.ingredients).to be_empty
    end 

    it "raises an argument error when given a non-integer quantity"
      expect{Desert.new("icecream",'1',chef)}.to raise_error(ArgumentError)
    end 
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
    icecream.add_ingredient("peach")
    expect(icecream.ingredients).to include("peach")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
    ingredients = ["coco", "peach", "pipeapple"]
    ingredients.each do |ingredient|
      icecream.add_ingredient(ingredient)
    end 
    expect(icecream.ingredients).to eq(ingredients)
    icecream.mix!
    expect(icecream.ingredients).not_to eq(ingredients)
    expect(icecream.ingredients.sort).to eq(ingredients.sort)
  end 
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
    icecream.eat(1)
    expect(icecream.quantity).to eq(0)
  end 

    it "raises an error if the amount is greater than the quantity"
    expect{icecream.eat(3)}.to raise_error("amount is more than quantity.")
  end 
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
    allow(chef) to receive(:titleize).and_return("Chef Alice the Great Baker")
    expect(icecream.serve)to eq("Chef Alice the Great Baker has made 1 icecreams")
  end 
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
    icecream.make_more
    expect(chef).to receive(:bake).with(icecream)
  end 
  end
end
