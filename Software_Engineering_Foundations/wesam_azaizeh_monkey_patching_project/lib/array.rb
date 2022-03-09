# Monkey-Patch Ruby's existing Array class to add your own custom methods
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
end

p ["a", "b", "a", "b", "b", "c"].counts