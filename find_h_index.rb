require 'test/unit'

class Finder
    def get_h_index(array)
        h_index = 0
        
        array.sort.reverse.each_with_index do |h, i|
            h_index += 1 if h > i
        end
        h_index
    end
end

class TestFinder < Test::Unit::TestCase
    def setup
        @finder = Finder.new
    end

    def test_finder
        assert_equal 3, @finder.get_h_index([3, 0, 6, 1, 5])
        assert_equal 3, @finder.get_h_index([5, 0, 6, 1, 5])
        assert_equal 3, @finder.get_h_index([1, 2, 3, 4, 5])
        assert_equal 4, @finder.get_h_index([1, 2, 3, 4, 5, 6, 7])
    end
end