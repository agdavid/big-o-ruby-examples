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


