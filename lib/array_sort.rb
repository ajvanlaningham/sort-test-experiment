class Sorter
    def sort some_array
        size = some_array.size #I'm going to need an int variable to determine how many times I need to run the loop
        return some_array if size <=1 #this sends back the array by itself if theres only one element

        loop do
            switched = false #boolian vairable "did it switch", default being false

            (size -1).times do |i| #do the following operation (number of array elements)times.
                if some_array[i] > some_array[i+1] #if the next element is smaller
                    some_array[i], some_array[i+1] = some_array[i+1], some_array[i] #switch 'em. I had no idea you could do this! I am certain this will come in handy a lot in the future
                    switched = true #yeah they switched now do it again! 
                end
            end

            break if not switched #if if goes through the whole array and changes nothing! 
        end
        some_array #returns the array
    end
end