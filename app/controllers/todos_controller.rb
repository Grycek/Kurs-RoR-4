class TodosController < ApplicationController
    def index
      @todos = Todo.all
    end
    
    def new
      @todo = Todo.new
    end
    
    def create
      @todo = Todo.create(params[:todo] )
      if @todo.valid?
          redirect_to todos_path
      else
          render :action => :new
      end
    end
end
