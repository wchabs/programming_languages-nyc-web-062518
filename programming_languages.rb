
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}


def reformat_languages(languages)
  new_hash = {}
  type_array = []
  temp_hold_hash = {}
  given_hash = languages
  
  languages.each do |type, language_info|
    type_array << type
    new_hash = new_hash.merge(language_info)
  end
  
  new_hash.each do |language, info|
    languages.each do |type, language_info|
      language_info.each do |language2, info2|
        if language == language2
          if !info[:style]
            info[:style] = [type]
          else
            temp_array = info[:style]
            puts temp_array
            temp_array << [type]
            puts temp_array
            info[:style] = temp_array
        end
      end
    end
  end
  
  #new_hash.each do |language, info|
  #  info[:style] = type_array
  #end
    

  

=begin
  languages.each do |type, language_info|
    type_array << type
    language_info.each do |language, info|
      new_hash = language
      new_hash[:info][:style] = type_array
    end
  end
  
=begin
  languages.each do |type, language_info|
    type_array << type
    new_hash = language_info
  end
  
  new_hash.each do |language, info|
    info[:style] = type_array
  end
=end

  puts new_hash
  new_hash
end

#reformat_languages(languages)