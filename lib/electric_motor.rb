class ElectricMotor
  def initialize
    @left_brush   = Brush.new
    @right_brush  = Brush.new
    @armature     = Armature.new
    @left_pole    = MagneticPole.new(:north)
    @right_pole   = MagneticPole.new(:south)

    @rpm = 0
  end

  attr_reader :power_supply, :left_brush, :right_brush,
    :armature, :left_pole, :right_pole

  def running?

  end

  def run
    # send positive current into left_brush and see if right_brush receives it
    current = Current.new(:positive)

    left_brush.send(current)

    if right_brush.receive?(current)
      @running = true
    else
      @running = false
    end
  end

  def self.run
    electric_motor = ElectricMotor.new

    while true do
      puts electric_motor.rpm
      electric_motor.run
    end
  end
end

require "electric_motor/conducts"
require "electric_motor/rotates"
require "electric_motor/armature"
require "electric_motor/brush"
require "electric_motor/coil"
require "electric_motor/commutator"
require "electric_motor/current"
require "electric_motor/magnetic_pole"
