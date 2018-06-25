

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
            temp_array << type
            info[:style] = temp_array
          end
        end
      end
    end
  end
  
  #puts new_hash
  new_hash
end

