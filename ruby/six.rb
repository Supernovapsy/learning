require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
  "class ### < ###\nend" =>
    "Make a class named ### that is a ###.",
  "class ###\n\tdef initialize(@@@)\n\tend\nend" =>
    "class ### has a initialize that takes @@@ parameters.",
  "class ###\n\tdef ***(@@@)\n\tend\nend" =>
    "class ### has a function named *** that takes @@@ paramters.",
  "*** = ###.new()" =>
    "Set *** to an instance of class ###.",
  "***.***(@@@)" =>
    "From *** get the *** function, and call it with parameters @@@.",
  "***.*** = '***'" =>
    "From *** get the *** attribute and set it to '***'."
}

PHRASE_FIRST = ARGV[0] == 'english'

open(WORD_URL) {|f|
    f.each_line {|word| WORDS.push(word.chomp)}
}

# craft_names scans the snippet for patterns to replace with words,
# and for each one of these patterns found, pushes the last word
# from the rand_words array input, capitalizes it if requested,
# and returns the array duplicated onto itself.
def craft_names(rand_words, snippet, pattern, caps=false)
    names = snippet.scan(pattern).map do
        word = rand_words.pop()
        caps ? word.capitalize : word
    end
    
    return names * 2
end

# craft_params scans the snippet for each general pattern to be replaced,
# and then get randomly one to three words joined by commas.
# It does this for each occurrence, and then puts these strings together
# into arrays, and returns this array duplicated onto itself.
def craft_params(rand_words, snippet, pattern)
    names = (0...snippet.scan(pattern).length).map do
        param_count = rand(3) + 1
        params = (0...param_count).map {|x| rand_words.pop() }
        params.join(', ')
    end
    
    return names * 2
end

def convert(snippet, phrase)
  rand_words = WORDS.sort_by {rand}
  # Returns a list of names which can replace ### in the snippet.
  class_names = craft_names(rand_words, snippet, /###/, caps=true)
  # Returns a list of other names which can replace *** in the snippet.
  other_names = craft_names(rand_words, snippet, /\*\*\*/)
  # Returns a list of 1 - 3 parameter names for each @@@ in the snippet.
  param_names = craft_params(rand_words, snippet, /@@@/)

  # The names are stored in arrays and are all duplicated.

  results = []

  [snippet, phrase].each do |sentence|
    # fake class names, also copies sentence
    result = sentence.gsub(/###/) { class_names.pop }

    # fake other names
    # The ! means that the string substitution will be done in place.
    result.gsub!(/\*\*\*/) {|x| other_names.pop }

    # fake parameter lists
    result.gsub!(/@@@/) {|x| param_names.pop }

    results.push(result)
  end

  return results
end

# keep going until they hit CTRL-D
loop do
  snippets = PHRASES.keys().sort_by {rand}

  for snippet in snippets
    phrase = PHRASES[snippet]
    question, answer = convert(snippet, phrase)

    if PHRASE_FIRST
      question, answer = answer, question
    end

    print question, "\n\n> "  

    # Unless stdin passes, exit the program.
    exit(0) unless $stdin.gets

    puts "\nANSWER:  %s\n\n" % answer
  end
end
