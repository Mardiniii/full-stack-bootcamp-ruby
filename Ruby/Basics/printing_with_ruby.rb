# Different ways to print with ruby

require 'pp'

# Puts
puts 'Imprimiendo en Ruby con puts'
p 'Impriemiendo en Ruby con p'
puts 'Seguimos imprimiendo'

# Print doesn't have a new line character
print "Linea 1 \n"
print "\t Linea 2 \n"
print '\tLinea 3\n'

# Puts with block
puts"""
Esta es mi linea numero 1
Esta es mi linea numero 2
Esta es mi linea numero 3
"""

# Remember pp (Pretty Print)
# Let's create a particular object in Ruby
hash = { loans: 0, holidays: 0.375, severance: 1116667, deductions: 0, with_cause: true, total_value: 2183272, compensation: 0, trial_period: false, service_bonus: 1116667, holidays_value: -75000, severance_days: 67, termination_base: 6000000.0, termination_date: "2016-09-22", termination_bonus: 0, total_worked_days: 67, service_bonus_days: 67, severance_interests: 24939, contract_end_date_before_terminate: nil }

# Can you see the difference between puts and pp?
puts hash
pp hash