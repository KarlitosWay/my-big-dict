class LangEnum < ActiveRecord::Base

  has_many :dictionaries, dependent: :destroy

  validates :short_descr, presence: true, uniqueness: true
  validates :long_descr,  presence: true, uniqueness: true

end
