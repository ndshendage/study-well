writting the task => rake:-

namespace :my_first_task do

  ##you have started to write first task
  desc 'This will give you the database by loading the yml file 
  into database'
  task load_root_student(name_of_task): :environment do
    
    ## openning the yml files 
    YAML::load
    (File.open(Rails_root.to_s+"file_location"))['data_from_key_values'].each do |key, options|
      AuthenticationSetting.create({
        name: options["name"],
        type: options["type"],
        state: options["state"]
      })
    end
  end
end  

#yml file data
 single_sign_on_settings:
  db:
    name: "DB Authentication"
    state: 'active'
    type: 'DbAuth'
  ldap:
    name: 'Activer Directory Authentication'
    state: 'deactive'  
    type: 'LdapAuth'

#running the above task is this => bundle exec rake my_first_task:load_root_student
