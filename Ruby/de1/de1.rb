
# Bai 1
# params = {"supplier"=>{"name"=>"Test lay params", "tax_number"=>"0110254854", "address"=>"Tokyo", "supplier_type"=>"personal", "bank_accounts"=>{"0"=>{"account"=>"847445", "branch_name"=>"VCB"}, "1"=>{"account"=>"985784", "branch_name"=>"ACB", "_destroy"=>"false"}}}}

# puts params['supplier']['bank_accounts']['1']['branch_name']

# params['type'] = 'personal'

# puts params

# Bai 2
# a =  [2,20,1,"/a","/c"]
# b = [1,"/c/a/","/b","/a",50]
# c = 1

# puts b.include? c

# def get_elements(a,b)
#   result = []
#   b.each do |element|
#     if a.include? element
#       result.push element
#     end
#   end
#   return result
# end

# print get_elements(a,b)

# def get_elements_in_a(a,b)
#   b.each do |element|
#     if a.include? element
#       a.delete(element) 
#     end
#   end 
#   return a
# end

# print get_elements_in_a(a,b)

module Price
  def min_ticket_need_sell
    puts "You need sell at least 100 ticket to fly"
  end
end

class Plane
  include Price
  def flight_attendant(count)
    puts "In flight have "+count.to_s+" attendant"
  end

  def self.max_fly_speed
    puts "913 km/h"
  end
end

vietnam_airline = Plane.new.flight_attendant(10)
vietjet  = Plane.new.flight_attendant(20)
Plane.max_fly_speed
Plane.new.min_ticket_need_sell
