require 'yaml'


def load_library(file_path) 
  unformatted_hash = YAML.load_file(file_path)  

  library_hash = {'get_emoticon' => {}, 'get_meaning' => {}} 

  unformatted_hash.each do |meaning, emoticons| 
    english = emoticons[0]
    japanese = emoticons[1]

    library_hash['get_meaning'][japanese] = meaning
    library_hash['get_emoticon'][english] = japanese 

  end
  library_hash  # we want to return a hash that has the right functionality
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end