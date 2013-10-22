def range_1(start, end_num)

  return [start] if start == end_num

  [end_num]+range_1(start,end_num-1)
end

def array_sum_rec(arr)

  return arr[0] if arr.size == 1

  arr[arr.size-1] + array_sum_rec(arr[0..(arr.size-2)])
end

def array_sum_it(arr)
  sum = 0

  arr.each do |elem|
    sum += elem
  end

  sum
end

def exp_1(base, num)

  return 1 if num == 0

  base * exp_1(base, num-1)
end

def exp_2(base, n)

  return 1 if n == 0

  if n.even?
    exp_2(base, n/2) * exp_2(base, n/2)
  else
    base * exp_2(base, (n - 1) / 2) * exp_2(base, (n - 1) / 2)
  end

end

def deep_dup(arr)
  new_arr = arr.dup

  new_arr.each_with_index do |e, i|
    if e.is_a?(Array)
      new_arr[i]=deep_dup(e)
    end
  end

  new_arr

end

def fib_rec(n)
  case n
  when 1
    [1]
  when 2
    [1,1]
  else
    fib_rec(n-1)+[fib_rec(n-1)[-1]+fib_rec(n-1)[-2]]
  end

end

def fib_it(n)

  start = [1,1]

  n.times do
    start << start[-1] + start[-2]
  end

  start[0..n-1]
end

def bsearch(array,target)
  sorted_array = array.sort

  sa_size = sorted_array.size

  mid = sa_size.odd? ? sa_size/2 : sa_size/2 - 1

  return mid if target == sorted_array[mid]

  if target < sorted_array[mid]
    bsearch(sorted_array[0..mid], target)
  else
    (sa_size/2+1) + bsearch(sorted_array[mid+1..-1], target)
  end
end

