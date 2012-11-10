class ProposalsController < ApplicationController
  def new
    #   <%= render 'shared/micropost_form' %>
    #@proposal = current_user.proposals.build if signed_in?
  end
  
  def index
    @proposals = Proposal.all
  end

  def create
    #@proposal = Proposal.create( params[:proposal] )
    @user = current_user #User.find(params[:user_id])
    @proposal = @user.proposals.new(params[:proposal])
    if @proposal.save
	flash[:notice] = "#{@proposal.title} was succesfully created."
  redirect_to user_path(@user)
    else
	render 'new'
    end
  end

  def update
    @user = current_user #User.find(params[:user_id])
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
    @user = current_user #User.find(params[:user_id])
    @proposal = @user.proposals.find(params[:id])
    @proposal.destroy
    redirect_to user_path(@user) 
  end

end
