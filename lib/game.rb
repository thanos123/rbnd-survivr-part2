class Game
  attr_reader :tribes

  def initialize(*tribes)
    @tribes = *tribes
  end

  def add_tribe(tribe)
    @tribes << tribe
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes = []
  end

  def merge(new_tribe_name)
    members = []
    @tribes.each{ |tribe| members.push(*tribe.members) }
    Tribe.new(name: new_tribe_name, members: members)
  end

  def individual_immunity_challenge
    @tribes[0]
  end
end