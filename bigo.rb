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



