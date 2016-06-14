
class GroceryList
  attr_reader :items

  def initialize(items=[])
    @items = items
  end

  class NotAString < ArgumentError
  end

  def add_item(item)
    if item.class != String
      raise NotAString
    end
    @items << item
  end
end
