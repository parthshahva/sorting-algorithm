require 'rubygems'
require 'rspec'
require_relative '../sort.rb'

describe 'Sort' do
  describe '.selection_sort' do

    context 'when the argument is empty' do
      xit "returns an empty array" do
        expect(Sort.selection_sort([])).to eq([])
      end
    end

    context 'when the array has negative numbers' do
      xit "returns a sorted array" do
        expect(Sort.selection_sort([-1, 2, 5, -4])).to eq([-4, -1, 2, 5])
      end
    end

    context "when the array has one item" do
      xit "returns the array back to you" do
        expect(Sort.selection_sort([1])).to eq([1])
      end
    end

    context 'when the array has duplicates' do
      xit "returns a sorted array" do
        expect(Sort.selection_sort([1, 1, -1, 5, 7, 7, 7])).to eq([-1, 1, 1, 5, 7, 7, 7])
      end
    end

    context 'when the array is large and unordered' do
      before do
        @array = []
        1000.times{@array.push(rand(25))}
      end
      it "returns a sorted array" do
        expect(Sort.selection_sort(@array)).to eq(@array.sort)
      end
    end
    context 'when the array has floats' do
      xit "returns a sorted array" do
        expect(Sort.selection_sort([1.5, 1, -1, 5.5, 7.2, 7.1, 7])).to eq([-1, 1, 1.5, 5.5, 7, 7.1, 7.2])
      end
    end
  end
  describe 'Merge' do
      xit 'merges correct with input of two arrays and output of one sorted array' do
          array1 = [1, 5, 5, 7]
          array2 = [-1, 3, 5, 15, 20, 25, 60]
          expect(Sort.merge(array1, array2)).to eq([-1, 1, 3, 5, 5, 5, 7, 15, 20, 25, 60])
      end
      xit "returns a sorted array" do
        expect(Sort.merge_sort([7, 1, -1, 7, 5, 7, 1])).to eq([-1, 1, 1, 5, 7, 7, 7])
      end
  end
end




