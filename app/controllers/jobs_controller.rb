class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @title = "Job Postings"
  end
end
