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


def count_elements(array)
  new_array = []
  array.each_with_index do |element, index|
    element.each do |original_key, original_value|
      counter = 0
      new_array.each do |hash_with_two_keys|
        if hash_with_two_keys.has_value?(original_value) && hash_with_two_keys[original_key] == original_value
          hash_with_two_keys[:count] = hash_with_two_keys[:count] + 1
        else
          counter += hash_with_two_keys[:count]
        end
      end
      if counter == index
        var = {}
        var[original_key] = original_value
        var[:count] = 1
        new_array << var
      end
    end
  end
  new_array
end


def merge_data(keys, data)
  new_array = []
  other_array = []
  data.each do |array_level_2|
    array_level_2.each do |key, hash_level_4|
        new_array << hash_level_4
    end
  end
  keys.each do |array|
    array.each do |key, value|
      new_hash = {}
      new_hash[key] = value
      other_array << new_hash
    end
  end
  other_array.each_with_index do |hash, index|
    new_array.each_with_index do |hash2, index2|
      hash2.each do |key, value|
        if index == index2
          hash[key] = value
        end
      end
    end
  end
end

def find_cool(array)
  new_array = []
  array.each do |hash|
    if hash.has_value?("cool")
      new_array << hash
    end
  end
  new_array
end



def organize_schools(hash)
  new_hash = {}
  new_array = []
  hash.each do |school, location_hash|
    var = location_hash[:location]
    if new_hash.has_key?(var)
      new_hash[var] << school
    else
      new_hash[var] = []
      new_hash[var] << school
    end
  end
  new_hash
end
