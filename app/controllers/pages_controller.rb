class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @lecture = Lecture.new(content: '<h1>Hello</h1>')
  end
end
