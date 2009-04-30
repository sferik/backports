class Integer
  # Standard in ruby 1.9. See official documentation[http://ruby-doc.org/core-1.9/classes/Fixnum.html]
  def even?
    self[0].zero?
  end unless method_defined? :even?

  # Standard in ruby 1.9. See official documentation[http://ruby-doc.org/core-1.9/classes/Fixnum.html]
  def odd?
    !even?
  end unless method_defined? :odd?

  # Standard in ruby 1.9. See official documentation[http://ruby-doc.org/core-1.9/classes/Fixnum.html]
  def ord
    self
  end

  # Standard in ruby 1.9. See official documentation[http://ruby-doc.org/core-1.9/classes/Fixnum.html]
  def succ
    self + 1
  end unless method_defined? :succ

  # Standard in ruby 1.9. See official documentation[http://ruby-doc.org/core-1.9/classes/Fixnum.html]
  def pred
    self - 1
  end unless method_defined? :succ
  
  alias_method :magnitude, :abs unless method_defined? :magnitude
  
  make_block_optional :downto, :times, :upto, :test_on => 42, :arg => 42
end

class Numeric
  make_block_optional :step, :test_on => 42, :arg => [100, 6]
end