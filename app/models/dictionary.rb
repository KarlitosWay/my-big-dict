class Dictionary < ActiveRecord::Base

  belongs_to :lang_enum

  validates :lang_enum_id, presence: true
  # TODO, enforce characters only for word
  validates :word,         presence: true, length: {maximum: 50}
  validates :description,  presence: true, length: {maximum: 500}

  before_save { self.word = word.downcase }
end
