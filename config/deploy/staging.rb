server '127.0.0.1',
  user: 'vagrant',
  roles: %w{web},
  ssh_options: {
    port: 2222,
    forward_agent: false,
    keys: %{/Users/aes9h/Documents/ScholarsLab/vmboxes/rails/.vagrant/machines/default/virtualbox/private_key},
  }
