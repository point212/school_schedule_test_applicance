class TeacherSubjectsController < InheritedResources::Base

  belongs_to :teacher

  def new
    new! do
      @teacher_subject = TeacherSubject.new level: TeacherSubject::DEFAULT_LEVEL
    end
  end


  private

  def teacher_subject_params
    params.require(:teacher_subject).permit(:teacher_id, :subject_id, :level)
  end
end
