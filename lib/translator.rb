require 'yaml'

def load_library(file_path)
  hash = YAML.load_file(file_path)
  library_hash = {'get_meaning' => {}, 'get_emoticon' => {}} 
  hash.each do |meaning, emoticons|
    english = emoticons[0]
    japanease = emoticons[1]
end
end 


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end