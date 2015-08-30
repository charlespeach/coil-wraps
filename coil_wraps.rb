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

area =  case wire
        when 20 then 0.518
        when 21 then 0.41
        when 22 then 0.326
        when 23 then 0.258
        when 24 then 0.205
        when 25 then 0.162
        when 26 then 0.129
        when 27 then 0.102
        when 28 then 0.081
        when 29 then 0.0642
        when 30 then 0.0509
        when 31 then 0.0404
        when 32 then 0.0320
        when 33 then 0.0254
        else 0.201
        end

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