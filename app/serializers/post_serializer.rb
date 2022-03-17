class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content, :tags
  belongs_to :author

  def short_content
    "#{self.object.content[0..39]}..."
  end

  def tags
    self.object.tags
  end
end
