class SubjectsController < InheritedResources::Base

  private

    def subject_params
      params.require(:subject).permit(:name, :description)
    end

end
