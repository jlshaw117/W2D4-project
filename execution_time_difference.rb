def my_min(list)
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