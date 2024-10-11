class TasksController < ApplicationController
    def index
      @incomplete_tasks = Task.where(status: 'incomplete')
      @complete_tasks = Task.where(status: 'complete')
      @task = Task.new
    end
  
    def create
      @task = Task.new(task_params)
      @task.status = 'incomplete' # กำหนดสถานะเริ่มต้นเป็น incomplete
  
      if @task.save
        redirect_to tasks_path, notice: 'Task created successfully.'
      else
        render :index
      end
    end
  
    def complete
      @task = Task.find(params[:id])
      @task.update(status: 'complete')
      redirect_to tasks_path, notice: 'Task marked as complete.'
    end
  
    private
  
    def task_params
      params.require(:task).permit(:title)
    end
  end
  