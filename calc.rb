class Calc
  def initialize
    @result = nil
    @operator = nil
  end

  def plus;       set_operator :+; end
  def minus;      set_operator :-; end
  def times;      set_operator :*; end
  def divided_by; set_operator :/; end

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
      @result.send(@operator, num)
    else
      @result = num
      self
    end
  end

  def set_operator(opr)
    @operator = opr
    self
  end
end

puts Calc.new.seven.plus.one           # returns 8
puts Calc.new.five.minus.six           # returns -1
puts Calc.new.two.times.seven          # returns 14
puts Calc.new.eight.divided_by.four    # returns 2