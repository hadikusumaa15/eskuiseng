class ComputerController < ApplicationController
    def initialize()
        @data = []
        @size = 0
    end

    def play(input=nil)
        return input
    end

    def size(data=[])
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

end
