class Robot

  def initialize
    @name = name
  end

  def reset
    @name = nil
  end

  def name
  # this is a reader OR a writer.
  # if @name = nil, name is a writer
  # if @name != nil, name is a reader
    two_letters = (0...2).map { (65 + rand(26)).chr }.join
    three_digits = (0...3).map { rand(10) }.join
    robot_id = two_letters + three_digits
    return @name ||= robot_id
  end

end
