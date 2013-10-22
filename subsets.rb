def subsets(array)

  #base case
  return [[]] if array.empty?


  #array.each do |el|
  if array.size > 2

    perms = array.permutation(array.size-1).to_a

    perms.map! { |perm|  perm.sort! }.uniq!

    perms.delete(array[-2..-1])

    first_part = perms << array
    first_part << [array[0]]
  elsif array.size > 1
    first_part = [array] << [array[0]]
  else
    first_part = [array]
  end

  first_part + subsets(array[1..-1])



end