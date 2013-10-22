def merge_sort(m)
  return m if m.size <= 1

  left, right = [],[]
  mid = m.size/2

  m[0...mid].each { |el| left << el }
  m[mid..-1].each { |el| right << el }

  left, right = merge_sort(left), merge_sort(right)

  merge(left, right)
end

def merge(left, right)
  result = []

  while left.size > 0 || right.size > 0

    if left.size > 0 && right.size > 0
      #find the smaller of the first two elements
      smaller = left.first <= right.first ? left : right
      result << smaller.shift
    elsif left.size > 0

      result << left.shift
    elsif right.size > 0

      result << right.shift
    end

  end

  result
end
