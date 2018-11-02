def first_anagram(str_1, str_2)  #O(n!)
  first_perm(str_1).include?(str_2)
end

def first_perm(str)
  str_1 = str.split("").permutation.to_a
  arr = []
  str_1.each do |item|
    arr << item.join("")
  end
  arr
end

# p first_anagram("permutation", "tionpermuta")

def second_anagram(str_1, str_2)    #O(n^3)
  str_2_array = str_2.split("") #O(n)
  str_1.chars.each do |chr|     #O(n)
    if str_2_array.include?(chr)  #O(n)
      str_2_array.delete_at(str_2_array.find_index(chr)) #O(1) + O(n)
    end 
  end
  str_2_array.empty? 
end

# p second_anagram("gizmo", "sally")

def third_anagram(str_1, str_2) #O(nlog(n))
  str_1.chars.sort == str_2.chars.sort #O(nlog(n)) + O(nlog(n))
end
# p third_anagram("elvis", "lives")

def fourth_anagram(str_1, str_2) #O(n)
  hash = Hash.new(0)
  str_1.chars.each do |letter| #O(n)
    hash[letter] += 1
  end
  str_2.chars.each do |letter| #O(n)
    hash[letter] -= 1
  end
  hash.values.all?(0)   #O(n)
end

p fourth_anagram("permutation", "tatpermuion")
