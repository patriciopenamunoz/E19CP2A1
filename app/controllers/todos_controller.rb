class TodosController < ApplicationController
  def create
  end

  def destroy
  end

  private

  def todos_params
    params.require(:todos).permit(:user_id, :task_id)
  end
end
