class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def initialize
    super
    content
    pages
  end

  def content
    Content.all.each do |c|
      @social = c if c.url == 'social'
      @header = c if c.url == 'header'
      @head = c if c.url == 'head'
      @super = c if c.url == 'super'
      @logo1 = c if c.url == 'logo1'
      @logo2 = c if c.url == 'logo2'
    end
    eval @header.description
  end
  def pages
    @services = []
    Page.all.each do |p|
      @services << p if p.url == 'service'
      @text0 = p if p.url == 'text0'
    end
  end

end
