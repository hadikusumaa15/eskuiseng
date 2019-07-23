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
        arr.each do |num|
            @number = @number + num
        end
        return @number
    end

    def substract_numbers(numbers_a, numbers_b)
        total_a = 0
        total_b = 0
        numbers_a.each do |a|
            total_a = total_a + a
        end

        numbers_b.each do |b|
            total_b = total_b + b
        end
        return total_a - total_b
    end

end
