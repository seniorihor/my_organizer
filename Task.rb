#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# Author: seniorihor

class Task

  attr_reader :task

  def initialize
    @task = Hash.new
    @task[:start_time] = Time.now
  end

  def title
    @task[:title]
  end

  def title=(string)
    @task[:title] = string
  end

  def start_time
    @task[:start_time]
  end

  def end_time
    @task[:end_time]
  end

  def end_time=(time)
    @task[:end_time] = time
  end

  def priority=(number)
    @task[:priority] = number
  end

  def info
    @task[:status] = @task[:end_time] > Time.now ? 'active' : 'inactive'
    @task.each { |i| puts i } # переписати з використанням yield
  end

end
