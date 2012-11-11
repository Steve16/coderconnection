class ProposalsController < ApplicationController
  def new
  end

  def create
    @user = User.find(params[:user_id])
    @proposal = @user.proposals.new(params[:proposal])
    if @proposal.save
	flash[:notice] = "#{@proposal.title} was succesfully created."
	redirect_to user_path(@user)
    else
	render 'new'
    end
  end

  def update
    @user = User.find(params[:user_id])
    if @user.proposals.update_attributes(params[:proposal])
	flash[:notice] = "#{@proposal.title} was succesfully updated."
	redirect_to user_path(@user)
    else
	render 'edit'
    end
  end

  def destroy
  end

  def delete
    @user = User.find(params[:user_id])
    @proposal = @user.proposals.find(params[:id])
    @proposal.destroy
    redirect_to user_path(@user) 
  end

end
