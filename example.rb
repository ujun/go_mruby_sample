class Sample

  def initialize
  end

  def print_pwd
    100.times do |num|
      puts num.to_s + " | " + (0...8).map{ (65 + rand(26)).chr }.join
    end
  end

end

class SampleSQLite

  attr_accessor :db

  def initialize(file = ":memory:")
    @db = SQLite3::Database::new(file)
  end

  def get
    @db.execute('select * from piyo') do |row|
      puts row.join("\t")
    end

    @db.execute('select  count(*) from piyo') do |row|
      puts row.join("\t")
    end
  end

  def put
    2.times do |num|
      begin
        @db.execute_batch('insert into piyo values (?, ?, ?)', num, (0...8).map{ (65 + rand(26)).chr }.join, (0...32).map{ (65 + rand(26)).chr }.join)
        @db.execute_batch('insert into piyo values (?, ?, ?)', num, (0...8).map{ (65 + rand(26)).chr }.join, (0...32).map{ (65 + rand(26)).chr }.join)
      rescue => exc
        puts exc
      end
    end
  end

  def create
    @db.execute_batch('create table piyo (id integer primary key, name text, comment text)')
  end

  def close
    @db.close
  end

end

pwd = Sample.new()
pwd.print_pwd

samplesqlite = SampleSQLite.new()
samplesqlite.create
samplesqlite.put
samplesqlite.get
samplesqlite.close
