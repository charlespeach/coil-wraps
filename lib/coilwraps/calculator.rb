module Coilwraps
  class Calculator
    RESISTIVITY = {
      # resistivity of kanthal A-1 is .00145 ohms*mm^2/mm
      kanthal_a1: 0.00145
    }

    def self.run(resistance:, wire_guage:, jig_diameter:, wire_type:)
      # area calculation inspired by http://www.rapidtables.com/calc/wire/awg-to-mm.htm
      area = 0.012668 * 92**((36-wire_guage)/19.5)

      radius = jig_diameter / 2

      circumference = radius * 2 * Math::PI

      resistivity = RESISTIVITY[wire_type]

      coil_length = (resistance * area) / resistivity
      wraps = coil_length / circumference

      wraps.round
    end
  end
end
