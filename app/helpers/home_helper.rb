module HomeHelper
  def build_color client, job, build
    build_details = client.job.get_build_details(job['name'], build['number'])

    return 'blue' if build_details['result'] == 'SUCCESS' 
    return 'red' if build_details['result'] == 'FAILURE'  
  end

  def get_job_builds client, job_name
    client.job.get_builds(job_name).first 3
  end

  def get_console_output client, job, build
    client.job.get_console_output(job['name'], build['number'])['output']
  end
end
