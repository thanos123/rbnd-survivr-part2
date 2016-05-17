class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    final_votes = Hash[finalists.collect{ |finalist| [finalist, 0] }]
    @members.each do |member|
      finalist = finalists.sample
      puts "#{member} votes for #{finalist}"
      final_votes[finalist] += 1
    end
    final_votes
  end

  def report_votes(final_votes)
    final_votes.each do |finalist, votes|
      puts "#{votes} votes for #{finalist}"
    end
  end

  def announce_winner(final_votes)
    puts
    winner = final_votes.key(final_votes.values.max)
    puts "The WINNER is #{winner}"
    winner
  end
end