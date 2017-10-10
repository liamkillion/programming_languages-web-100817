require 'pry'

def languages
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
end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style_hash, lang_hash|
    lang_hash.each do |lang_name, type_hash|
      binding.pry
      if new_hash.keys.include?(lang_name)
        new_hash[lang_name][:style] << style_hash
      else
        new_hash[lang_name] = {
          type: type_hash[:type],
          style: [style_hash]
        }
      end
    end
  end
  new_hash
end
