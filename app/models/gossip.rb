class Gossip < ApplicationRecord
    validates :title, length: { in: 3..14}, presence: true
    validates :content, presence: true
    
    belongs_to :user
    has_many :comments
    has_many :gossip_tags
    has_many :tags, through: :gossip_tags
    has_many :likes, as: :likable
end
