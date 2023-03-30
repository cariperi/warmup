# Write an algorithm that, given three sorted collections, can turn them into a single sorted collection.


# Ruby built-in sort method solution
def sort_collections(a, b, c)
  combined_collection = [a, b, c].flatten
  combined_collection.sort
end

collection_1 = ["b", "e", "g"]
collection_2 = ["a", "c", "f"]
collection_3 = ["d", "h", "i"]

sorted = sort_collections(collection_1, collection_2, collection_3)

# Bubble sort algorithm solution
# Source: https://medium.com/@limichelle21/read-it-learn-it-build-it-sorting-algorithms-in-ruby-ead04b04baa6

def bubble_sort_collections(a, b, c)
  collection = [a, b, c].flatten
  length = collection.length
  return collection if collection.count <= 1

  swap = true
  while swap == true
    swap = false
    (length - 1).times do |index|
      if  collection[index] >  collection[index + 1]
         collection[index],  collection[index + 1] =  collection[index + 1],  collection[index]
        swap = true
      end
    end
  end
  collection
end

collection_1 = ["b", "e", "g"]
collection_2 = ["a", "c", "f"]
collection_3 = ["d", "h", "i"]

sorted = bubble_sort_collections(collection_1, collection_2, collection_3)
p sorted