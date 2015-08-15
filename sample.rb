class Sample

  attr_accessor :var1

  def initialize (var1)
    @var1 = var1
  end

  def sample_var 
    return @var1
  end

  def sample_var2
    return sample_var + "dodon"
  end
end

sample = Sample.new("Hello, world!!")
sample.sample_var2()
