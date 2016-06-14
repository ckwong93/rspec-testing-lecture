require_relative '../grocery_list'


describe GroceryList do
  context "empty list" do
    let(:grocery_list) { GroceryList.new }

    # grocery_list = GroceryList.new

    it "is a GroceryList" do
      expect(grocery_list).to be_a GroceryList
    end

    it "contains an array of items" do
      expect(grocery_list.items).to eq []
    end

    it "can have items added to it" do
      grocery_list.add_item("Tomatoes")
      expect(grocery_list.items).to eq ["Tomatoes"]
    end

    it "errors out when we try to add a non-string" do
      # Need to put the code that will raise the error in a block
      # rather than passing it as an argument, otherwise that code
      # will just get executed, raise the error, and cause you
      # to fail the test!
      expect { grocery_list.add_item(2) }.to raise_error GroceryList::NotAString

      # Note: ruby style guide says not to chain with do...end:
      # https://github.com/airbnb/ruby#syntax
      expected = expect { grocery_list.add_item(nil) }
      expected.to raise_error GroceryList::NotAString
    end
  end

  context "list with existing items" do
    let(:full_grocery_list) do
      GroceryList.new(["Avocados", "Chocolate", "Bananas", "Coffee"])
    end

    it "is a GroceryList" do
      expect(full_grocery_list).to be_a GroceryList
    end
  end
end
