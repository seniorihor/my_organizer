#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# Author: seniorihor

require_relative './Task.rb'

class Menu

  def initialize
    @tasks = Array.new
    @c = ''
  end

  def new
    task = Task.new
    puts 'title:'
    task.title = gets.chomp

    puts 'end time (+ minutes):'
    time = gets.chomp.to_i * 60
    task.end_time = task.task[:start_time] + time

    puts 'priority:'
    task.priority = gets.chomp.to_i
    @tasks.push(task)
  end

  def delete
    puts 'Number for delete:'
    number = gets.chomp.to_i - 1
    @tasks.delete_at(number)
  end

  def info
    puts 'Number of task:'
    number = gets.chomp.to_i - 1
    if number > 0
      puts @tasks[number].info
    else
      puts @tasks
    end

    #puts number > 0 ? @tasks[number].info : @tasks
  end

  def start
    until @c == 'exit'
      @c = gets.chomp
      case @c
      when 'new'
        self.new
      when 'delete'
        self.delete
      when 'info'
        self.info
      end
    end
  end

end
