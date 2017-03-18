def begins_with_r(array)
	check = true
	array.each do |element|
		if element.start_with?("r")
			check = true
		else
			check = false
			break
		end
	end
	check
end

def contain_a(array)
	array.select {|i| i.include?("a")}
end

def first_wa(array)
	array.find do |i|
		if i.class == String
			i.start_with?("wa")
		end
	end
end

def remove_non_strings(array)
	array.delete_if {|i| i.class != String}
	array
end

def count_elements(array)
	array.group_by(&:itself).map{|key, value| key.merge(count: value.length)}
end

# STILL NEED TO FIX
def merge_data(keys, data)	
	output = []
	keys.each do |keys_element|
		keys_element.each do |key, value|
			data.each do |data_element|
				if data_element.has_key?(value)
					new_hash = data_element[value]
					new_hash[key] = value
					output << new_hash
				end
			end
		end
	end
	output
end	

def find_cool(hash)
	output = []
	hash.each do |element|
		if element.values.include?("cool")
			output << element
		end
	end
	output
end

def organize_schools(hash)
	organized_hash = {}
	hash.each do |school_name, values_hash|
		values_hash.each do |location_key, city|
			if !organized_hash.keys.include?(city)
				organized_hash[city] = []
			end
			organized_hash[city] << school_name
		end
	end
	organized_hash
end