# Electric Motor

An electric motor and it's physics modeled in Ruby.

```ruby
motor = ElectricMotor.new
motor.running?
=> false
motor.rpm
=> 0
motor.power(true)
motor.running?
=> true
motor.rpm
=> 1000
motor.power(false)
motor.running?
=> false
motor.rpm
=> 0
```
