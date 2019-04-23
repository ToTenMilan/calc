class Calc
  def initialize
    @result = nil
    @method = nil
  end

  def plus
    @method = :+
    self
  end

  def minus
    @method = :-
    self
  end

  def times
    @method = :*
    self
  end

  def divided_by
    @method = :/
    self
  end

  def zero;  calculate 0; end
  def one;   calculate 1; end
  def two;   calculate 2; end
  def three; calculate 3; end
  def four;  calculate 4; end
  def five;  calculate 5; end
  def six;   calculate 6; end
  def seven; calculate 7; end
  def eight; calculate 8; end
  def nine;  calculate 9; end

  private

  def calculate(num)
    if @result
      @result.send(@method, num)
    else
      @result = num
      self
    end
  end
end

puts Calc.new.seven.plus.one           # returns 8
puts Calc.new.five.minus.six           # returns -1
puts Calc.new.two.times.seven          # returns 14
puts Calc.new.eight.divided_by.four    # returns 2