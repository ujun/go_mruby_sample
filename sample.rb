class Sample

  def initialize
  end

  def print_pwd
    100.times do |num|
      puts num.to_s + " | " + (0...8).map{ (65 + rand(26)).chr }.join
    end
  end

end

pwd = Sample.new()
pwd.print_pwd
