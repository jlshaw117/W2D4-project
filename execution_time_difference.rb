def my_min_a(list)
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

def my_min_b(list)
  min = list.first
  list.each do |num|
    if num < min 
      min = num 
    end
  end
  min
end
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ].concat((1..10000).to_a)
my_min_b(list)

