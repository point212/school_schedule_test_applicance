class ClassroomsController < InheritedResources::Base

  private

    def classroom_params
      params.require(:classroom).permit(:number, :address)
    end

end
