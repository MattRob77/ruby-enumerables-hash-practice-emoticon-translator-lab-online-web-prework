require 'yaml'


def load_library(file_path) # need to add dis arg
  unformatted_hash = YAML.load_file(file_path)  # meaning is a string, emoticons is an array of two emojis

  library_hash = {'get_emoticon' => {}, 'get_meaning' => {}} # top level structure of hash, gotta do it this way

  unformatted_hash.each do |meaning, emoticons| # meaning is a string, emoticons is an array of two emojis
    english = emoticons[0]
    japanese = emoticons[1]

    library_hash['get_meaning'][japanese] = meaning # each key is japanese emoji that points to meaning
    library_hash['get_emoticon'][english] = japanese # each key is an eng. emoji that points to the japanese one

  end
  library_hash  # we want to return a hash that has the right functionality
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end