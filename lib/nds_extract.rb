require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
  directors =[{:name "Paul", :revenue => 123456789}, {:name "Jean" :revenue => 1234567789}, {:name "Sam" :revenue =>1234567889}]
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  director_index = 0
  totals = {}

  while director_index < nds.length do
    director_name = nds[director_index][:name]
    totals[director_name] = 0
    movie_index = 0

    while movie_index < nds[director_index][:movies].length do
      totals[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    director_index += 1
  end

  totals
end
