# Write an algorithm that, given three sorted collections, can turn them into a single sorted collection.

def sort_collections(a, b, c)
  combined_collection = [a, b, c].flatten
  combined_collection.sort
end

collection_1 = ["b", "e", "g"]
collection_2 = ["a", "c", "f"]
collection_3 = ["d", "h", "i"]

sorted = sort_collections(collection_1, collection_2, collection_3)
p sorted
