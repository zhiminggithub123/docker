docker_service 'default' do
  host ['unix:///var/run/docker.sock', 'tcp://127.0.0.1:2376']
  version node['docker']['version']
  labels ['environment:test', 'foo:bar']
  # storage_driver 'overlay'
  action [:create, :start]
end
