require_relative 'enumerable' 

class MyList 
    include MyEnumerable 
    attr_reader :list 
end 
