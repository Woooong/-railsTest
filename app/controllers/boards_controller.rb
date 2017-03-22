class BoardsController < ApplicationController
	def index

		@boards = Board.paginate(:page => params[:page], :per_page => 5)
	end

	def new
		@board = Board.new
	end

	def create
	  	@board = Board.new(board_params)
	  	if @board.save
	    	redirect_to '/boards'
	  	else
	    	render 'new'
	  	end
	end

	def show
		@board = Board.find(params[:id])
		@comments = Comment.where("board_id = ?", params[:id])
		@comment = Comment.new
	end

	def edit 
		@board = Board.find(params[:id]) 
	end

	def update 
	  @board = Board.find(params[:id]) 
	  if @board.update_attributes(board_params) 
	    redirect_to(:action => 'show', :id => @board.id) 
	  else 
	    render 'edit' 
	  end 
	end

	def comment_create
		@comment = Comment.new(comment_params)
		@board = Board.find(params[:board_id]) 
	  	if @comment.save
	    	redirect_to(:action => 'show', :id => @comment.board_id) 
	  	else
	    	redirect_to(:action => 'show', :id => @board.id) 
	  	end
	end

	private 
	  def board_params 
	    params.require(:board).permit(:title, :content) 
	  end

	private 
	  def comment_params 
	    params.require(:comment).permit(:comment, :board_id) 
	  end
end
