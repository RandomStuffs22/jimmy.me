# coding: utf-8
class Blog
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title
  field :slug
  field :content

  validates_presence_of :title, :slug, :content  
end