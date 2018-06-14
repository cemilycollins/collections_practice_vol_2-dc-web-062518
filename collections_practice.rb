def begins_with_r(array)
  new_array = []
  array.each do |x|
    if x.start_with?("r")
      new_array << "true"
    else
      new_array << "false"
    end
  end
  not new_array.include?("false")
end

def contain_a(array)
  new_array = []
  array.each do |x|
    if x.include?("a")
      new_array << x
    end
  end
  new_array
end

def first_wa(array)
  new_array = []
  array.each do |x|
    if x.is_a?(String) && x.start_with?("wa")
      new_array << x
    end
  end
  new_array[0]
end

def remove_non_strings(array)
  new_array = []
  array.each do |x|
    if x.is_a?(String)
      new_array << x
    end
  end
  new_array
end

def count_elements

end
