class Post < ApplicationRecord
    validates :title, :content, :image_url, presence: true
    before_save :remove_word

    def remove_word
        self.content = self.content.remove(' spoiler')
    end
end
