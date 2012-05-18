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

    puts 'create subtasks?'
    answer = gets.chomp
    case answer
    when 'yes'
      task.new_subtask
    end

    @tasks.push(task)
    puts 'new task complete!'
  end

  def delete
    puts 'number for delete:'
    number = gets.chomp.to_i - 1
    @tasks.delete_at(number)
  end

  def info
    puts 'number of task:'
    number = gets.chomp.to_i - 1
    if number < @tasks.size
      puts number >= 0 ? @tasks[number].info : @tasks
    else
      puts 'bad number!'
    end
  end

  def start
    puts "available commands:\nnew\ndelete\ninfo\nexit"
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
