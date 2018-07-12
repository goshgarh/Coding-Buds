class AdminsController < ApplicationController
  before_action :authenticate_admin!
  skip_before_action :verify_authenticity_token, only: [:destroy]

  def index
    @admin = Admin.all
     console
      
end

def show

end

def new

end

def create

end

def edit

end

def update

end

def destroy

end

private

def admins_params
  # will return something that looks like this:
  # {name: '....', :description: '...'}

    params.require(:admin).permit(:f_name, :l_name, :date_of_birth)
  end
end
