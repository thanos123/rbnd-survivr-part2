class Game
  attr_reader :tribes

  def initialize(*tribes)
    @tribes = tribes
  end

  def add_tribe(tribe)
    @tribes << tribe
  end

  def immunity_challenge
    @tribes.sample # losing tribe
  end

  def clear_tribes
    @tribes = []
  end

  def merge(new_tribe_name)
    members = []
    @tribes.each{ |tribe| members.push(*tribe.members) }
    clear_tribes
    merged_tribe = Tribe.new(name: new_tribe_name, members: members)
    add_tribe(merged_tribe)
    merged_tribe
  end

  def individual_immunity_challenge
    @tribes[0].members.sample
  end
end