class Api::V1::JournalsController < ApplicationController

    def index
        journals = Journal.all
        if journals.length > 0
            render json: journals, include: :user
        else
            render json: {message: "No journals yet!"}, status: :accepted
        end 
    end

    def create
        # byebug
        journal = Journal.create(journal_params)
        all_journals = Journal.all
        render json: all_journals
    end

    def destroy 
        # byebug
        journal = Journal.find_by(id: params[:id])
        journal.destroy
        all_journals = Journal.all
        render json: all_journals, include: :user
    end 

    def show
        journal = Journal.find_by(id: params[:id])
        render json: journal, include: :user
    end

private

    def journal_params
        params.require(:journal).permit(:user_id,:resp1,:resp2,:resp3,:prompt)
    end

end
