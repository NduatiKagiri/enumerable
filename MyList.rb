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
