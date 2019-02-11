def my_select(collection)
  if block_given?
    filter = []
    new_collection = []
    x = 0
    while x < collection.length
      filter.push(yield collection[x])
        if filter[x] == true
          new_collection.push(collection[1])
        end
      x += 1
    end


    return new_collection
  else
    print "This block should not run!"
  end
end
