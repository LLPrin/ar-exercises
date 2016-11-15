require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

### Exercise 5: Calculations

# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.

#1
@total_revenue = Store.sum(:annual_revenue)
puts @total_revenue

#2.
@average_revenue = Store.average(:annual_revenue)
puts @average_revenue

#3.
@over_1M = Store.where("annual_revenue > ? ", 1000000)
puts "Stores with over 1M in sales"
for store in @over_1M
  puts store[:name]
  puts store[:annual_revenue]
end


