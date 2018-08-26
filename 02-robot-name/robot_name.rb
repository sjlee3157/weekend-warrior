class Robot
  attr_writer :name

  def initialize
    @name = self.name
  end

  def reset
    @name = nil
  end

  def name
    two_letters = (0...2).map { (65 + rand(26)).chr }.join
    three_digits = (0...3).map { rand(9) }.join
    robot_id = two_letters + three_digits
    @name ||= robot_id
    return @name # can I make this more compact?
  end
end
#
# robot=Robot.new
# puts robot.name
# Robot.factory_reset
# puts robot.name
