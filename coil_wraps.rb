puts <<-FOO
This program will help you determine the number of wraps needed to reach a desired ohm rating for a microcoil made from A-1 Kanthal resistance wire.
Things you will need to know are as follows:
    - the wire gauge(AWG) you are using --program has functionality for gauges 20-34--,
    - the diameter(in millimeters) of the jig you are wrapping the coil around.
FOO

puts "what is the desired resistance in ohms?"
resistance = gets.chomp.to_f

puts "what is the wire guage (AWG)?"
wire = gets.chomp.to_i

# area calculation inspired by http://www.rapidtables.com/calc/wire/awg-to-mm.htm
area = 0.012668 * 92**((36-wire)/19.5)

puts "what is the jig diameter in millimeters?"
diameter = gets.chomp.to_f

radius = diameter / 2
circumference = radius * 2 * Math::PI

# resistivity of kanthal A-1 is .00145 ohms*mm^2/mm
resistivity = 0.00145

coil_length = (resistance * area) / resistivity
wraps = coil_length / circumference

wraps = wraps.round

puts "The number of wraps needed is #{wraps}, however remember to always measure your builds with a multimeter or ohmmeter. Vape safe."