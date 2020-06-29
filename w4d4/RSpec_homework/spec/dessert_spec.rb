require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs 
(the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:brownie) { Dessert.new }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type"  do 
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do 
      expect(brownie.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("cake", "10", chef).to raise_error }
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      brownie.add_ingredient("chocolate")
      expect(brownie.ingredients.to eq(['chocolate'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["chocolate", "flour", "egg", "sugar", "butter"]

      ingredients.each do |ingredient|
        brownie.add_ingredient(ingredient)
      end

      expect(brownie.ingredients).to eq(ingredients)
      brownie.mix!
      expect(brownie.ingredients).not_to eq(ingredients)
      expect(brownie.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      brownie.eat(20)
      expects(brownie.quantity).to eq(20)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expects { eat(100) }.to raise_error(ArgumentError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      allow(chef).to receive(:titleize).and_return("jaron has made 50 cakes")
      expect(brownie.serve).to eq("asfadfadasfsadfdasf")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      allow(chef).to receive(:bake).and_return(brownie)
      brownie.make_more
    end
  end
end