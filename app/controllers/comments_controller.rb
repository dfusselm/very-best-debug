class CommentsController < ApplicationController
  def create
    input_author_id = params.fetch("query_author_id")
    input_venue_id = params.fetch("query_venue_id")
    input_body = params.fetch("query_body")
    
    
    new_comment = Comment.new
    new_comment.author_id = input_author_id
    new_comment.venue_id = input_venue_id
    new_comment.body = input_body
    new_comment.save
    
    redirect_to("/venues/"+new_comment.venue_id.to_s)
  end
end
