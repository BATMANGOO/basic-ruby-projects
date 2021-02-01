def stock_picker(arr)
  stock_picks = {}
  arr.each_with_index do |price1, index1|
    arr.each_with_index do |price2, index2|
      if index2 > index1
        stock_picks[[index1, index2]] = price2 - price1
      end
    end
  end
  stock_picks = stock_picks.sort_by { |k, v| v }
  stock_picks[-1];
end

puts stock_picker([17,3,6,9,15,8,6,1,10])