# your code goes here
def begins_with_r(tools)
  tools.all? do |tool|
    tool.start_with?("r")
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find { |word| word[0..1] == "wa" }
end

def remove_non_strings(array)
  array.keep_if { |word| word.is_a?(String)}
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  array = []
  keys.each do |person|
    name = person[:first_name]
    data.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        array << merged_person
      end
    end
  end
  array
end

def find_cool(array)
  arr = []
  array.each do |element|
    arr << element if element[:temperature] == "cool"
  end
  arr
end

def organize_schools(schools)
  organized = {}
  schools.each do |school, location_hash|
    location = location_hash[:location]
    organized[location] ||= []
    organized[location] << school
  end
  organized
end
