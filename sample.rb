class Vote < ApplicationRecord
  belongs_to :voter, class_name: "User"
  belongs_to :votable, polymorphic: true

  validates :voter_id, uniqueness: { scope: [:votable_id, :votable_type, :ballot]}

  def get_item
    case self.votable_type
    when "Answer" then Answer.find(self.votable_id)
    when "Question" then Question.find(self.votable_id)
    when "Comment" then Comment.find(self.votable_id)
    else nil
    end
  end
end
