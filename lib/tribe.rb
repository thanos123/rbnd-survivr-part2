class Tribe
  attr_reader :name, :members

  def initialize(options)
    @name = options[:name]
    @members = options[:members]
    puts "Tribe #{name} created"
  end

  def to_s
    @name
  end

  def tribal_council(options)
    members = @members.clone
    members.delete(options[:immune])
    @members.delete(members.sample)
  end
end