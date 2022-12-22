class Car
  def run(distance)
    puts "車で#{distance}キロ走ります"
  end
end

class Mycar < Car
end

mycar = Mycar.new
mycar.run(5)

puts Mycar.superclass