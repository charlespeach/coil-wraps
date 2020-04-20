module Coilwraps
  # Provides the main entry point to run coilwraps
  class Presenter
    def self.run
      puts <<-FOO
      This tool will help you determine the number of wraps needed to reach a desired ohm rating for a microcoil made from A-1 Kanthal resistance wire.
      Things you will need to know are as follows:
          - the wire gauge (AWG) you are using, 20-34 Guages supported,
          - the diameter (in millimeters) of the jig you are wrapping the coil around.
      FOO

      puts 'what is the desired resistance in ohms?'
      resistance = gets.chomp.to_f

      puts 'what is the wire guage (AWG)?'
      wire_guage = gets.chomp.to_i

      puts 'what is the jig diameter in millimeters?'
      jig_diameter = gets.chomp.to_f

      wraps = Coilwraps::Calculator.run(
        resistance: resistance,
        wire_guage: wire_guage,
        jig_diameter: jig_diameter,
        wire_type: :kanthal_a1
      )

      puts "The number of wraps needed is #{wraps}, however remember to always measure your builds with a multimeter or ohmmeter. Vape safe."
    end
  end
end
