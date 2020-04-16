def key_for_min_value(hash)
  if hash.length == 0
    return nil
  else
    array = []
    hash.each do |key, value|
      array << value
    end
    min_num = array[0]
    array.each do |value|
      min_num = value if value < min_num
    end
    hash.each do |key, value|
      if min_num == value
        return key
      end
    end
  end
end