require_relative 'game'

describe Game do
	let(:hangman) { Game.new("hello") }	

	it "initialize sets is_over as false" do
		expect(hangman).to be == (@is_over=false)
	# it "initializes is_over as false" do
	# 	expect(Game.new("hello")).to eq (@is_over = false)
	end

	it "initialize secret word array as [h,e,l,l,o]" do
		expect(hangman).to eq @secret_word_array == [h,e,l,l,o]
	end

	it "initialize available guesses = 5" do
		expect(hangman).to eq	@available_guesses == 5
	end

	it "initialize to create final array [_,_,_,_,_]" do
		expect(hangman).to eq @final_array == [_,_,_,_,_]
	end
end