# wk3/weekend-warrior/01-leap/leap.rb

def leap_year?(year)
  if year.class != Integer then raise ArgumentError, "Year must be an integer." end

  if year % 400 == 0
    return true
  elsif year % 100 == 0
    return false
  elsif year % 4 == 0
    return true
  else
    return false
  end
end

# puts leap_year?(400) ? "leap" : "not leap"

# year % 4 == 0 && year % 100 != 0 || year % 400 == 0
