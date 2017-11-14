require 'serverspec'

set :backend, :exec

describe command('curl http://boulder:4000/directory') do
  its(:stdout) { should match(%r{"new-cert": "http://127.0.0.1:4000/acme/new-cert"}) }
end

describe command('/usr/local/go/bin/go version') do
  its(:stdout) { should match(/go1\.7/) }
end
