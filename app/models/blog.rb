# coding: utf-8
class Blog
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::TaggableOn

  field :title
  field :slug
  field :content
  taggable_on :tags

  validates_presence_of :title, :slug, :content 

  TRUNCATE = 600

  def summary
    self.content.truncate(TRUNCATE, :truncate_string => '...')
  end

  def whole_content?
    self.content == self.summary
  end

end