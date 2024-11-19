%{ for record in allrecords ~}
${record.network_interface[0].addresses.0}  host_name=${record.name}
%{  endfor ~}