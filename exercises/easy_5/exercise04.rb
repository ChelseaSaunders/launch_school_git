# You have a bank of switches before you, numbered from 1 to n. Each switch is
# connected to exactly one light that is initially off. You walk down the row
# of switches and toggle every one of them. You go back to the beginning, and
# on this second pass, you toggle switches 2, 4, 6, and so on. On the third
# pass, you go back again to the beginning and toggle switches 3, 6, 9, and so
# on. You repeat this process and keep going until you have been through n
# repetitions.

# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is
# [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is
# [1, 4, 9].

# PROBLEM:
#   Input: Positive integer
#   Output: Array
#   Rules:
#     Explicit:
#       - Total number of lights = input number
#       - Lights are initially all off
#       - Must pass through lights the number of input times
#       - Each pass through is going incrimentally through the switches; the
#         incriment = the number of the iteration (first = every 1 switch,
#         second = every 2 switches, thirs = every 3 switches, etc.)
#       - Each time a switch is part of the iteration it is toggled to the
#         opposite position.
#       - The final array should return only the switches that were in the "on"
#         position in the final pass through.

#     Implicit:
#       - Lights can only be set to off or on

# EXAMPLES/TEST CASES:
# Provided:
# lights_on(5) == [1, 4]
# lights_on(10) == [1, 4, 9]

# DATA:

# ALOGORITHM:
# Create method called lights_on that takes one integer as an argument.
# Create an hash called lights that and create one key for each number in the
# range 1..input integer.  Set all of the values to off.
# Set a

# CODE:

def create_hash_with_value_off(hash, number)
  count = 1
  number.times do
    hash[count] = 'off'
    count += 1
  end
end

def toggle_lights(hsh, num)
  step_counter = 1

  num.times do
    step_counter.step(num, step_counter) do |step|
      if hsh[step] == 'on'
        hsh[step] = 'off'
      else
        hsh[step] = 'on'
      end
    end

    step_counter += 1
  end
end

def create_lights_on_array(hs, array)
  hs.each_pair { |key, value| array << key if value == 'on' }
end

def lights_on(integer)
  lights = {}

  create_hash_with_value_off(lights, integer)

  toggle_lights(lights, integer)

  lights_on_array = []

  create_lights_on_array(lights, lights_on_array)

  lights_on_array
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]
