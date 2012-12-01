# coding: utf-8
class BlogsController < ApplicationController
  before_filter :require_login, :except => [:show, :index]

  def index
    @blogs = Blog.all
    set_seo_meta
  end

  def show
    @blog = Blog.find_by(:slug => params[:slug])
    set_seo_meta(@blog.title, nil, nil)
  end

  def new
    @blog = Blog.new
    set_seo_meta
  end

  def create
    blog = Blog.create(params[:blog])
    flash[:error] = blog.errors.full_messages
    redirect_to :back
  end

  def edit
    @blog = Blog.find_by(:id => params[:id])
    set_seo_meta
  end

  def update
    blog = Blog.find_by(:id => params[:id])
    if blog.update_attributes(params[:blog])
      redirect_to blog_path(blog.slug)
    else
      flash[:error] = blog.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    blog = Blog.find_by(:id => params[:id])
    blog.destroy
    redirect_to blogs_path
  end

end