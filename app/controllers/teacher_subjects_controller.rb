class TeacherSubjectsController < InheritedResources::Base

  private

    def teacher_subject_params
      params.require(:teacher_subject).permit(:teacher_id, :subject_id, :level)
    end

end
