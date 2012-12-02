# coding: utf-8
class Blog
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::TaggableOn

  field :title
  field :slug
  field :content
  taggable_on :tags

  validates_presence_of :title, :content
  validates_length_of :title, :minimum => 2, :maximum => 50
  validates_length_of :content, :minimum => 2, :maximum => 10000
  validates_uniqueness_of :title

  index :created_at => -1
  index :slug => 1

  TRUNCATE = 600

  def summary
    self.content.truncate(TRUNCATE, :truncate_string => '...')
  end

  def whole_content?
    self.content == self.summary
  end

  before_save do
    if self.slug.blank?
      self.slug = Pinyin.t(self.title, '-')
    else
      errors[:slug] = "Slug is alreay token." if Blog.where(:slug => self.slug).exists?
    end
  end

end