module Sort

 def self.selection_sort(array)
        for index in 0...(array.length - 1)
            min_index = index

            for nested_index in index..(array.length - 1)
                if array[nested_index] < array[min_index]
                    min_index = nested_index
                end
            end
            array[index], array[min_index] = array[min_index], array[index]
        end
        return array
    end

  def self.merge_sort(array)
    return array if array.size <=1
    n = array.size
    middle_right = n/2
       left = array[0..middle_right + 1]
       red = Sort.merge_sort(left)
       right = array[middle_right..-1]
       blue = Sort.merge_sort(right)
       Sort.merge(red, blue)
  end

    def self.merge(array1, array2)
        result = []
        a = 0
        b = 0
        while array1.size > a  || array2.size > b
            if array1.size == a
                result = result + array2[b..-1]
                break
            elsif array2.size == b
                result = result + array1[a..-1]
                break
            elsif array1[a] >= array2[b]
                result.push(array2[b])
                b += 1
            elsif array1[a] < array2[b]
                result.push(array1[a])
                a += 1
            end
        end
        result
    end
end
