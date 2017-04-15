class TodoList

  def initialize(list)
    @list_array = list
  end 

  def get_items
    @list_array
  end 

  def add_item(new_item)
    @list_array.push(new_item)
  end

  def delete_item(item)
    @list_array.delete(item)
  end

  def get_item(index)
    @list_array[index]
  end 

end