class UserBiosController < ApplicationController


    def create
        @user = current_user
        @user_bio = current_user.bio.build(bio_params)

        if @user_bio.create!
            redirect_back(fallback_location: root_path)
        end

    end

    private

    def bio_params
        params.require(:bio).permit(:bio)
    end

end
