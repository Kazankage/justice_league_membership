class MembersController < ApplicationController
    def index
        @members = Member.all

        render json: @members
    end

    def show
        @member = find(params[:id])

        render json: @member
    end

    def create
        @member.create(member_params)

        render json: @member
    end

    def update
        @member = find(params[:id])
        @member.update(member_params)

        render json: @member
    end

    def destroy
        @member = find(params[:id])
        @member.delete

        render json: {memberId: @member.id}
    end

    private

    def member_params
        params.require(:member).permit(:name, :powers, :membership)
    end
end
