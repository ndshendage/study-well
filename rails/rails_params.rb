<%= params.inspect%>
or you can do it as =>

params(debug)
params(debug.inspect)

#anything updatiing in the log file use

Rails.logger and whatever you need to write
i.e Rails.logger debug params
