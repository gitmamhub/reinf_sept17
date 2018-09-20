
CORN = 20  # PER hectare
WHEAT = 30  #PER hectare

class Farm
  @@total_food = 0
  @@total_harvest = 0
  @@total_corn_field = []
  @@total_wheat_field = []

  def initialize
    @total_food = 0
    @total_harvest = 0
    @corn_field = []
    @wheat_field = []
    @@total_food = @@total_food + @total_food
    @@total_harvest = @@total_harvest + @total_harvest


  end

  #all the instance methods goes here
  def add_new_field
    @corn_field = []
    @wheat_field = []
    puts "What kind of field is it: corn or wheat? "
    corn_wheat = gets.chomp
      if corn_wheat == 'corn'
        puts "How large the field in hectares ?"
        corn_field = gets.to_i
        puts "Added a corn field of #{corn_field} hectares ! "
        @corn_field << corn_field
        @@total_corn_field << corn_field
        @@total_food = @@total_food + (CORN * corn_field)

      elsif
          corn_wheat == 'wheat'
          puts "How large the field in hectares ?"
          wheat_field = gets.to_i
          puts "Added a wheat field of #{wheat_field} hectares ! "
          @wheat_field << wheat_field
          @@total_wheat_field << wheat_field
          @@total_food = @@total_food + (WHEAT * wheat_field)
        else
          puts "Choose corn/wheat !!!"
      end

      # puts "corn field total  #{@corn_field}"
      # puts "corn field every time  #{corn_field}"
      #

  end

  def corn_field
    return @corn_field
  end
  def total_corn_field
    return @@total_corn_field
  end
  def total_wheat_field
    return @@total_wheat_field
  end

  def wheat_field
    return @wheat_field
  end

  def harvest


        self.corn_field.each do |num|
          puts "Harvesting #{CORN*num} food from #{num} hectares corn field."

        end
          self.wheat_field.each do |num|
            puts "Harvesting #{WHEAT*num} food from #{num} hectares wheat field."

        end


      puts "The Farm has #{@@total_food} harvested food so far."




  end








  def status



    self.total_corn_field.each do |num|
      puts "corn field is #{num} hectares"
    end

    self.total_wheat_field.each do |num|
      puts "wheat field is #{num} hectares"
    end

    puts "The Farm has #{@@total_food} harvested food so far."



#     farm has 0 harvested food so far (in the beginning )
#
#     Corn field is 50 hectares.
# Wheat field is 100 hectares.
# Corn field is 200 hectares.
# The farm has 13000 harvested food so far.
  end

  def relax
    puts "#{self.total_corn_field.sum} hectares of tall green stalks rustling in the breeze fill your horizon."
    puts "The sun hangs low, casting an orange glow on a sea of #{self.total_wheat_field.sum} hectares of wheat}"
    #
    # 50 hectares of tall green stalks rustling in the breeze fill your horizon.
    # The sun hangs low, casting an orange glow on a sea of 100 hectares of wheat.
  end
  # ......ends the instance methods




def main_menu
  while true # repeat indefinitely
    print_main_menu
    user_selected = gets.to_i
    call_option(user_selected)
  end
end

def print_main_menu
  puts "\n\n  SELECT YOUR OPTIONS : \n"
  puts '[1] <Field>   Add a new field '
  puts '[2] <Harvest> harvests crops and adds to total harvested'
  puts '[3] <Status>  displays some information about the farm'
  puts '[4] <Relax>   provides lovely descriptions of your fields'
  puts '[5] <Exit>    exits the program'
  puts "\nEnter a number: "
end

def call_option(user_selected)

  case user_selected
  when 1 then add_new_field
  when 2 then harvest
  when 3 then status
  when 4 then relax
  when 5 then puts('Exiting Program ..')
         exit
else

  puts 'Select the CORRECT number !! '
end

end
end # class farm declaration ends here


system('clear')
farm1 = Farm.new
farm1.main_menu
