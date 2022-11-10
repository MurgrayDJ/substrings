# Author: Murgray D. John
# Date created: 11/10/2022 
# Purpose: Given a word and a list of words, this program returns words from the list that are substrings.

def substrings(main_string, string_array)
    counter_hash = {}

    string_array.each do |string|
        occurences = main_string.downcase.scan(string.downcase)
        unless occurences.empty?
            counter_hash[string] = occurences.length
        end
    end
    counter_hash
end

def run_program
    main_string = "Howdy partner, sit down! How's it going?"
    string_array = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    puts substrings(main_string, string_array)
end

run_program