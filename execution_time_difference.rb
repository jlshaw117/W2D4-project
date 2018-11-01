def my_min_a(list) #O(n^2)
  dup_list = list.dup
  list.each do |number_1|
    # dup_list = list.dup
    dup_list.each do |number_2|
      if number_1 < number_2
        dup_list.delete(number_2)
      end
    end
    
  end
  dup_list[0]
end

def my_min_b(list)#O(n)
  min = list.first
  list.each do |num|
    if num < min 
      min = num 
    end
  end
  min
end
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ].concat((1..10000).to_a)
# my_min_b(list)

def largest_contiguous_sum(list)
  subsets = []
  list.each_with_index do |num, i|
    list.each_with_index do |num2,i_2|
      next if i_2 < i
      subsets << list[i..i_2]
    end
  end
  subsets.map do |arr|
    arr.reduce(:+)
  end.max
end


def largest_contiguous_sum_b(list)
  largest_sum = list[0]#O(1)
  current_sum = list[0]#O(1)
  return list.max if list.all? {|el| el < 0} #O(n)
  (1...list.length).each do |i|
    current_sum = 0 if current_sum < 0
    current_sum += list[i]
    largest_sum = current_sum if current_sum > largest_sum  
  end
  largest_sum
end

p largest_contiguous_sum([5, 3, -7])


# (0...list.length).each do |i|    
#   if list[i..-1].sum > largest_sum
#     largest_sum = list[i..-1].sum
#   end
# end
# largest_sum



























 



#