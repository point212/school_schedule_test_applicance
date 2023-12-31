require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/teacher_subjects", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # TeacherSubject. As you add validations to TeacherSubject, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      TeacherSubject.create! valid_attributes
      get teacher_subjects_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      teacher_subject = TeacherSubject.create! valid_attributes
      get teacher_subject_url(teacher_subject)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_teacher_subject_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      teacher_subject = TeacherSubject.create! valid_attributes
      get edit_teacher_subject_url(teacher_subject)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new TeacherSubject" do
        expect {
          post teacher_subjects_url, params: { teacher_subject: valid_attributes }
        }.to change(TeacherSubject, :count).by(1)
      end

      it "redirects to the created teacher_subject" do
        post teacher_subjects_url, params: { teacher_subject: valid_attributes }
        expect(response).to redirect_to(teacher_subject_url(TeacherSubject.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new TeacherSubject" do
        expect {
          post teacher_subjects_url, params: { teacher_subject: invalid_attributes }
        }.to change(TeacherSubject, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post teacher_subjects_url, params: { teacher_subject: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested teacher_subject" do
        teacher_subject = TeacherSubject.create! valid_attributes
        patch teacher_subject_url(teacher_subject), params: { teacher_subject: new_attributes }
        teacher_subject.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the teacher_subject" do
        teacher_subject = TeacherSubject.create! valid_attributes
        patch teacher_subject_url(teacher_subject), params: { teacher_subject: new_attributes }
        teacher_subject.reload
        expect(response).to redirect_to(teacher_subject_url(teacher_subject))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        teacher_subject = TeacherSubject.create! valid_attributes
        patch teacher_subject_url(teacher_subject), params: { teacher_subject: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested teacher_subject" do
      teacher_subject = TeacherSubject.create! valid_attributes
      expect {
        delete teacher_subject_url(teacher_subject)
      }.to change(TeacherSubject, :count).by(-1)
    end

    it "redirects to the teacher_subjects list" do
      teacher_subject = TeacherSubject.create! valid_attributes
      delete teacher_subject_url(teacher_subject)
      expect(response).to redirect_to(teacher_subjects_url)
    end
  end
end
