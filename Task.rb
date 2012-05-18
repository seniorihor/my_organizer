#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# Author: seniorihor

require_relative './Subtask.rb'

class Task

  attr_reader :task

  def initialize
    @number = 0
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

  def new_subtask
    puts 'this feature is not available yet...'
    #@task["subtask_#{@number += 1}".to_sym] = Hash.new
  end

  def info
    @task[:status] = @task[:end_time] > Time.now ? 'active' : 'inactive'
    @task.each { |i| puts i } # переписати з використанням yield
  end

end
