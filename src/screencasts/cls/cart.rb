require_relative "../mod/item_container"

class Cart

  attr_reader :items

  include ItemContainer

  def initialize
    @items = Array.new
  end

end
