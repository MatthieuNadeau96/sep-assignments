# A line of people at an amusement park ride
# There is a front to the line, as well as a back.
# People may leave the line whenever they see fit and those behind them take their place.
class Line
  attr_accessor :members

  def initialize
    self.members = []
  end

  def join(person)
    @members << person
  end

  def leave(person)
    @members.delete(person)
  end

  def front
    @members.first
  end

  def middle
    mid = (@members / 2).floor
    @members[mid]
  end

  def back
    @members.last
  end

  def search(person)
    i = index(person)
    i ? @members : nil
  end

  private

  def index(person)
    i = 0
    @members.each do
      @members[i] == person ? break : i += 1
    end
    i < @members.length ? i : nil
  end

end
