class Article < ApplicationRecord
  belongs_to :articlestud, optional: true

  validates :title, presence: true,
                    length: { minimum: 5 }
  validates_uniqueness_of :articlestud_id, allow_nil: true

 def self.show_full_list
  Articlestud.all.collect{|p| [p.title, p.id]}
 end
  def remaining_days
  if !return_date.nil?
   days_left=return_date-Date.today
   days_left.to_i
 end
 end
end