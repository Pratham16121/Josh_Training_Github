show_ques = -> (word) { word.each {|ele| print "#{ele} "} }
file_of_list_words = File.read("hangman_game_word_list.txt")
list_of_words = file_of_list_words.split()
word = list_of_words[rand(list_of_words.length())].downcase!.split("")
# print word
lives = 5
correct = 0
ques = Array.new(word.length(), "_")
show_ques.call(ques)
while lives > 0 && correct < word.length()
    print "Enter a Character: "
    letter = gets[0]
    if word.include?letter
        all_indexes = (0...word.length()).find_all {|i| word[i] == letter}
        all_indexes.each {|i| ques[i] = letter}
        show_ques.call(ques)
        correct += all_indexes.length()
    else
        lives -= 1
        show_ques.call((lives != 0)? ques: word)
    end
    print " -- Lives left: ", lives, "\n"
end
print ((live > 0)? "You Won": "You loose")
