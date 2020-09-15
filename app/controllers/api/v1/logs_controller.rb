class Api::V1::LogsController < ApplicationController
    skip_before_action :authorized

    def index
        logs = Log.all
        if logs.length > 0
            render json: logs, include: :mood
        else
            render json: {message: "No logs yet!"}, status: :accepted
        end        
    end

    def create
        logs = Log.create(log_params)
        user = User.find_by(id: params[:log][:user_id])
        all_logs = Log.all
        render json: all_logs, include: :mood

    end

    def destroy 
        log = Log.find_by(id: params[:id])
        log.destroy
        all_logs = Log.all
        render json: all_logs, include: :mood
    end 

    def show
        log = Log.find_by(id: params[:id])
        render json: log, include: :mood
    end

    def update
        log = Log.find_by(id: params[:id])
        log.update(log_params)
        all_logs = Log.all
        render json: all_logs, include: :mood
    end

private

    def log_params
        params.require(:log).permit(:user_id,:mood_id,:tag1,:tag2,:tag3,:tag4,:tag5)
    end


end
