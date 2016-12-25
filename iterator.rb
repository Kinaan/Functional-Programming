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
end
