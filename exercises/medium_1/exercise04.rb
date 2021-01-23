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
#
# Create an hash called lights that and create one key for each number in the
# range 1..input integer.
#   - To do this (above), create a method that takes two arguments, a hash and
#     a number.
#   - In that method, create a counter set to 1, use the input number for a loop
#     to iterate through the hash and set a key/value pair with the key as the
#     count variable, and the value as "off", then add one to the count.
# In the lights_on method, call the create_hash method with the lights hash and
# the input integer as the two arguments.
#
# Iterate through the lights hash and alter the values according to the rules
# (change every 1 value the first time, every 2nd value the second time, etc.)
#   To do this:
#   - Create a new method (above/outside of the lights_on method), toggle_lights
# that takes two arguments, a hash and a number
#   - create a counter set to 1
#   - create a loop that operates input number times and uses the .step method
#     to change the values in the hash that correspond to each step.
#   - To change those values, use an if/else statement that changes "on" to
#     "off" and the reverse.
# In the lights_on method, call the toggle_lights method on the lights hash and
# the original input number.
#
# Create an array that consists of only the keys that have the value "on"
#   To do this:
#     - In the lights_on method, set an empty array, lights_on_array
#     - Above/outside the lights_on method create a create_lights_on_array
#       method that takes two arguments, a hash and an array and iterates
#       through the hash, pushing all keys with the value 'on' into the array.
# In the lights_on method, call the create_lights_on_array on lights, and
# lights_on_array
#
# In the lights_on method, return the lights_on_array

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
