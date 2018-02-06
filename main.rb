# puts "Simple Calculator"
# print ">>"
# input = gets.chomp.split
# operand1 = input[0].to_i
# operand2 = input[2].to_i
# operator = input[1].to_sym

# result = case operator
#     when :+ then operand1 + operand2
#     when :- then operand1 - operand2
#     when :* then operand1 * operand2
#     when :/ then operand1 / operand2
#     when :% then operand1 % operand2
#     else nill
# end        

# puts ">> #{result}"

class Elevator
    GROUND_FLOOR = 1
    TOTAL_FLOOR = 10
    @@previous_floor =0
    TRAVEL_TIME = 3
    DO_DC = 10
   
   
    attr_reader :elevator_on_floor
    attr_accessor :elevator_target_floor, :new_floor
   
    def initialize
        @elevator_target_floor = GROUND_FLOOR
    end
  
    def call_elevator_to_floor( new_floor,entry_count)
        if new_floor <= TOTAL_FLOOR
            puts "strated to floor #{new_floor}"
            time_to_display = ((new_floor-@@previous_floor)*TRAVEL_TIME).abs
            puts "time left to reach #{time_to_display} seconds"
            @@previous_floor = new_floor
            time_passes(new_floor,time_to_display,$entry_count)
        else
          puts 'Invalid floor enter between (1 -10)'
        end
    end
  
    def time_passes(new_floor,time_to_display,entry_count)
       if @new_floor != @elevator_target_floor
          sleep time_to_display.abs
          $entry_count-=1
          puts "elevator has arrived at #{new_floor}"
        else
            puts "elevator has arrived at your floor"
        end
    end
  end
  
  Elevator = Elevator.new
  puts 'Enter the floor number to reach(1-10)'
  $entry_count =0
  while line = gets
    $entry_count+=1
    line.chomp!
       if line         
            puts elevator.call_elevator_to_floor( line.to_i,$entry_count )   
         end
  end