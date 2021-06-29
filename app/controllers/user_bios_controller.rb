class UserBiosController < ApplicationController


    def create
        @user = current_user
        @user_bio = current_user.build_bio(bio_params)

        if @user_bio.save!
            redirect_back(fallback_location: root_path)
        end

    end

    private

    def bio_params
        params.require(:bio).permit(:description, :user_id)
    end

end
