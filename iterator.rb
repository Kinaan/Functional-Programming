#!/bin/ruby

module Iterator
  def self.map obj
    mapped = []
    for i in 0..obj.length - 1
      mapped << yield(obj[i])
    end
    mapped
  end

  def self.filter obj
    filtered = []
    for i in 0..obj.length - 1
      result = yield(obj[i])
      filtered << obj[i] if result
    end
    filtered
  end

  def self.reduce obj
    reduced_result = obj.first
    for i in 1..obj.length - 1
      reduced_result = yield reduced_result, obj[i]
    end
    reduced_result
  end

  def self.fold_left obj, initial_value
    folded_result = initial_value
    for i in 0..obj.length - 1
      folded_result = yield folded_result, obj[i]
    end
    folded_result
  end

  def self.fold_right obj, initial_value
    folded_result = initial_value
    i = obj.length - 1
    while i >= 0
      folded_result = yield folded_result, obj[i]
      i -= 1
    end
    folded_result
  end

  def self.foreach obj
    for i in 0..obj.length - 1
      yield(obj[i])
    end
    obj
  end

  def self.zip obj1, obj2, &block
    zipped = []
    block ||= ->(a,b) { [a,b] }
    for i in 0..obj1.length - 1
      zipped << block.call(obj1[i], obj2[i])
    end
    zipped
  end
end
