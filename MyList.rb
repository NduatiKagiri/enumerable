require_relative 'enumerable'

class MyList
  include MyEnumerable
  attr_reader :list

  def initialize(*numbers)
    @list = []
    numbers.each { |number| @list.push(number) }
  end

  def each(&block)
    @list.each(&block)
  end
end

# tests

list = MyList.new(1, 2, 3, 4) 
# Test #all? 
p(list.all { |e| e < 5 }) 
p(list.all { |e| e > 5 }) 
# Test #any? 
p(list.any { |e| e == 2 }) 
p(list.any { |e| e == 5 }) 
# Test #filter 
p(list.filter(&:even?)) 
