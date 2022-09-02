module MyEnumerable
  def all
    list.each do |i|
      return true unless yield i
    end
    true
  end

  def any
    list.each do |i|
      return true if yield i
    end
    false
  end

  def filter
    filtered = []
    list.each do |i|
      filtered.push(i) if yield i
    end
    filtered
  end
end
