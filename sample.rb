class Sample

  def initialize
  end

  def print_pwd
    File.open("/etc/passwd", "r") do |file|
      # file.each_line do |line|
      #   puts line
      # end
      while(line = file.gets)
        puts line
      end
    end
  end

end

pwd = Sample.new()
pwd.print_pwd
