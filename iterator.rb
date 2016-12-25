#!/bin/ruby

module Iteratorr
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
end
