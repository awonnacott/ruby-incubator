class SecretSanta
  def initialize (*names)
    @names = names.uniq.flatten
  end
  def initialize
    @names = []
    begin
      print "Enter a name (or leave blank to finish): "
      name = gets.chomp!
      @names.push(name) unless name == ""
    end until name == ""
  end
  def show
    10.times { print "\n" }
    recievers = @names.dup.shuffle
    @names.each do |name|
      reciever = recievers.dup.delete_if {|r| r == name}.pop
      recievers.delete_if {|r| r == reciever}
      print "#{name}, come forth and press return!"
      gets
      print "#{name}, gift to #{reciever}!\nPress return, then leave!"
      gets
      10.times { print "\n" }
    end
  end
end

SecretSanta.new.show