;;; Compiled snippets and support files for `ansible-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("a10_virtual_server" "- name: ${1:Manage A10 Networks AX/SoftAX/Thunder/vThunder devices}\n  a10_virtual_server: host=$2 username=$3 password=$4 virtual_server=$5 $0\n" "Manage A10 Networks AX/SoftAX/Thunder/vThunder devices" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/a10/a10_virtual_server" nil nil)
                       ("a10_service_group" "- name: ${1:Manage A10 Networks AX/SoftAX/Thunder/vThunder devices}\n  a10_service_group: host=$2 username=$3 password=$4 service_group=$5 $0\n" "Manage A10 Networks AX/SoftAX/Thunder/vThunder devices" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/a10/a10_service_group" nil nil)
                       ("a10_server" "- name: ${1:Manage A10 Networks AX/SoftAX/Thunder/vThunder devices}\n  a10_server: host=$2 username=$3 password=$4 server_name=$5 $0\n" "Manage A10 Networks AX/SoftAX/Thunder/vThunder devices" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/a10/a10_server" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("s3" "- name: ${1:S3 module putting a file into S3.}\n  s3: bucket=$2 mode=$3 $0\n" "S3 module putting a file into S3." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/s3" nil nil)
                       ("route53" "- name: ${1:add or delete entries in Amazons Route53 DNS service}\n  route53: command=$2 zone=$3 record=$4 type=$5 $0\n" "add or delete entries in Amazons Route53 DNS service" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/route53" nil nil)
                       ("rds_subnet_group" "- name: ${1:manage RDS database subnet groups}\n  rds_subnet_group: state=${2:present} name=$3 region=$4 $0\n" "manage RDS database subnet groups" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/rds_subnet_group" nil nil)
                       ("rds_param_group" "- name: ${1:manage RDS parameter groups}\n  rds_param_group: state=${2:present} name=$3 region=$4 $0\n" "manage RDS parameter groups" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/rds_param_group" nil nil)
                       ("rds" "- name: ${1:create, delete, or modify an Amazon rds instance}\n  rds: command=$2 instance_name=$3 region=$4 $0\n" "create, delete, or modify an Amazon rds instance" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/rds" nil nil)
                       ("elasticache" "- name: ${1:Manage cache clusters in Amazon Elasticache.}\n  elasticache: state=$2 name=$3 $0\n" "Manage cache clusters in Amazon Elasticache." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/elasticache" nil nil)
                       ("ec2_vpc" "- name: ${1:configure AWS virtual private clouds}\n  ec2_vpc: cidr_block=$2 resource_tags=$3 state=${4:present} $0\n" "configure AWS virtual private clouds" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_vpc" nil nil)
                       ("ec2_vol" "- name: ${1:create and attach a volume, return volume id and device map}\n  ec2_vol: $0\n" "create and attach a volume, return volume id and device map" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_vol" nil nil)
                       ("ec2_tag" "- name: ${1:create and remove tag(s) to ec2 resources.}\n  ec2_tag: resource=$2 $0\n" "create and remove tag(s) to ec2 resources." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_tag" nil nil)
                       ("ec2_snapshot" "- name: ${1:creates a snapshot from an existing volume}\n  ec2_snapshot: $0\n" "creates a snapshot from an existing volume" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_snapshot" nil nil)
                       ("ec2_scaling_policy" "- name: ${1:Create or delete AWS scaling policies for Autoscaling groups}\n  ec2_scaling_policy: state=$2 name=$3 asg_name=$4 $0\n" "Create or delete AWS scaling policies for Autoscaling groups" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_scaling_policy" nil nil)
                       ("ec2_metric_alarm" "- name: ${1:Create/update or delete AWS Cloudwatch 'metric alarms'}\n  ec2_metric_alarm: state=$2 name=$3 $0\n" "Create/update or delete AWS Cloudwatch 'metric alarms'" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_metric_alarm" nil nil)
                       ("ec2_lc" "- name: ${1:Create or delete AWS Autoscaling Launch Configurations}\n  ec2_lc: state=$2 name=$3 instance_type=$4 $0\n" "Create or delete AWS Autoscaling Launch Configurations" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_lc" nil nil)
                       ("ec2_key" "- name: ${1:maintain an ec2 key pair.}\n  ec2_key: name=$2 $0\n" "maintain an ec2 key pair." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_key" nil nil)
                       ("ec2_group" "- name: ${1:maintain an ec2 VPC security group.}\n  ec2_group: name=$2 description=$3 $0\n" "maintain an ec2 VPC security group." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_group" nil nil)
                       ("ec2_facts" "- name: ${1:Gathers facts about remote hosts within ec2 (aws)}\n  ec2_facts: $0\n" "Gathers facts about remote hosts within ec2 (aws)" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_facts" nil nil)
                       ("ec2_elb_lb" "- name: ${1:Creates or destroys Amazon ELB.}\n  ec2_elb_lb: state=$2 name=$3 $0\n" "Creates or destroys Amazon ELB." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_elb_lb" nil nil)
                       ("ec2_elb" "- name: ${1:De-registers or registers instances from EC2 ELBs}\n  ec2_elb: state=$2 instance_id=$3 $0\n" "De-registers or registers instances from EC2 ELBs" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_elb" nil nil)
                       ("ec2_eip" "- name: ${1:associate an EC2 elastic IP with an instance.}\n  ec2_eip: $0\n" "associate an EC2 elastic IP with an instance." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_eip" nil nil)
                       ("ec2_asg" "- name: ${1:Create or delete AWS Autoscaling Groups}\n  ec2_asg: state=$2 name=$3 $0\n" "Create or delete AWS Autoscaling Groups" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_asg" nil nil)
                       ("ec2_ami_search" "- name: ${1:Retrieve AWS AMI for a given operating system.}\n  ec2_ami_search: distro=$2 release=$3 $0\n" "Retrieve AWS AMI for a given operating system." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_ami_search" nil nil)
                       ("ec2_ami" "- name: ${1:create or destroy an image in ec2, return imageid}\n  ec2_ami: $0\n" "create or destroy an image in ec2, return imageid" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2_ami" nil nil)
                       ("ec2" "- name: ${1:create, terminate, start or stop an instance in ec2, return instanceid}\n  ec2: instance_type=$2 image=$3 $0\n" "create, terminate, start or stop an instance in ec2, return instanceid" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/ec2" nil nil)
                       ("cloudformation" "- name: ${1:create a AWS CloudFormation stack}\n  cloudformation: stack_name=$2 state=$3 template=$4 $0\n" "create a AWS CloudFormation stack" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/amazon/cloudformation" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("azure" "- name: ${1:create or terminate a virtual machine in azure}\n  azure: name=$2 location=$3 storage_account=$4 image=$5 $0\n" "create or terminate a virtual machine in azure" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/azure/azure" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("uri" "- name: ${1:Interacts with webservices}\n  uri: url=$2 $0\n" "Interacts with webservices" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/basics/uri" nil nil)
                       ("slurp" "- name: ${1:Slurps a file from remote nodes}\n  slurp: src=$2 $0\n" "Slurps a file from remote nodes" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/basics/slurp" nil nil)
                       ("get_url" "- name: ${1:Downloads files from HTTP, HTTPS, or FTP to node}\n  get_url: url=$2 dest=$3 $0\n" "Downloads files from HTTP, HTTPS, or FTP to node" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/basics/get_url" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("netscaler" "- name: ${1:Manages Citrix NetScaler entities}\n  netscaler: nsc_host=$2 user=$3 password=$4 name=${5:hostname} $0\n" "Manages Citrix NetScaler entities" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/citrix/netscaler" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("shell" "- name: ${1:Execute commands in nodes.}\n  shell: free_form=$2 $0\n" "Execute commands in nodes." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/commands/shell" nil nil)
                       ("script" "- name: ${1:Runs a local script on a remote node after transferring it}\n  script: free_form=$2 $0\n" "Runs a local script on a remote node after transferring it" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/commands/script" nil nil)
                       ("raw" "- name: ${1:Executes a low-down and dirty SSH command}\n  raw: free_form=$2 $0\n" "Executes a low-down and dirty SSH command" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/commands/raw" nil nil)
                       ("command" "- name: ${1:Executes a command on a remote node}\n  command: free_form=$2 $0\n" "Executes a command on a remote node" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/commands/command" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("digital_ocean_sshkey" "- name: ${1:Create/delete an SSH key in DigitalOcean}\n  digital_ocean_sshkey: $0\n" "Create/delete an SSH key in DigitalOcean" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/digital_ocean/digital_ocean_sshkey" nil nil)
                       ("digital_ocean_domain" "- name: ${1:Create/delete a DNS record in DigitalOcean}\n  digital_ocean_domain: $0\n" "Create/delete a DNS record in DigitalOcean" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/digital_ocean/digital_ocean_domain" nil nil)
                       ("digital_ocean" "- name: ${1:Create/delete a droplet/SSH_key in DigitalOcean}\n  digital_ocean: $0\n" "Create/delete a droplet/SSH_key in DigitalOcean" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/digital_ocean/digital_ocean" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("docker" "- name: ${1:manage docker containers}\n  docker: image=$2 $0\n" "manage docker containers" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/docker/docker" nil nil)
                       ("docker_image" "- name: ${1:manage docker images}\n  docker_image: name=$2 $0\n" "manage docker images" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/docker/_docker_image" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("bigip_pool_member" "- name: ${1:Manages F5 BIG-IP LTM pool members}\n  bigip_pool_member: server=$2 user=$3 password=$4 state=${5:present} pool=$6 host=$7 port=$8 $0\n" "Manages F5 BIG-IP LTM pool members" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/f5/bigip_pool_member" nil nil)
                       ("bigip_pool" "- name: ${1:Manages F5 BIG-IP LTM pools}\n  bigip_pool: server=$2 user=$3 password=$4 name=$5 $0\n" "Manages F5 BIG-IP LTM pools" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/f5/bigip_pool" nil nil)
                       ("bigip_node" "- name: ${1:Manages F5 BIG-IP LTM nodes}\n  bigip_node: server=$2 user=$3 password=$4 state=${5:present} host=$6 $0\n" "Manages F5 BIG-IP LTM nodes" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/f5/bigip_node" nil nil)
                       ("bigip_monitor_tcp" "- name: ${1:Manages F5 BIG-IP LTM tcp monitors}\n  bigip_monitor_tcp: server=$2 user=$3 password=$4 name=$5 send=${6:none} receive=${7:none} $0\n" "Manages F5 BIG-IP LTM tcp monitors" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/f5/bigip_monitor_tcp" nil nil)
                       ("bigip_monitor_http" "- name: ${1:Manages F5 BIG-IP LTM http monitors}\n  bigip_monitor_http: server=$2 user=$3 password=$4 name=$5 send=${6:none} receive=${7:none} receive_disable=${8:none} $0\n" "Manages F5 BIG-IP LTM http monitors" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/f5/bigip_monitor_http" nil nil)
                       ("bigip_facts" "- name: ${1:Collect facts from F5 BIG-IP devices}\n  bigip_facts: server=$2 user=$3 password=$4 include=$5 $0\n" "Collect facts from F5 BIG-IP devices" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/f5/bigip_facts" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("xattr" "- name: ${1:set/retrieve extended attributes}\n  xattr: name=${2:None} $0\n" "set/retrieve extended attributes" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/xattr" nil nil)
                       ("unarchive" "- name: ${1:Copies an archive to a remote location and unpack it}\n  unarchive: src=$2 dest=$3 $0\n" "Copies an archive to a remote location and unpack it" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/unarchive" nil nil)
                       ("template" "- name: ${1:Templates a file out to a remote server.}\n  template: src=$2 dest=$3 $0\n" "Templates a file out to a remote server." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/template" nil nil)
                       ("synchronize" "- name: ${1:Uses rsync to make synchronizing file paths in your playbooks quick and easy.}\n  synchronize: src=$2 dest=$3 $0\n" "Uses rsync to make synchronizing file paths in your playbooks quick and easy." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/synchronize" nil nil)
                       ("stat" "- name: ${1:retrieve file or file system status}\n  stat: path=$2 $0\n" "retrieve file or file system status" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/stat" nil nil)
                       ("replace" "- name: ${1:Replace all instances of a particular string in a file using a back-referenced regular expression.}\n  replace: dest=$2 regexp=$3 $0\n" "Replace all instances of a particular string in a file using a back-referenced regular expression." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/replace" nil nil)
                       ("lineinfile" "- name: ${1:Ensure a particular line is in a file, or replace an existing line using a back-referenced regular expression.}\n  lineinfile: dest=$2 $0\n" "Ensure a particular line is in a file, or replace an existing line using a back-referenced regular expression." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/lineinfile" nil nil)
                       ("ini_file" "- name: ${1:Tweak settings in INI files}\n  ini_file: dest=$2 section=$3 $0\n" "Tweak settings in INI files" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/ini_file" nil nil)
                       ("file" "- name: ${1:Sets attributes of files}\n  file: path=${2:[]} $0\n" "Sets attributes of files" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/file" nil nil)
                       ("fetch" "- name: ${1:Fetches a file from remote nodes}\n  fetch: src=$2 dest=$3 $0\n" "Fetches a file from remote nodes" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/fetch" nil nil)
                       ("copy" "- name: ${1:Copies files to remote locations.}\n  copy: dest=$2 $0\n" "Copies files to remote locations." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/copy" nil nil)
                       ("assemble" "- name: ${1:Assembles a configuration file from fragments}\n  assemble: src=$2 dest=$3 $0\n" "Assembles a configuration file from fragments" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/assemble" nil nil)
                       ("acl" "- name: ${1:Sets and retrieves file ACL information.}\n  acl: name=$2 $0\n" "Sets and retrieves file ACL information." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/files/acl" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("gce_pd" "- name: ${1:utilize GCE persistent disk resources}\n  gce_pd: name=$2 $0\n" "utilize GCE persistent disk resources" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/google/gce_pd" nil nil)
                       ("gce_net" "- name: ${1:create/destroy GCE networks and firewall rules}\n  gce_net: $0\n" "create/destroy GCE networks and firewall rules" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/google/gce_net" nil nil)
                       ("gce_lb" "- name: ${1:create/destroy GCE load-balancer resources}\n  gce_lb: $0\n" "create/destroy GCE load-balancer resources" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/google/gce_lb" nil nil)
                       ("gce" "- name: ${1:create or terminate GCE instances}\n  gce: zone=${2:us-central1-a} $0\n" "create or terminate GCE instances" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/google/gce" nil nil)
                       ("gc_storage" "- name: ${1:This module manages objects/buckets in Google Cloud Storage.}\n  gc_storage: bucket=$2 mode=$3 gcs_secret_key=$4 gcs_access_key=$5 $0\n" "This module manages objects/buckets in Google Cloud Storage." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/google/gc_storage" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("fireball" "- name: ${1:Enable fireball mode on remote node}\n  fireball: $0\n" "Enable fireball mode on remote node" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/helper/fireball" nil nil)
                       ("accelerate" "- name: ${1:Enable accelerated mode on remote node}\n  accelerate: $0\n" "Enable accelerated mode on remote node" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/helper/accelerate" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("group_by" "- name: ${1:Create Ansible groups based on facts}\n  group_by: key=$2 $0\n" "Create Ansible groups based on facts" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/inventory/group_by" nil nil)
                       ("add_host" "- name: ${1:add a host (and alternatively a group) to the ansible-playbook in-memory inventory}\n  add_host: name=$2 $0\n" "add a host (and alternatively a group) to the ansible-playbook in-memory inventory" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/inventory/add_host" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("pip" "- name: ${1:Manages Python library dependencies.}\n  pip: $0\n" "Manages Python library dependencies." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/language/pip" nil nil)
                       ("npm" "- name: ${1:Manage node.js packages with npm}\n  npm: $0\n" "Manage node.js packages with npm" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/language/npm" nil nil)
                       ("gem" "- name: ${1:Manage Ruby gems}\n  gem: name=$2 $0\n" "Manage Ruby gems" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/language/gem" nil nil)
                       ("easy_install" "- name: ${1:Installs Python libraries}\n  easy_install: name=$2 $0\n" "Installs Python libraries" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/language/easy_install" nil nil)
                       ("cpanm" "- name: ${1:Manages Perl library dependencies.}\n  cpanm: $0\n" "Manages Perl library dependencies." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/language/cpanm" nil nil)
                       ("composer" "- name: ${1:Dependency Manager for PHP}\n  composer: working_dir=$2 $0\n" "Dependency Manager for PHP" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/language/composer" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("linode" "- name: ${1:create / delete / stop / restart an instance in Linode Public Cloud}\n  linode: $0\n" "create / delete / stop / restart an instance in Linode Public Cloud" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/linode/linode" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("wait_for" "- name: ${1:Waits for a condition before continuing.}\n  wait_for: $0\n" "Waits for a condition before continuing." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/logic/wait_for" nil nil)
                       ("set_fact" "- name: ${1:Set host facts from a task}\n  set_fact: key_value=$2 $0\n" "Set host facts from a task" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/logic/set_fact" nil nil)
                       ("pause" "- name: ${1:Pause playbook execution}\n  pause: $0\n" "Pause playbook execution" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/logic/pause" nil nil)
                       ("include_vars" "- name: ${1:Load variables from files, dynamically within a task.}\n  include_vars: free-form=$2 $0\n" "Load variables from files, dynamically within a task." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/logic/include_vars" nil nil)
                       ("fail" "- name: ${1:Fail with custom message}\n  fail: $0\n" "Fail with custom message" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/logic/fail" nil nil)
                       ("debug" "- name: ${1:Print statements during execution}\n  debug: $0\n" "Print statements during execution" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/logic/debug" nil nil)
                       ("async_status" "- name: ${1:Obtain status of asynchronous task}\n  async_status: jid=$2 $0\n" "Obtain status of asynchronous task" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/logic/async_status" nil nil)
                       ("assert" "- name: ${1:Fail with custom message}\n  assert: that=$2 $0\n" "Fail with custom message" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/logic/assert" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("rabbitmq_vhost" "- name: ${1:Manage the state of a virtual host in RabbitMQ}\n  rabbitmq_vhost: name=$2 $0\n" "Manage the state of a virtual host in RabbitMQ" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/messaging/rabbitmq_vhost" nil nil)
                       ("rabbitmq_user" "- name: ${1:Adds or removes users to RabbitMQ}\n  rabbitmq_user: user=$2 $0\n" "Adds or removes users to RabbitMQ" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/messaging/rabbitmq_user" nil nil)
                       ("rabbitmq_policy" "- name: ${1:Manage the state of policies in RabbitMQ.}\n  rabbitmq_policy: name=$2 pattern=$3 tags=$4 $0\n" "Manage the state of policies in RabbitMQ." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/messaging/rabbitmq_policy" nil nil)
                       ("rabbitmq_plugin" "- name: ${1:Adds or removes plugins to RabbitMQ}\n  rabbitmq_plugin: names=$2 $0\n" "Adds or removes plugins to RabbitMQ" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/messaging/rabbitmq_plugin" nil nil)
                       ("rabbitmq_parameter" "- name: ${1:Adds or removes parameters to RabbitMQ}\n  rabbitmq_parameter: component=$2 name=$3 $0\n" "Adds or removes parameters to RabbitMQ" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/messaging/rabbitmq_parameter" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("virt" "- name: ${1:Manages virtual machines supported by libvirt}\n  virt: name=$2 $0\n" "Manages virtual machines supported by libvirt" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/misc/virt" nil nil)
                       ("riak" "- name: ${1:This module handles some common Riak operations}\n  riak: $0\n" "This module handles some common Riak operations" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/misc/riak" nil nil)
                       ("redis" "- name: ${1:Various redis commands, slave and flush}\n  redis: command=$2 $0\n" "Various redis commands, slave and flush" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/misc/redis" nil nil)
                       ("ovirt" "- name: ${1:oVirt/RHEV platform management}\n  ovirt: user=$2 url=$3 instance_name=$4 password=$5 $0\n" "oVirt/RHEV platform management" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/misc/ovirt" nil nil)
                       ("mongodb_user" "- name: ${1:Adds or removes a user from a MongoDB database.}\n  mongodb_user: database=$2 user=$3 $0\n" "Adds or removes a user from a MongoDB database." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/misc/mongodb_user" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("zabbix_maintenance" "- name: ${1:Create Zabbix maintenance windows}\n  zabbix_maintenance: server_url=$2 login_user=$3 login_password=$4 name=$5 desc=${6:Created by Ansible} $0\n" "Create Zabbix maintenance windows" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/zabbix_maintenance" nil nil)
                       ("stackdriver" "- name: ${1:Send code deploy and annotation events to stackdriver}\n  stackdriver: key=$2 $0\n" "Send code deploy and annotation events to stackdriver" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/stackdriver" nil nil)
                       ("rollbar_deployment" "- name: ${1:Notify Rollbar about app deployments}\n  rollbar_deployment: token=$2 environment=$3 revision=$4 $0\n" "Notify Rollbar about app deployments" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/rollbar_deployment" nil nil)
                       ("pingdom" "- name: ${1:Pause/unpause Pingdom alerts}\n  pingdom: state=$2 checkid=$3 uid=$4 passwd=$5 key=$6 $0\n" "Pause/unpause Pingdom alerts" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/pingdom" nil nil)
                       ("pagerduty" "- name: ${1:Create PagerDuty maintenance windows}\n  pagerduty: state=$2 name=$3 user=$4 passwd=$5 token=$6 requester_id=$7 $0\n" "Create PagerDuty maintenance windows" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/pagerduty" nil nil)
                       ("newrelic_deployment" "- name: ${1:Notify newrelic about app deployments}\n  newrelic_deployment: token=$2 $0\n" "Notify newrelic about app deployments" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/newrelic_deployment" nil nil)
                       ("nagios" "- name: ${1:Perform common tasks in Nagios related to downtime and notifications.}\n  nagios: action=$2 services=$3 command=$4 $0\n" "Perform common tasks in Nagios related to downtime and notifications." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/nagios" nil nil)
                       ("monit" "- name: ${1:Manage the state of a program monitored via Monit}\n  monit: name=$2 state=$3 $0\n" "Manage the state of a program monitored via Monit" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/monit" nil nil)
                       ("logentries" "- name: ${1:Module for tracking logs via logentries.com}\n  logentries: path=$2 $0\n" "Module for tracking logs via logentries.com" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/logentries" nil nil)
                       ("librato_annotation" "- name: ${1:create an annotation in librato}\n  librato_annotation: user=$2 api_key=$3 title=$4 links=$5 $0\n" "create an annotation in librato" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/librato_annotation" nil nil)
                       ("datadog_event" "- name: ${1:Posts events to DataDog  service}\n  datadog_event: api_key=$2 title=$3 text=$4 $0\n" "Posts events to DataDog  service" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/datadog_event" nil nil)
                       ("boundary_meter" "- name: ${1:Manage boundary meters}\n  boundary_meter: name=$2 apiid=$3 apikey=$4 $0\n" "Manage boundary meters" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/boundary_meter" nil nil)
                       ("bigpanda" "- name: ${1:Notify BigPanda about deployments}\n  bigpanda: component=$2 version=$3 token=$4 state=$5 $0\n" "Notify BigPanda about deployments" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/bigpanda" nil nil)
                       ("airbrake_deployment" "- name: ${1:Notify airbrake about app deployments}\n  airbrake_deployment: token=$2 environment=$3 $0\n" "Notify airbrake about app deployments" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/monitoring/airbrake_deployment" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("mysql_variables" "- name: ${1:Manage MySQL global variables}\n  mysql_variables: variable=$2 $0\n" "Manage MySQL global variables" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/mysql/mysql_variables" nil nil)
                       ("mysql_user" "- name: ${1:Adds or removes a user from a MySQL database.}\n  mysql_user: name=$2 $0\n" "Adds or removes a user from a MySQL database." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/mysql/mysql_user" nil nil)
                       ("mysql_replication" "- name: ${1:Manage MySQL replication}\n  mysql_replication: $0\n" "Manage MySQL replication" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/mysql/mysql_replication" nil nil)
                       ("mysql_db" "- name: ${1:Add or remove MySQL databases from a remote host.}\n  mysql_db: name=$2 $0\n" "Add or remove MySQL databases from a remote host." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/mysql/mysql_db" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("openvswitch_port" "- name: ${1:Manage Open vSwitch ports}\n  openvswitch_port: bridge=$2 port=$3 $0\n" "Manage Open vSwitch ports" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/network/openvswitch_port" nil nil)
                       ("openvswitch_bridge" "- name: ${1:Manage Open vSwitch bridges}\n  openvswitch_bridge: bridge=$2 $0\n" "Manage Open vSwitch bridges" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/network/openvswitch_bridge" nil nil)
                       ("lldp" "- name: ${1:get details reported by lldp}\n  lldp: $0\n" "get details reported by lldp" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/network/lldp" nil nil)
                       ("dnsmadeeasy" "- name: ${1:Interface with dnsmadeeasy.com (a DNS hosting service).}\n  dnsmadeeasy: account_key=$2 account_secret=$3 domain=$4 state=$5 $0\n" "Interface with dnsmadeeasy.com (a DNS hosting service)." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/network/dnsmadeeasy" nil nil)
                       ("dnsimple" "- name: ${1:Interface with dnsimple.com (a DNS hosting service).}\n  dnsimple: $0\n" "Interface with dnsimple.com (a DNS hosting service)." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/network/dnsimple" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("typetalk" "- name: ${1:Send a message to typetalk}\n  typetalk: client_id=$2 client_secret=$3 topic=$4 msg=$5 $0\n" "Send a message to typetalk" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/typetalk" nil nil)
                       ("twilio" "- name: ${1:Sends a text message to a mobile phone through Twilio.}\n  twilio: account_sid=$2 auth_token=$3 msg=$4 to_number=$5 from_number=$6 $0\n" "Sends a text message to a mobile phone through Twilio." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/twilio" nil nil)
                       ("sns" "- name: ${1:Send Amazon Simple Notification Service (SNS) messages}\n  sns: msg=$2 topic=$3 $0\n" "Send Amazon Simple Notification Service (SNS) messages" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/sns" nil nil)
                       ("slack" "- name: ${1:Send Slack notifications}\n  slack: domain=$2 token=$3 msg=$4 $0\n" "Send Slack notifications" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/slack" nil nil)
                       ("osx_say" "- name: ${1:Makes an OSX computer to speak.}\n  osx_say: msg=$2 $0\n" "Makes an OSX computer to speak." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/osx_say" nil nil)
                       ("nexmo" "- name: ${1:Send a SMS via nexmo}\n  nexmo: api_key=$2 api_secret=$3 src=$4 dest=$5 msg=$6 $0\n" "Send a SMS via nexmo" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/nexmo" nil nil)
                       ("mqtt" "- name: ${1:Publish a message on an MQTT topic for the IoT}\n  mqtt: topic=$2 payload=$3 $0\n" "Publish a message on an MQTT topic for the IoT" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/mqtt" nil nil)
                       ("mail" "- name: ${1:Send an email}\n  mail: subject=$2 $0\n" "Send an email" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/mail" nil nil)
                       ("jabber" "- name: ${1:Send a message to jabber user or chat room}\n  jabber: user=$2 password=$3 to=$4 msg=$5 $0\n" "Send a message to jabber user or chat room" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/jabber" nil nil)
                       ("irc" "- name: ${1:Send a message to an IRC channel}\n  irc: msg=$2 channel=$3 $0\n" "Send a message to an IRC channel" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/irc" nil nil)
                       ("hipchat" "- name: ${1:Send a message to hipchat}\n  hipchat: token=$2 room=$3 msg=$4 $0\n" "Send a message to hipchat" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/hipchat" nil nil)
                       ("grove" "- name: ${1:Sends a notification to a grove.io channel}\n  grove: channel_token=$2 message=$3 $0\n" "Sends a notification to a grove.io channel" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/grove" nil nil)
                       ("flowdock" "- name: ${1:Send a message to a flowdock}\n  flowdock: token=$2 type=$3 msg=$4 $0\n" "Send a message to a flowdock" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/flowdock" nil nil)
                       ("campfire" "- name: ${1:Send a message to Campfire}\n  campfire: subscription=$2 token=$3 room=$4 msg=$5 $0\n" "Send a message to Campfire" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/notification/campfire" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("quantum_subnet" "- name: ${1:Add/remove subnet from a network}\n  quantum_subnet: login_username=${2:admin} login_password=${3:true} login_tenant_name=${4:true} network_name=${5:None} name=${6:None} cidr=${7:None} $0\n" "Add/remove subnet from a network" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/quantum_subnet" nil nil)
                       ("quantum_router_interface" "- name: ${1:Attach/Dettach a subnet's interface to a router}\n  quantum_router_interface: login_username=${2:admin} login_password=${3:yes} login_tenant_name=${4:yes} router_name=${5:None} subnet_name=${6:None} $0\n" "Attach/Dettach a subnet's interface to a router" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/quantum_router_interface" nil nil)
                       ("quantum_router_gateway" "- name: ${1:set/unset a gateway interface for the router with the specified external network}\n  quantum_router_gateway: login_username=${2:admin} login_password=${3:yes} login_tenant_name=${4:yes} router_name=${5:None} network_name=${6:None} $0\n" "set/unset a gateway interface for the router with the specified external network" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/quantum_router_gateway" nil nil)
                       ("quantum_router" "- name: ${1:Create or Remove router from openstack}\n  quantum_router: login_username=${2:admin} login_password=${3:yes} login_tenant_name=${4:yes} name=${5:None} $0\n" "Create or Remove router from openstack" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/quantum_router" nil nil)
                       ("quantum_network" "- name: ${1:Creates/Removes networks from OpenStack}\n  quantum_network: login_username=${2:admin} login_password=${3:yes} login_tenant_name=${4:yes} name=${5:None} $0\n" "Creates/Removes networks from OpenStack" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/quantum_network" nil nil)
                       ("quantum_floating_ip_associate" "- name: ${1:Associate or disassociate a particular floating IP with an instance}\n  quantum_floating_ip_associate: login_username=${2:admin} login_password=${3:yes} login_tenant_name=${4:true} instance_name=${5:None} ip_address=${6:None} $0\n" "Associate or disassociate a particular floating IP with an instance" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/quantum_floating_ip_associate" nil nil)
                       ("quantum_floating_ip" "- name: ${1:Add/Remove floating IP from an instance}\n  quantum_floating_ip: login_username=${2:admin} login_password=${3:yes} login_tenant_name=${4:yes} network_name=${5:None} instance_name=${6:None} $0\n" "Add/Remove floating IP from an instance" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/quantum_floating_ip" nil nil)
                       ("nova_keypair" "- name: ${1:Add/Delete key pair from nova}\n  nova_keypair: login_username=${2:admin} login_password=${3:yes} login_tenant_name=${4:yes} name=${5:None} $0\n" "Add/Delete key pair from nova" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/nova_keypair" nil nil)
                       ("nova_compute" "- name: ${1:Create/Delete VMs from OpenStack}\n  nova_compute: login_username=${2:admin} login_password=${3:yes} login_tenant_name=${4:yes} name=${5:None} image_id=${6:None} image_name=${7:None} $0\n" "Create/Delete VMs from OpenStack" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/nova_compute" nil nil)
                       ("keystone_user" "- name: ${1:Manage OpenStack Identity (keystone) users, tenants and roles}\n  keystone_user: $0\n" "Manage OpenStack Identity (keystone) users, tenants and roles" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/keystone_user" nil nil)
                       ("glance_image" "- name: ${1:Add/Delete images from glance}\n  glance_image: login_username=${2:admin} login_password=${3:yes} login_tenant_name=${4:yes} name=${5:None} $0\n" "Add/Delete images from glance" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/openstack/glance_image" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("zypper_repository" "- name: ${1:Add and remove Zypper repositories}\n  zypper_repository: $0\n" "Add and remove Zypper repositories" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/zypper_repository" nil nil)
                       ("zypper" "- name: ${1:Manage packages on SUSE and openSUSE}\n  zypper: name=$2 $0\n" "Manage packages on SUSE and openSUSE" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/zypper" nil nil)
                       ("yum" "- name: ${1:Manages packages with the I(yum) package manager}\n  yum: name=$2 $0\n" "Manages packages with the I(yum) package manager" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/yum" nil nil)
                       ("urpmi" "- name: ${1:Urpmi manager}\n  urpmi: pkg=$2 $0\n" "Urpmi manager" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/urpmi" nil nil)
                       ("swdepot" "- name: ${1:Manage packages with swdepot package manager (HP-UX)}\n  swdepot: name=$2 state=$3 $0\n" "Manage packages with swdepot package manager (HP-UX)" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/swdepot" nil nil)
                       ("svr4pkg" "- name: ${1:Manage Solaris SVR4 packages}\n  svr4pkg: name=$2 state=$3 $0\n" "Manage Solaris SVR4 packages" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/svr4pkg" nil nil)
                       ("rpm_key" "- name: ${1:Adds or removes a gpg key from the rpm db}\n  rpm_key: key=$2 $0\n" "Adds or removes a gpg key from the rpm db" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/rpm_key" nil nil)
                       ("rhn_register" "- name: ${1:Manage Red Hat Network registration using the C(rhnreg_ks) command}\n  rhn_register: $0\n" "Manage Red Hat Network registration using the C(rhnreg_ks) command" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/rhn_register" nil nil)
                       ("rhn_channel" "- name: ${1:Adds or removes Red Hat software channels}\n  rhn_channel: name=$2 sysname=$3 url=$4 user=$5 password=$6 $0\n" "Adds or removes Red Hat software channels" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/rhn_channel" nil nil)
                       ("redhat_subscription" "- name: ${1:Manage Red Hat Network registration and subscriptions using the C(subscription-manager) command}\n  redhat_subscription: $0\n" "Manage Red Hat Network registration and subscriptions using the C(subscription-manager) command" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/redhat_subscription" nil nil)
                       ("portinstall" "- name: ${1:Installing packages from FreeBSD's ports system}\n  portinstall: name=$2 $0\n" "Installing packages from FreeBSD's ports system" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/portinstall" nil nil)
                       ("portage" "- name: ${1:Package manager for Gentoo}\n  portage: $0\n" "Package manager for Gentoo" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/portage" nil nil)
                       ("pkgutil" "- name: ${1:Manage CSW-Packages on Solaris}\n  pkgutil: name=$2 state=$3 $0\n" "Manage CSW-Packages on Solaris" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/pkgutil" nil nil)
                       ("pkgng" "- name: ${1:Package manager for FreeBSD >= 9.0}\n  pkgng: name=$2 $0\n" "Package manager for FreeBSD >= 9.0" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/pkgng" nil nil)
                       ("pkgin" "- name: ${1:Package manager for SmartOS}\n  pkgin: name=$2 $0\n" "Package manager for SmartOS" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/pkgin" nil nil)
                       ("pacman" "- name: ${1:Manage packages with I(pacman)}\n  pacman: $0\n" "Manage packages with I(pacman)" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/pacman" nil nil)
                       ("opkg" "- name: ${1:Package manager for OpenWrt}\n  opkg: name=$2 $0\n" "Package manager for OpenWrt" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/opkg" nil nil)
                       ("openbsd_pkg" "- name: ${1:Manage packages on OpenBSD.}\n  openbsd_pkg: name=$2 state=$3 $0\n" "Manage packages on OpenBSD." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/openbsd_pkg" nil nil)
                       ("macports" "- name: ${1:Package manager for MacPorts}\n  macports: name=$2 $0\n" "Package manager for MacPorts" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/macports" nil nil)
                       ("layman" "- name: ${1:Manage Gentoo overlays}\n  layman: name=$2 $0\n" "Manage Gentoo overlays" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/layman" nil nil)
                       ("homebrew_tap" "- name: ${1:Tap a Homebrew repository.}\n  homebrew_tap: tap=$2 $0\n" "Tap a Homebrew repository." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/homebrew_tap" nil nil)
                       ("homebrew_cask" "- name: ${1:Install/uninstall homebrew casks.}\n  homebrew_cask: name=$2 $0\n" "Install/uninstall homebrew casks." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/homebrew_cask" nil nil)
                       ("homebrew" "- name: ${1:Package manager for Homebrew}\n  homebrew: name=$2 $0\n" "Package manager for Homebrew" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/homebrew" nil nil)
                       ("apt_rpm" "- name: ${1:apt_rpm package manager}\n  apt_rpm: pkg=$2 $0\n" "apt_rpm package manager" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/apt_rpm" nil nil)
                       ("apt_repository" "- name: ${1:Add and remove APT repositories}\n  apt_repository: repo=${2:none} $0\n" "Add and remove APT repositories" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/apt_repository" nil nil)
                       ("apt_key" "- name: ${1:Add or remove an apt key}\n  apt_key: $0\n" "Add or remove an apt key" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/apt_key" nil nil)
                       ("apt" "- name: ${1:Manages apt-packages}\n  apt: $0\n" "Manages apt-packages" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/os/apt" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("postgresql_user" "- name: ${1:Adds or removes a users (roles) from a PostgreSQL database.}\n  postgresql_user: name=$2 $0\n" "Adds or removes a users (roles) from a PostgreSQL database." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/postgresql/postgresql_user" nil nil)
                       ("postgresql_privs" "- name: ${1:Grant or revoke privileges on PostgreSQL database objects.}\n  postgresql_privs: database=$2 roles=$3 $0\n" "Grant or revoke privileges on PostgreSQL database objects." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/postgresql/postgresql_privs" nil nil)
                       ("postgresql_db" "- name: ${1:Add or remove PostgreSQL databases from a remote host.}\n  postgresql_db: name=$2 $0\n" "Add or remove PostgreSQL databases from a remote host." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/postgresql/postgresql_db" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("rax_scaling_policy" "- name: ${1:Manipulate Rackspace Cloud Autoscale Scaling Policy}\n  rax_scaling_policy: name=$2 policy_type=$3 scaling_group=$4 $0\n" "Manipulate Rackspace Cloud Autoscale Scaling Policy" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_scaling_policy" nil nil)
                       ("rax_scaling_group" "- name: ${1:Manipulate Rackspace Cloud Autoscale Groups}\n  rax_scaling_group: flavor=$2 image=$3 max_entities=$4 min_entities=$5 name=$6 server_name=$7 $0\n" "Manipulate Rackspace Cloud Autoscale Groups" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_scaling_group" nil nil)
                       ("rax_queue" "- name: ${1:create / delete a queue in Rackspace Public Cloud}\n  rax_queue: $0\n" "create / delete a queue in Rackspace Public Cloud" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_queue" nil nil)
                       ("rax_network" "- name: ${1:create / delete an isolated network in Rackspace Public Cloud}\n  rax_network: $0\n" "create / delete an isolated network in Rackspace Public Cloud" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_network" nil nil)
                       ("rax_meta" "- name: ${1:Manipulate metadata for Rackspace Cloud Servers}\n  rax_meta: $0\n" "Manipulate metadata for Rackspace Cloud Servers" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_meta" nil nil)
                       ("rax_keypair" "- name: ${1:Create a keypair for use with Rackspace Cloud Servers}\n  rax_keypair: name=$2 $0\n" "Create a keypair for use with Rackspace Cloud Servers" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_keypair" nil nil)
                       ("rax_identity" "- name: ${1:Load Rackspace Cloud Identity}\n  rax_identity: $0\n" "Load Rackspace Cloud Identity" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_identity" nil nil)
                       ("rax_files_objects" "- name: ${1:Upload, download, and delete objects in Rackspace Cloud Files}\n  rax_files_objects: container=$2 $0\n" "Upload, download, and delete objects in Rackspace Cloud Files" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_files_objects" nil nil)
                       ("rax_files" "- name: ${1:Manipulate Rackspace Cloud Files Containers}\n  rax_files: container=$2 $0\n" "Manipulate Rackspace Cloud Files Containers" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_files" nil nil)
                       ("rax_facts" "- name: ${1:Gather facts for Rackspace Cloud Servers}\n  rax_facts: $0\n" "Gather facts for Rackspace Cloud Servers" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_facts" nil nil)
                       ("rax_dns_record" "- name: ${1:Manage DNS records on Rackspace Cloud DNS}\n  rax_dns_record: data=$2 name=$3 type=$4 $0\n" "Manage DNS records on Rackspace Cloud DNS" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_dns_record" nil nil)
                       ("rax_dns" "- name: ${1:Manage domains on Rackspace Cloud DNS}\n  rax_dns: $0\n" "Manage domains on Rackspace Cloud DNS" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_dns" nil nil)
                       ("rax_clb_nodes" "- name: ${1:add, modify and remove nodes from a Rackspace Cloud Load Balancer}\n  rax_clb_nodes: load_balancer_id=$2 $0\n" "add, modify and remove nodes from a Rackspace Cloud Load Balancer" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_clb_nodes" nil nil)
                       ("rax_clb" "- name: ${1:create / delete a load balancer in Rackspace Public Cloud}\n  rax_clb: $0\n" "create / delete a load balancer in Rackspace Public Cloud" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_clb" nil nil)
                       ("rax_cdb_user" "- name: ${1:create / delete a Rackspace Cloud Database}\n  rax_cdb_user: $0\n" "create / delete a Rackspace Cloud Database" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_cdb_user" nil nil)
                       ("rax_cdb_database" "- name: ${1:create / delete a database in the Cloud Databases}\n  rax_cdb_database: $0\n" "create / delete a database in the Cloud Databases" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_cdb_database" nil nil)
                       ("rax_cdb" "- name: ${1:create/delete or resize a Rackspace Cloud Databases instance}\n  rax_cdb: $0\n" "create/delete or resize a Rackspace Cloud Databases instance" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_cdb" nil nil)
                       ("rax_cbs_attachments" "- name: ${1:Manipulate Rackspace Cloud Block Storage Volume Attachments}\n  rax_cbs_attachments: device=$2 volume=$3 server=$4 state=${5:present} $0\n" "Manipulate Rackspace Cloud Block Storage Volume Attachments" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_cbs_attachments" nil nil)
                       ("rax_cbs" "- name: ${1:Manipulate Rackspace Cloud Block Storage Volumes}\n  rax_cbs: name=$2 size=${3:100} state=${4:present} volume_type=${5:SATA} $0\n" "Manipulate Rackspace Cloud Block Storage Volumes" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax_cbs" nil nil)
                       ("rax" "- name: ${1:create / delete an instance in Rackspace Public Cloud}\n  rax: $0\n" "create / delete an instance in Rackspace Public Cloud" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/rackspace/rax" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("subversion" "- name: ${1:Deploys a subversion repository.}\n  subversion: repo=$2 dest=$3 $0\n" "Deploys a subversion repository." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/source_control/subversion" nil nil)
                       ("hg" "- name: ${1:Manages Mercurial (hg) repositories.}\n  hg: repo=$2 dest=$3 $0\n" "Manages Mercurial (hg) repositories." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/source_control/hg" nil nil)
                       ("github_hooks" "- name: ${1:Manages github service hooks.}\n  github_hooks: user=$2 oauthkey=$3 repo=$4 action=$5 $0\n" "Manages github service hooks." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/source_control/github_hooks" nil nil)
                       ("git" "- name: ${1:Deploy software (or files) from git checkouts}\n  git: repo=$2 dest=$3 $0\n" "Deploy software (or files) from git checkouts" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/source_control/git" nil nil)
                       ("bzr" "- name: ${1:Deploy software (or files) from bzr branches}\n  bzr: name=$2 dest=$3 $0\n" "Deploy software (or files) from bzr branches" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/source_control/bzr" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("zfs" "- name: ${1:Manage zfs}\n  zfs: name=$2 state=$3 $0\n" "Manage zfs" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/zfs" nil nil)
                       ("user" "- name: ${1:Manage user accounts}\n  user: name=$2 $0\n" "Manage user accounts" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/user" nil nil)
                       ("ufw" "- name: ${1:Manage firewall with UFW}\n  ufw: $0\n" "Manage firewall with UFW" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/ufw" nil nil)
                       ("sysctl" "- name: ${1:Manage entries in sysctl.conf.}\n  sysctl: name=$2 $0\n" "Manage entries in sysctl.conf." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/sysctl" nil nil)
                       ("setup" "- name: ${1:Gathers facts about remote hosts}\n  setup: $0\n" "Gathers facts about remote hosts" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/setup" nil nil)
                       ("service" "- name: ${1:Manage services.}\n  service: name=$2 $0\n" "Manage services." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/service" nil nil)
                       ("selinux" "- name: ${1:Change policy and state of SELinux}\n  selinux: state=$2 $0\n" "Change policy and state of SELinux" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/selinux" nil nil)
                       ("seboolean" "- name: ${1:Toggles SELinux booleans.}\n  seboolean: name=$2 state=$3 $0\n" "Toggles SELinux booleans." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/seboolean" nil nil)
                       ("ping" "- name: ${1:Try to connect to host and return C(pong) on success.}\n  ping: $0\n" "Try to connect to host and return C(pong) on success." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/ping" nil nil)
                       ("open_iscsi" "- name: ${1:Manage iscsi targets with open-iscsi}\n  open_iscsi: $0\n" "Manage iscsi targets with open-iscsi" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/open_iscsi" nil nil)
                       ("ohai" "- name: ${1:Returns inventory data from I(Ohai)}\n  ohai: $0\n" "Returns inventory data from I(Ohai)" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/ohai" nil nil)
                       ("mount" "- name: ${1:Control active and configured mount points}\n  mount: name=$2 src=$3 fstype=$4 state=$5 $0\n" "Control active and configured mount points" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/mount" nil nil)
                       ("modprobe" "- name: ${1:Add or remove kernel modules}\n  modprobe: name=$2 $0\n" "Add or remove kernel modules" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/modprobe" nil nil)
                       ("lvol" "- name: ${1:Configure LVM logical volumes}\n  lvol: vg=$2 lv=$3 $0\n" "Configure LVM logical volumes" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/lvol" nil nil)
                       ("lvg" "- name: ${1:Configure LVM volume groups}\n  lvg: vg=$2 $0\n" "Configure LVM volume groups" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/lvg" nil nil)
                       ("locale_gen" "- name: ${1:Creates or removes locales.}\n  locale_gen: name=$2 $0\n" "Creates or removes locales." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/locale_gen" nil nil)
                       ("kernel_blacklist" "- name: ${1:Blacklist kernel modules}\n  kernel_blacklist: name=$2 $0\n" "Blacklist kernel modules" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/kernel_blacklist" nil nil)
                       ("hostname" "- name: ${1:Manage hostname}\n  hostname: name=$2 $0\n" "Manage hostname" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/hostname" nil nil)
                       ("group" "- name: ${1:Add or remove groups}\n  group: name=$2 $0\n" "Add or remove groups" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/group" nil nil)
                       ("getent" "- name: ${1:a wrapper to the unix getent utility}\n  getent: database=$2 $0\n" "a wrapper to the unix getent utility" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/getent" nil nil)
                       ("firewalld" "- name: ${1:Manage arbitrary ports/services with firewalld}\n  firewalld: permanent=${2:true} state=${3:enabled} $0\n" "Manage arbitrary ports/services with firewalld" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/firewalld" nil nil)
                       ("filesystem" "- name: ${1:Makes file system on block device}\n  filesystem: fstype=$2 dev=$3 $0\n" "Makes file system on block device" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/filesystem" nil nil)
                       ("facter" "- name: ${1:Runs the discovery program I(facter) on the remote system}\n  facter: $0\n" "Runs the discovery program I(facter) on the remote system" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/facter" nil nil)
                       ("debconf" "- name: ${1:Configure a .deb package}\n  debconf: name=$2 $0\n" "Configure a .deb package" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/debconf" nil nil)
                       ("cron" "- name: ${1:Manage cron.d and crontab entries.}\n  cron: name=$2 $0\n" "Manage cron.d and crontab entries." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/cron" nil nil)
                       ("capabilities" "- name: ${1:Manage Linux capabilities}\n  capabilities: path=$2 capability=$3 $0\n" "Manage Linux capabilities" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/capabilities" nil nil)
                       ("authorized_key" "- name: ${1:Adds or removes an SSH authorized key}\n  authorized_key: user=$2 key=$3 $0\n" "Adds or removes an SSH authorized key" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/authorized_key" nil nil)
                       ("at" "- name: ${1:Schedule the execution of a command or script file via the at command.}\n  at: count=$2 units=$3 $0\n" "Schedule the execution of a command or script file via the at command." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/at" nil nil)
                       ("alternatives" "- name: ${1:Manages alternative programs for common commands}\n  alternatives: name=$2 path=$3 $0\n" "Manages alternative programs for common commands" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/system/alternatives" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("vsphere_guest" "- name: ${1:Create/delete/manage a guest VM through VMware vSphere.}\n  vsphere_guest: vcenter_hostname=$2 guest=$3 username=$4 password=$5 $0\n" "Create/delete/manage a guest VM through VMware vSphere." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/vmware/vsphere_guest" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("supervisorctl" "- name: ${1:Manage the state of a program or group of programs running via supervisord}\n  supervisorctl: name=$2 state=$3 $0\n" "Manage the state of a program or group of programs running via supervisord" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/web_infrastructure/supervisorctl" nil nil)
                       ("jira" "- name: ${1:create and modify issues in a JIRA instance}\n  jira: uri=$2 operation=$3 username=$4 password=$5 $0\n" "create and modify issues in a JIRA instance" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/web_infrastructure/jira" nil nil)
                       ("jboss" "- name: ${1:deploy applications to JBoss}\n  jboss: deployment=$2 $0\n" "deploy applications to JBoss" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/web_infrastructure/jboss" nil nil)
                       ("htpasswd" "- name: ${1:manage user files for basic authentication}\n  htpasswd: path=$2 name=$3 $0\n" "manage user files for basic authentication" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/web_infrastructure/htpasswd" nil nil)
                       ("ejabberd_user" "- name: ${1:Manages users for ejabberd servers}\n  ejabberd_user: username=$2 host=$3 $0\n" "Manages users for ejabberd servers" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/web_infrastructure/ejabberd_user" nil nil)
                       ("django_manage" "- name: ${1:Manages a Django application.}\n  django_manage: command=$2 app_path=$3 $0\n" "Manages a Django application." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/web_infrastructure/django_manage" nil nil)
                       ("apache2_module" "- name: ${1:enables/disables a module of the Apache2 webserver}\n  apache2_module: name=$2 $0\n" "enables/disables a module of the Apache2 webserver" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/web_infrastructure/apache2_module" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ansible-mode
                     '(("win_user" "- name: ${1:Manages local Windows user accounts}\n  win_user: name=$2 password=$3 $0\n" "Manages local Windows user accounts" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/windows/win_user" nil nil)
                       ("win_stat" "- name: ${1:returns information about a Windows file}\n  win_stat: path=$2 $0\n" "returns information about a Windows file" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/windows/win_stat" nil nil)
                       ("win_service" "- name: ${1:Manages Windows services}\n  win_service: name=$2 $0\n" "Manages Windows services" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/windows/win_service" nil nil)
                       ("win_ping" "- name: ${1:A windows version of the classic ping module.}\n  win_ping: $0\n" "A windows version of the classic ping module." ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/windows/win_ping" nil nil)
                       ("win_msi" "- name: ${1:Installs and uninstalls Windows MSI files}\n  win_msi: path=$2 $0\n" "Installs and uninstalls Windows MSI files" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/windows/win_msi" nil nil)
                       ("win_group" "- name: ${1:Add and remove local groups}\n  win_group: name=$2 $0\n" "Add and remove local groups" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/windows/win_group" nil nil)
                       ("win_get_url" "- name: ${1:Fetches a file from a given URL}\n  win_get_url: url=$2 $0\n" "Fetches a file from a given URL" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/windows/win_get_url" nil nil)
                       ("win_feature" "- name: ${1:Installs and uninstalls Windows Features}\n  win_feature: name=$2 $0\n" "Installs and uninstalls Windows Features" ansible nil nil "/home/hlissner/.config/doom/snippets/ansible-mode/windows/win_feature" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
