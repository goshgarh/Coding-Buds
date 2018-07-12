class LanguagesController < ApplicationController
  before_action :authenticate_admin!
  skip_before_action :verify_authenticity_token, only: [:destroy]
def index
  @languages = Language.all
end

def show

end

def new
  @languages = Language.all
  @language = Language.new

end

def create
  language = Language.create(languages_params)
  if language.invalid?
    flash[:error] = "Language already exists, please try another one"
    redirect_to new_language_path
  else
    flash[:success] = "Great, your new language has been created!"
    redirect_to languages_path
  end
end

def edit
  @language = Language.find(params[:id])

end

def update
  language = Language.find(params[:id])

  language.update(languages_params)

  redirect_to languages_path
end

def destroy
  Language.destroy(params[:id])
  redirect_to languages_path
end

private

def languages_params
  # will return something that looks like this:
  # {name: '....', :description: '...'}

    params.require(:language).permit(:name, :description)
  end
end
