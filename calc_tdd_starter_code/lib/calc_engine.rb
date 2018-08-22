class CalcEngine

  def run_calculator
    puts "Choose the type of Calculator"
    puts " 1 -basic, 2- Advanced ,3- BMI, 4 -Trip"
    type_of_calculation = gets.chomp
    case type_of_calculation
    when  "1"
      puts "Choose the basic operation"
      puts " 1 - Addition, 2 - Subtraction, 3 - Multiplication, 4 - Division"
      basic_operation = gets.chomp
      case basic_operation
      when "1"
        puts "Enter First number"
        num1 = gets.chomp.to_f
        puts "Enter Second number"
        num2 = gets.chomp.to_f
        def add_two_numbers(num1, num2)
          num1 + num2
        end
        puts add_two_numbers(num1,num2)
      when "2"
        puts "Enter First number"
        num1 = gets.chomp.to_f
        puts "Enter Second number"
        num2 = gets.chomp.to_f
        def subtract_two_numbers(num1, num2)
            num1 - num2
        end
          puts subtract_two_numbers(num1,num2)
      when "3"
        puts "Enter First number"
        num1 = gets.chomp.to_f
        puts "Enter Second number"
        num2 = gets.chomp.to_f
        def multiply_two_numbers(num1, num2)
            num1 * num2
        end
        puts multiply_two_numbers(num1,num2)
      when "4"
        puts "Enter First number"
        num1 = gets.chomp.to_f
        puts "Enter Second number"
        num2 = gets.chomp.to_f
        def divide_two_numbers(num1, num2)
           num1 / num2
        end
        puts divide_two_numbers(num1,num2)
      end
    when "2"
      puts "Choose 1 - Power and 2 - sqaureroot"
      advanced_operation = gets.chomp
      case advanced_operation
      when "1"
        puts "Enter the base number"
        num1 = gets.chomp.to_f
        puts "Enter the power number"
        num2 = gets.chomp.to_f
        def power_numbers(num1, num2)
          num1 ** num2
        end
        puts power_numbers(num1,num2)
      when "2"
        puts "Enter a number"
        num1 = gets.chomp.to_f
        def squareroot_of_number(num1)
          Math.sqrt(num1)
        end
        puts squareroot_of_number(num1)
      end
    when "3"
      puts "Choose 1 - Metric BMI and 2 - Imperial BMI"
      bmi_operation = gets.chomp
      case bmi_operation
      when "1"
        puts "Enter weight in KG"
        num1 = gets.chomp.to_f
        puts "Enter height in Metres"
        num2 = gets.chomp.to_f
        def metric_BMI(num1,num2)
          num1 / (num2 * num2)
        end
        puts metric_BMI(num1,num2)
      when "2"
        puts "Enter weight in Pounds"
        num1 = gets.chomp.to_f
        puts "Enter height in inches"
        num2 = gets.chomp.to_f
        def imperial_BMI(num1,num2)
          (num1 / (num2 * num2)) * 703
        end
        puts imperial_BMI(num1,num2)
      end
    when "4"
      puts "Enter distance"
      distance = gets.chomp.to_f
      puts "Enter speed"
      speed = gets.chomp.to_f
      puts "Enter fuel efficiency"
      fuelefficiency = gets.chomp.to_f
      puts "Enter Cost per gallon"
      costpergallon = gets.chomp.to_f
      def trip_time(distance,speed)
        distance / speed
      end
      def
        if speed > 60
          trip_cost(distance,speed,fuelefficiency,costpergallon)
          (distance / (fuelefficiency - (speed % 60) * 2)) * costpergallon
        else
          (distance / fuelefficiency) * costpergallon
        end
      end
      puts "Your trip will take #{trip_time} hours and will cost you £ #{trip_cost}"
    end
  end
end
calc = CalcEngine.new()
calc.run_calculator
