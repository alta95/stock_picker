def stock_picker(arr)
    buy=0
    sell=0
    profit=0

    for i in 0..arr.length do
        for j in i..arr.length-1 do
            if profit < arr[j]-arr[i]
                profit = arr[j]-arr[i]
                buy = i
                sell = j
            end       
        end 
    end

    puts 'Reminder: Day count started from zero'
    puts 'Buy: Day '+buy.to_s+' | Value:'+arr[buy].to_s
    puts 'Sell: Day '+sell.to_s+' | Value:'+arr[sell].to_s
    puts 'Profit: '+profit.to_s
end

arr=[17,3,6,9,15,8,6,1,10]
stock_picker(arr)