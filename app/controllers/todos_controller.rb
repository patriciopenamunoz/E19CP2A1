class TodosController < ApplicationController
  def create
    @todo = Todo.new(user_id: current_user.id,
                     task_id: params[:task_id])
    if @todo.save
      redirect_to tasks_path, notice: 'Good job! Task marked as completed'
    else
      redirect_to tasks_path, alert: 'Oops, something went wrong...'
    end
  end

  def destroy
    if Todo.delete(params[:id])
      redirect_to tasks_path, notice: 'Task unmarked'
    else
      redirect_to tasks_path, alert: 'Oops, something went wrong...'
    end
  end

  private

  def todos_params
    params.require(:todos).permit(:user_id, :task_id)
  end
end
