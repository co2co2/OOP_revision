class Cat
  attr_accessor :name, :preferred_food, :meal_time
  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time > 0
      if @meal_time < 12
        return "#{@meal_time} am"
      else
        return "#{meal_time-12}pm "
      end
    else
      return "12 pm"
    end
  end
  def meow
    "My name is #{name} and I eat #{preferred_food} at #{eats_at}"
  end

end
