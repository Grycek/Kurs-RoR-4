class TodosController < ApplicationController
    before_filter :authenticate_user!, :except => [:index]
    def index
      @todos = Todo.all
    end
    
    def new
      @todo = Todo.new
    end
    
    def create
      @todo = Todo.new(params[:todo])
      @todo.update_attributes(:author => current_user.email)
      if @todo.save
          redirect_to todos_path
      else
          render :action => :new
      end
    end
end
