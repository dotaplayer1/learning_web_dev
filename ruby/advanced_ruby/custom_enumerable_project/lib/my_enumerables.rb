module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for item in self
      yield(item, index)
      index += 1
    end
  end

  def my_select
    selected_values = []
    for item in self
      selected_values.push(item) if yield(item)
    end
    selected_values
  end

  def my_all?
    all_true = true
    for item in self
      all_true = false unless yield(item) == true
    end
    all_true
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    for item in self
      yield(item)
    end
  end
end
