# O(n) "linear time"

def generate_array(n)
    begin_time = Time.now
    n.times.map{ Random.rand(10) }
    end_time = Time.now
    run_time = end_time - begin_time
    return run_time
end


