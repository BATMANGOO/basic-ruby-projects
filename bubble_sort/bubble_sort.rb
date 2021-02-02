# take an array and compare the previous with the next index
# if the previous is larger with the next then the next becomes the previous and the previous becomes the next.


def bubble_sort(arr)
  arr_length = arr.size
  
  loop do 
    swithed = false
    (arr_length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swithed = true
      end
    end
    break if not swithed
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])