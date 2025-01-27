```julia
function my_function(x)
  if x > 0
    return x^2
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

# Unexpected behavior:

x = 0
result = my_function(x)
println(result) # Output: 0, this might not be the expected behavior

# Another example:

function another_function(arr)
  for i in eachindex(arr)
    if arr[i] == 0
      arr[i] = 1
    end
  end
  return arr
end

arr = [0, 1, 2, 0, 3]
result = another_function(arr)
println(result) # Output: [1, 1, 2, 1, 3] which is fine

arr = []
result = another_function(arr)
println(result) # Output: [] which might be unexpected 
```