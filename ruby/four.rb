module Lol
    def Lol.do_i_work()
        puts "I succeeded"
    end
    def Lol.get_range_array(n)
        i = 0
        numbers = []

        (0...n).each do |i|
            numbers << i
            i += 1
            puts "The loop is in iteration ##{i}"
        end
        Lol.do_i_work
        do_i_work
        return numbers
    end

    
end

numbers = Lol.get_range_array(5)

numbers.each {|i| puts i}

numbers.each do |i|
    puts i
end

for i in numbers
    puts i
end

Lol.do_i_work