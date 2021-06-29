class UserBiosController < ApplicationController


    def update
        @user = current_user

        if @user.user_bio.create!(bio_params)
            redirect_back(fallback_location: root_path)
        end

    end

    private

    def bio_params
        params.require(:bio).permit(:bio)
    end

end
