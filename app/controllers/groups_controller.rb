class GroupsController < ApplicationController
  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @groups }
    end
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @group = Group.find(params[:id])
    @ideas = @group.ideas
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group }
    end
  end

  # GET /groups/new
  # GET /groups/new.json
  def new
    @group = Group.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group }
    end
  end

  # GET /groups/1/edit
  def edit
    @group = Group.find(params[:id])
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(params[:group])

    respond_to do |format|
      if @group.save
      	GroupsUsers.create(:group_id => @group.id, :user_id => current_user.id,:is_admin=>'true',:is_approved=>'true',:added_by_id=>current_user.id)
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render json: @group, status: :created, location: @group }
      else
        format.html { render action: "new" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /groups/1
  # PUT /groups/1.json
  def update
    @group = Group.find(params[:id])

    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    respond_to do |format|
      format.html { redirect_to groups_url }
      format.json { head :no_content }
    end
  end
  
  def join
	#group_id = params[:id]
	user_id = current_user.id
	logger.debug">>>>..#{user_id}"
	requested = GroupsUsers.where(:user_id=> user_id,:group_id=> params[:id]).first
       	   #do nothing		
	if requested.nil?
           GroupsUsers.create(:group_id => group_id,:user_id=> user_id,:is_admin=>false,:is_approved => false)    
	   @admins = GroupsUsers.where(:group_id => group_id,:is_admin => true).all
	   @admins.each do |f|
		Notification.add(current_user.id,f.user_id,Notification:: GROUP_JOIN_REQ,f.group)       
	   end
	end
  end  
  
  def add
  
  end
  
end
