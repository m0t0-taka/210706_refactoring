class Blog < ApplicationRecord
  # scope :latest, -> (number = 3){order(created_at: :desc).limit(number)}
include CommonModule
# validates_with BlogValidator
before_create BlogCallback.new
# before_create :default_title
# before_create :default_content
test_puts

# private
#   def default_title
#     self.title = 'タイトルなし' if self.title.blank?
#   end
#   def default_content
#     self.content = '内容なし' if self.content.blank?
#   end

end
