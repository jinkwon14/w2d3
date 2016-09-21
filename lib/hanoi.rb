require 'byebug'

class Hanoi
  attr_reader :disc_num
  attr_accessor :pile
  def initialize(disc_num = 3)
    @pile = Array.new(3) {Array.new}
    @disc_num = disc_num

    @pile.first.concat((1..3).to_a.reverse)
  end

  def move(from, to)
    @pile[to] << @pile[from].pop
  end

  def valid_move?(from, to)
    return false if @pile[from].empty?
    return true if @pile[from].last < @pile[to].first
    return true if @pile[to].empty?
    false
  end
  
  def won?
    return true if @pile[1] == [3, 2, 1] || @pile[2] == [3, 2, 1]
    false
  end


end
