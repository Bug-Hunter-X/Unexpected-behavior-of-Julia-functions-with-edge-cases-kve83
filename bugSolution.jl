```julia
function my_function(x)
  if x > 0
    return x^2
  elseif x == 0
    return 0 # Explicitly handle the case where x is 0
  else
    return -x
  end
end

x = -5
result = my_function(x)
println(result) # Output: 5

x = 5
result = my_function(x)
println(result) # Output: 25

x = 0
result = my_function(x)
println(result) # Output: 0

#Improved another_function
function another_function(arr)
  if isempty(arr) #Handle empty array case
    return arr #return empty array
  else
    for i in eachindex(arr)
      if arr[i] == 0
        arr[i] = 1
      end
    end
    return arr
  end
end

arr = [0, 1, 2, 0, 3]
result = another_function(arr)
println(result) # Output: [1, 1, 2, 1, 3]

arr = []
result = another_function(arr)
println(result) # Output: []
```