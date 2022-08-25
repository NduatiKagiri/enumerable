module MyEnumerable
  def all
    list.each do |i|
      return false unless yield i
    end
    true
  end

  def any 
    list.each do |i| return true if yield i 
    end 
    false 
    end 
end
