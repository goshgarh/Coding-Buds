class HomeController < ApplicationController
  def index
      @languages=Language.all.order(:created_at)
      @lessons = Lesson.all.order(:created_at)
      @comments = Comment.all.order(:created_at)
      @imgs = ['comments64.png', 'comments65.png', 'comments66.png', 'comments67.png']
  end
end
