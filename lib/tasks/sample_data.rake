namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_languages
    make_dictionary_entries
  end
end

def make_languages
  LangEnum.create!(short_descr: "en_ir",
                   long_descr: "English-Irish")
  LangEnum.create!(short_descr: "ir_en",
                   long_descr: "Gaeilge-Béarla")
end

def make_dictionary_entries
  LangEnum.first.dictionaries.create!(word: 'word', description: 'focal; (news) scéala')
  LangEnum.find(2).dictionaries.create!(word: 'focal', description: 'word; comment; remark')

  #languages = LangEnum.all
  #10.times do
  #  languages.each { |lang| lang.dictionaries.create!(word: Faker::Lorem.word, description: Faker::Lorem.sentence) }
  #end
end
