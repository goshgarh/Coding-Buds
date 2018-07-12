class LessonsController < ApplicationController
  before_action :authenticate_admin!
  skip_before_action :verify_authenticity_token, only: [:destroy]

  def index
    @lessons = Lesson.all
  end

def show
  @lesson = Lesson.find(params[:id])

end

def new
  @lesson = Lesson.new
  @languages = Language.all

end

def create
  admin = current_admin
  # admin.id
  Lesson.create(lessons_params.merge({admin_id: admin.id}))

  redirect_to lessons_path

end

def edit
  @lesson = Lesson.find(params[:id])

end

def update
  lesson = Lesson.find(params[:id])
  lesson.update(lessons_params)

  redirect_to lessons_path

end

def destroy
  Lesson.destroy(params[:id])

  redirect_to lessons_path

end

    def search
      words = params[:search_text].downcase.split()
      search_string = []
      for word in words
          search_string.push("lower(syntax) LIKE ?")
      end
      words = words.map {|w| "%#{w}%"}
      @lessons = Lesson.where(search_string.join(' OR '), *words).all
    end

private

    
def lessons_params
  # will return something that looks like this:
  # {name: '....', description: '...', syntax: '...'} + {admin_id: '...'} = {name: '....', description: '...', syntax: '...', admin_id: '...'}

    params.require(:lesson).permit(:name, :description, :syntax, :language_id)
  end
end
