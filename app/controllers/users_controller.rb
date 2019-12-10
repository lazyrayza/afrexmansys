class UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy, :edit]
  def index
    if params[:query].present?
      @tenants = User.search_for_tenant(params[:query])
      respond_to do |format|
        format.html { render users_path }
        format.js
      end
    else
      @tenants = User.where(tenant: true)
    end
    @users = User.all
    @employees = User.where(employee: true)
    @managers = User.where(manager: true)
    @admins = User.where(admin: true)
  end

  def show
    @complaints = Complaint.where(tenant_id: @user.id)
    @lease = Lease.where(tenant_id: @user).to_a.first
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/", notice: 'User has been created!'
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path, notice: 'User was updated!'
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

private

  def user_params
    params.require(:user).permit(:email, :job_title, :dob, :age, :first_name, :last_name, :gender, :photo, :nationality, :first_name, :last_name)
  end
  def find_user
    @user = User.find(params[:id])
  end
end
