#!/usr/bin/env ruby3.0.3

prev_num = nil
total_increases = File.foreach('input').reduce(0) do |increases, measurement|
  increase_count = measurement.to_i > (prev_num || Float::INFINITY) ? increases + 1 : increases
  prev_num = measurement.to_i
  increase_count
end

puts total_increases