# Refactor.
# Hint: Don't change the constructor parameter list for this
#       refactoring.
# Hint: Let the existing code use the new code.

class Farm

  attr_reader :plots

  def initialize
    corn = Plant.new("Sugar Baby", 3)
    radish_1 = Plant.new("Red Boomer", 1)
    radish_2 = Plant.new("Plump Pucker", 1)
    cucumber = Plant.new("Green Lady", 2)
    tomato = Plant.new("Dark Plump", 2)
    beet_1 = Plant.new("Rainbow", 1)
    beet_2 = Plant.new("Deep Darkness", 1)
    plot_a = Plot.new("Plot A", corn, radish_1, radish_2)
    plot_b = Plot.new("Plot B", cucumber, tomato, beet_1, beet_2)
    @plots = [plot_a, plot_b]
  end

  def number_of_plots
    plots.size
  end

  def total_number_of_plants
    plots.reduce(0) { |total, plot| total += (plot.num_plants) }
  end

  def total_plant_heights
    plots.map{ |i| i.plant_heights}.sum
  end

end

class Plant
  attr_reader :name, :height

  def initialize(name, height)
    @name = name
    @height = height
  end

end

class Plot
  attr_reader :name, :plants

  def initialize(name, *plants)
    @name = name
    @plants = plants
  end

  def num_plants
    plants.length
  end

  def plant_heights
    plants.map{ |i| i.height}.sum
  end

end