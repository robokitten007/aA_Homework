#sluggish

def biggest_fish(fishes)
    res =''
    (0...fishes.length-1).each do |i|
        (i+1...fishes.length).each do |j|
            if fishes[i].length < fishes[j].length
                res = fishes[j]
            end 
        end 
    end 
    res
end 

fishes =['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
puts biggest_fish(fishes)
#=> "fiiiissshhhhhh"

#dominant (o(nlogn)) merge_sort

class Array
  #this should look familiar
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end

def dominant_biggest_fish(fishes)
  prc = Proc.new { |x, y| y.length <=> x.length }
  fishes.merge_sort(&prc)[0]
end

# clever 
def clever_biggest_fish(fishes)
    biggest = ''
    (0...fishes.length).each do |i|
        if fishes[i].length > biggest.length 
            biggest = fishes[i]
        end 
    end 
    biggest
end 

# puts clever_biggest_fish(fishes)
