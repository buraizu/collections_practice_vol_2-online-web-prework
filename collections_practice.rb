require 'pry'

def begins_with_r(array)
  array.each do |element|
    if element[0] != 'r'
      return false
    end
  end
  return true
end

# return all elements that contain the letter 'a'

def contain_a(array)
  a_array = []
  array.each do |element|
    if element.include?('a')
    a_array << element
    end
  end
  return a_array
end

# Return the first element that begins with the letters 'wa'

def first_wa(array)
  array.each do |element|
    if element[0] == 'w' && element[1] == 'a'
    return element
    end
  end
end

# remove anything that's not a string from an array

def remove_non_strings(array)
  all_strings_array = []
  array.each do |element|
    if element.class == String
      all_strings_array << element
    end
  end
  return all_strings_array
end

# count how many times something appears in an array

def count_elements(array)
  freq_array = []
  hash_array = []
  array.each do |element|
    freq_array << element[:name]
  end
  name_array = freq_array.uniq
  name_array.each do |element2|
    hash_array << {:name => element2, :count => 0}
  end
  freq_array.each do |element3|
    hash_array.each do |element4|
      if element3 == element4[:name]
      element4[:count] += 1
      end
    end
  end
  return hash_array
end

# combines two nested data structures into one

def merge_data ( keys, data)
  merged_data = []
  i = 0
  while i < keys[0].length
    data.each do |array|
      array.each do |name, data|
        if name == keys[i][:first_name]
          merged_data[i] = keys[i].merge(data)
          i += 1
        end
      end
    end
  end
  merged_data
end



def find_cool(array)
  cool_array = []
  array.each do |element|
    element.each do |key, value|
      if value == 'cool'
        cool_array << element
      end
    end
  end
  return cool_array
end

def organize_schools(hash)
  school_hash = {}
  hash.each do |key, value|
    school_hash[value[:location]] = [] 
  end
  hash.each do |key2, value2|
    value2.each do |key3, value3|
      school_hash[value3] << key2
    end
  end
  return school_hash
end