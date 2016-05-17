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
    clear_tribes
    @tribes[0] = Tribe.new(name: new_tribe_name, members: members)
  end

  def individual_immunity_challenge
    members = @tribes[0].members
    winner = members.sample
    members.delete(winner)
    @tribes[0].members.delete(members.sample)
  end
end