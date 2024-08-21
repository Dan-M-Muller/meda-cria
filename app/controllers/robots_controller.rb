class RobotsController < ApplicationController
  before_action :set_robot, only: %i[show]

  def index
    @robots = Robot.all
  end

  def show
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new(robot_params)
    @robot.save
    redirect_to robots_path
  end
  private

  def set_robot
    @robot = Robot.find(params[:id])
  end

  def robot_params
    params.require(:robot).permit(:name)
  end

end
