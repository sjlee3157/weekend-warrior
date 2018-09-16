def words(string)
  # what having a default value of 0 means is that when a new key is
  # initialized, it will already have a value (0)
  hash = Hash.new(0)
  array = string.strip.split(/\s+/)
  array.each { |elm| hash[elm] += 1 }
  return hash
  # .strip strips leading and trailing whitespace
  # .split(delimiter) splits the string along the delimiter
  # delimiter = 1 or more whitespace characters in a row
  # Equivalent: array = string.lstrip.split(/[ \t\r\n\f]+/)
end
