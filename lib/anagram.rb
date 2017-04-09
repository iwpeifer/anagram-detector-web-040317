require 'pry'

class Anagram

	attr_accessor :word

	def initialize(word)
		@word = word
	end

	def match(list)
		possible_answers = []
		sorted_list = list.map{|word| word.split("").sort.join("")}
		sorted_word = self.word.split("").sort.join("")
		sorted_list.each_with_index do |list_word, index|
			if list_word == sorted_word
				possible_answers << list[index]
			end
		end
		possible_answers
	end
	
end