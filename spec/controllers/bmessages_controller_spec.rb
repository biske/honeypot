require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BmessagesController do

  # This should return the minimal set of attributes required to create a valid
  # Bmessage. As you add validations to Bmessage, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "content" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BmessagesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all bmessages as @bmessages" do
      bmessage = Bmessage.create! valid_attributes
      get :index, {}, valid_session
      assigns(:bmessages).should eq([bmessage])
    end
  end

  describe "GET show" do
    it "assigns the requested bmessage as @bmessage" do
      bmessage = Bmessage.create! valid_attributes
      get :show, {:id => bmessage.to_param}, valid_session
      assigns(:bmessage).should eq(bmessage)
    end
  end

  describe "GET new" do
    it "assigns a new bmessage as @bmessage" do
      get :new, {}, valid_session
      assigns(:bmessage).should be_a_new(Bmessage)
    end
  end

  describe "GET edit" do
    it "assigns the requested bmessage as @bmessage" do
      bmessage = Bmessage.create! valid_attributes
      get :edit, {:id => bmessage.to_param}, valid_session
      assigns(:bmessage).should eq(bmessage)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Bmessage" do
        expect {
          post :create, {:bmessage => valid_attributes}, valid_session
        }.to change(Bmessage, :count).by(1)
      end

      it "assigns a newly created bmessage as @bmessage" do
        post :create, {:bmessage => valid_attributes}, valid_session
        assigns(:bmessage).should be_a(Bmessage)
        assigns(:bmessage).should be_persisted
      end

      it "redirects to the created bmessage" do
        post :create, {:bmessage => valid_attributes}, valid_session
        response.should redirect_to(Bmessage.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved bmessage as @bmessage" do
        # Trigger the behavior that occurs when invalid params are submitted
        Bmessage.any_instance.stub(:save).and_return(false)
        post :create, {:bmessage => { "content" => "invalid value" }}, valid_session
        assigns(:bmessage).should be_a_new(Bmessage)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Bmessage.any_instance.stub(:save).and_return(false)
        post :create, {:bmessage => { "content" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested bmessage" do
        bmessage = Bmessage.create! valid_attributes
        # Assuming there are no other bmessages in the database, this
        # specifies that the Bmessage created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Bmessage.any_instance.should_receive(:update).with({ "content" => "MyText" })
        put :update, {:id => bmessage.to_param, :bmessage => { "content" => "MyText" }}, valid_session
      end

      it "assigns the requested bmessage as @bmessage" do
        bmessage = Bmessage.create! valid_attributes
        put :update, {:id => bmessage.to_param, :bmessage => valid_attributes}, valid_session
        assigns(:bmessage).should eq(bmessage)
      end

      it "redirects to the bmessage" do
        bmessage = Bmessage.create! valid_attributes
        put :update, {:id => bmessage.to_param, :bmessage => valid_attributes}, valid_session
        response.should redirect_to(bmessage)
      end
    end

    describe "with invalid params" do
      it "assigns the bmessage as @bmessage" do
        bmessage = Bmessage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Bmessage.any_instance.stub(:save).and_return(false)
        put :update, {:id => bmessage.to_param, :bmessage => { "content" => "invalid value" }}, valid_session
        assigns(:bmessage).should eq(bmessage)
      end

      it "re-renders the 'edit' template" do
        bmessage = Bmessage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Bmessage.any_instance.stub(:save).and_return(false)
        put :update, {:id => bmessage.to_param, :bmessage => { "content" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested bmessage" do
      bmessage = Bmessage.create! valid_attributes
      expect {
        delete :destroy, {:id => bmessage.to_param}, valid_session
      }.to change(Bmessage, :count).by(-1)
    end

    it "redirects to the bmessages list" do
      bmessage = Bmessage.create! valid_attributes
      delete :destroy, {:id => bmessage.to_param}, valid_session
      response.should redirect_to(bmessages_url)
    end
  end

end
