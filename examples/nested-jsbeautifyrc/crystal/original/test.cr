# A unicorn is a **legendary animal** (see the `Legendary` module) that has been
         # described since antiquity as a beast with a large, spiraling horn projecting
        # from its forhead.
#
# To create a unicorn:
#
            # ```
            # unicorn = Unicorn.new
            # unicorn.speak
            # ```
#
# The above produces:
#
     # ```text
       # "I'm a unicorn"
# ```
          #
# Check the number of horns with `#horns`.
class Unicorn
 include Legendary

  # Creates a unicorn with the specified number of *horns*.
def initialize(@horns = 1)
raise "Not a unicorn" if @horns != 1
end

  # Returns the number of horns this unicorn has
    #
  # ```
            # Unicorn.new.horns # => 1
  # ```
  def horns
                @horns
 end

     # ditto
  def number_of_horns
      horns
  end

# Makes the unicorn speak to STDOUT
  def speak
puts "I'm a unicorn"
  end

  # :nodoc:
          class Helper
          end
end
