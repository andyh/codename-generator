#!/usr/bin/env ruby -wKU

class CodeNameGenerator
  def initialize(generator)
    # load a generator    
    @codenames = File.open(File.dirname(__FILE__)+"/data/"+generator+".txt") {|t| t.readlines }
  end
  
  def generate
    @codenames[rand(@codenames.size)]
  end
end

unless ARGV.length == 1
  puts "Usage: specify a codename list to generate from"
  exit
end

codename = CodeNameGenerator.new(ARGV[0])
5.times {
  puts codename.generate  
}
