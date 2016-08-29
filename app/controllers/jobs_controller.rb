class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @title = "Expired Job Postings"
  end
end
