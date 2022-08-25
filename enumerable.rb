module MyEnumerable
  def all
    list.each do |i|
      return false unless yield i
    end
    true
  end
end
