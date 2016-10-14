# Order of Complexity: O(1), O(log n), O(n), O(n log(n)), O(n^2), O(2^n), O(n!)
# We want a function to come at the beginning of the list


# O(1) "constant time" - time to complete is the same as n grows

def return_first_array_element(array)
    begin_time = Time.now
    array[0]
    end_time = Time.now
    run_time = end_time - begin_time
    return run_time
end

# O(n) "linear time" - time to complete rises linearly as n grows

def generate_array(n)
    begin_time = Time.now
    n.times.map{ Random.rand(10) }
    end_time = Time.now
    run_time = end_time - begin_time
    return run_time
end

# O(n^2) "quadratic time" - time to complete rises by a power of 2
    # real world example is comparing two lists that you have to match
    # run outer loop  n times (i.e, go through each item of List 1)
    # run inner looper n times for every run of outer loop  (i.e., for each item in List 1 go through each item in List 2)

def match_list_of_items(n)
    list1 = (0..n).to_a
    list2 = list1.shuffle

    begin_time = Time.now
    list1.each do |x|
        list2.each do |y|
            next if x == y
        end
    end
    end_time = Time.now
    run_time = end_time - begin_time
    return run_time
end

# O(log n) "logarithmic time" - incremental time to completion becomes smaller as n increases, before flattening
    # classic is binary search

def binary_search(n, from=0, to=nil)
    array = (0..n).to_a #create array with n items
    to = array.length - 1 unless to #reduce by 1 b/c index starts at 0 
    mid = (from + to)/2

    #goal is to return the value of n from the array through binary search
    begin_time = Time.now
    if n < array[mid]
        binary_search(n, from, mid-1)
    elsif n > array[mid]
        binary_search(n, mid+1, to)
    else
        puts mid
    end
    end_time = Time.now
    run_time = end_time - begin_time
    return run_time
end



