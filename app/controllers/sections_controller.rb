class SectionsController < InheritedResources::Base

  private

    def section_params
      params.require(:section).permit(:teacher_subject_id, :classroom_id, :students_id, :start_time, :duration, :days_of_week)
    end

end
