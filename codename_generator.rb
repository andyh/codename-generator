class CodeNameGenerator
  def initialize(generator)
    # load a generator
    @codenames = %w{wolverine iceman cyclops storm rogue magneto}
  end
  
  def generate
    @codenames[rand(@codenames.size)]
  end
end

codename = CodeNameGenerator.new(nil)
puts codename.generate