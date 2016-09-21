def remove_dups(arr)
  arr.uniq
end

class Array
  def two_sum
    result = []
    arr_idx = (0...self.size).to_a

    arr_idx.combination(2).to_a.each do |pair|
      sum = self[pair.first] + self[pair.last]
      result << pair if sum == 0
    end
  result.sort
  end
end


def my_transpose(arr)
  arr.transpose
end
