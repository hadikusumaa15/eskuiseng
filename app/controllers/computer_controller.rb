class ComputerController < ApplicationController
    def initialize()
        @data = []
        @size = 0
        @number = 0
    end

    def play(input=nil)
        return input
    end

    def size(data)
        return @size
    end

    def store(input)
        @data.push(input)
        @size = @size + 1
        return @data
    end

    def delete(input)
        @data = @data - [input]
        @size = @size - 1
        return @data
    end

    def add_numbers(arr)
        @number = loop(arr, @number)
        return @number
    end

    def substract_numbers(numbers_a, numbers_b)
        total_a = 0
        total_b = 0
        total_a = loop(numbers_a, total_a)
        total_b = loop(numbers_b, total_b)
        return total_a - total_b
    end

    def loop(array, total)
        array.each do |a|
            total = total + a
        end
        return total
    end

end
