class TwoSum
  # attr_reader :nums :target
  def initialize(nums, target)
    @nums = nums
    @target = target
  end
  
  def solution()
    dict = Hash.new
    @nums.each_with_index do |num, i|
      if dict[@target - num]
        return [dict[@target-num], i]
      end
      dict[num] = i
    end
  end
end
