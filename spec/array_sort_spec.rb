require 'array_sort'

describe Sorter do 

    describe ".sort" do 
        sort_var = Sorter.new
        context "given [5,4,1,3,2]" do 
            it "should return [1,2,3,4,5]" do
                expect(sort_var.sort([5,4,1,3,2])).to eql([1,2,3,4,5])
            end 
        end
        context "given ['i', 'c', 'b']" do 
            it "should return ['b', 'c', 'i']" do
                expect(sort_var.sort(["i", "c", "b"])).to eql(["b", "c", "i"])
            end 
        end
        context "given ['cat', 'car', 'cab']" do 
            it "should return ['cab', 'car', 'cat']" do
                expect(sort_var.sort(["cat", "car", "cab"])).to eql(["cab", "car", "cat"])
            end 
        end
        context "given [5,4,1,3,2]" do 
            it "should return [1,2,3,4,5]" do
                expect(sort_var.sort([5,4,1,3,2])).to eql([1,2,3,4,5])
            end 
        end
        context "given [5,1,'a','b']" do 
            it "should return (ArgumentError)" do
                expect{sort_var.sort([5,1,"a","b"])}.to raise_error(ArgumentError)
            end 
        end
        context "given []" do 
            it "should return []" do
                expect(sort_var.sort([])).to eql([])
            end 
        end
        context "given [27]" do 
            it "should return [27]" do
                expect(sort_var.sort([27])).to eql([27])
            end 
        end
        context "given [-3,1,8,-41]" do 
            it "should return [-41,-3,1,8]" do
                expect(sort_var.sort([-3,1,8,-41])).to eql([-41,-3,1,8])
            end 
        end
        context "given ['cat', 'car', 'cab', 'cab', 'car']" do 
            it "should return ['cab', 'cab', 'car', 'car', 'cat']" do
                expect(sort_var.sort(["cat", "car", "cab", "cab", "car"])).to eql(["cab", "cab", "car", "car", "cat"])
            end 
        end
    end
end