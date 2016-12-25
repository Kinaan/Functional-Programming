#!/bin/ruby

module Iteratorr
  def self.map obj
    mapped = []
    for i in 0..obj.length - 1
      mapped << yield(obj[i])
    end
    mapped
  end
end
