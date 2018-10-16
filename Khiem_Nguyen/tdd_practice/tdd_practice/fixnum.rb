class Fixnum
    def prev
        return self - 1
    end

    def skip
        return self + 2
    end

    def double
        return self * 2
    end

    def my_upto num
        for i in self..num
            yield i
        end
    end

    def my_times
        for i in 1..self
            yield i
        end
    end
end
