class ComputerController < ApplicationController
    require 'colorize'
    def initialize()
        @data = []
    end

    def play(input=nil)
        return input
    end

    def size(data=[])
        if data.class == Array
            return data.length
        else
            return "invalid input"
        end
    end

    def store(input)
        puts @data.to_s.blue
        @data.push(input)
        return @data
    end

end
