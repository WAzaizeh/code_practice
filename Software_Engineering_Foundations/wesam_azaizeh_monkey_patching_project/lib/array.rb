# Monkey-Patch Ruby's existing Array class to add your own custom methods

require 'set'

class Array
    ## PART 1 ##

    def span
        !self.empty? ? self.max - self.min : nil
    end

    def average
        !self.empty? ? self.sum / (self.size * 1.0) : nil
    end

    def median
        return nil if self.empty?
        self.sort!
        center =  self.size / 2
        self.count.even? ? (self[center] + self[center-1]) / 2.0 : self[center]  
    end

    def counts
        count = Hash.new(0)
        self.map {|c| count[c] += 1}
        count
    end

    ## PART 2 ##

    def my_count(a)
        count = 0
        self.map {|n| count += 1 if n == a}
        count
    end 

    def my_index(a)
        return nil if !self.include?(a)
        self.find_index {|n, i| n == a }
    end

    def my_uniq
        self.to_set.to_a
    end

    def my_transpose
        arr = Array.new( self.size) { Array.new( self.size) }
        self.each_with_index do |row, row_index|
            self.each_with_index do |column, col_index|
                arr[row_index][col_index] = self[col_index][row_index]
            end
        end 
        arr
    end

end