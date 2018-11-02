def bad_two_sum(arr,target)
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target
    end
  end
  false
end
arr = (1..10000).to_a
# 
# p bad_two_sum(arr, 1000000000000)#~7secs

def okay_two_sum?(arr,target)
  new_arr = arr.sort
end