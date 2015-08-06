class FizzBuzz
  def self.normal list
    res = []
    list.each do |x|
      if x % 3 == 0
        res << 'Fizz'
      elsif x % 5 == 0
        res << 'Buzz'
      end
    end
    res
  end

  def self.inverse list
    sequence = []
    x = 1
    end_loop = false

    while x <= 100 && end_loop == false
      index = 1
      while index <= 100 && end_loop == false
        if self.normal((index..(index + x - 1)).to_a) == list
          sequence = (index..(index + x - 1)).to_a 
          end_loop = true
        end
        index += 1
      end
      x += 1
    end
    sequence
  end
end
