class SleeplogsController < ApplicationController
    def index
        @sleeplogs = Sleeplog.all

        render json: @sleeplogs, include: [:user]
    end

    def show
        @sleeplog = Sleeplog.find(params[:id])

        render json: @sleeplog, include: [:user]
    end
end