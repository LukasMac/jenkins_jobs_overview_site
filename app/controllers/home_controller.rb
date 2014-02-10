class HomeController < ApplicationController
  def index
    @client = JenkinsApi::Client.new(:server_ip => '10.192.42.148', :server_port => '8081')

    @job_list = @client.job.list_all_with_details
  end
end
