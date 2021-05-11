class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new}
    place_stones
  end

  def place_stones
    (0..5).each do |i|
      4.times do 
      @cups[i] << :stone
      end 
      (7..12).each do |i|
        4.times do 
          @cups[i] << :stone
        end 
      end 
    end 
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12 || start_pos == 6
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
      nums = @cups[start_pos]  #array
      @cups[start_pos] = []
      cup_idx = start_pos
      while !nums.empty?  
        cup_idx += 1
        cup_idx = 0 if cup_idx > 13
        if cup_idx == 6
          @cups[6] << nums.pop if current_player_name == @name1
        elsif cup_idx == 13
          @cups[13] << nums.pop if current_player_name == @name2
        else 
          @cup[cup_idx] << nums.pop
        end 
      end
      render
      next_turn(cup_idx)
  end

  def next_turn(ending_cup_idx)
    
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
