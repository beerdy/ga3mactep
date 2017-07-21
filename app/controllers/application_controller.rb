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
      @head = c if c.url == 'head'      
      @super = c if c.url == 'super'
      @logo1 = c if c.url == 'logo1'
      @logo2 = c if c.url == 'logo2'
      eval c.description if c.url == 'value'
    end
  end
  def pages
    @services = []
    @tarifs = []
    Page.all.each do |p|
      @tarifs << p if p.url == 'tarif'
      @services << p if p.url == 'service'
      @textx = p if p.url == 'textx'
      @text0 = p if p.url == 'text0'
      @text1 = p if p.url == 'text1'
      @text2 = p if p.url == 'text2'
    end
  end

end
