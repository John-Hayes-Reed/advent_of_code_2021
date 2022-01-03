#!/usr/bin/env ruby3.0.3

prev_num = nil
measurements = File.readlines('input')

total_increases = measurements.each_with_index.reduce(0) do |increases, (measurement, index)|
  next if (group_measurements = [measurement.to_i, measurements[index + 1].to_i, measurements[index + 2].to_i]).any?(&:nil?)
  group_sum = group_measurements.sum

  increase_count = group_sum > (prev_num || Float::INFINITY) ? increases + 1 : increases
  prev_num = group_sum
  increase_count
end

puts total_increases