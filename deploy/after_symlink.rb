run "ln -nfs #{config.shared_path}/deps #{config.release_path}/deps"
run! "cd #{config.latest_release} && MIX_ENV=prod mix deps.get && MIX_ENV=prod mix phoenix.digest && MIX_ENV=prod mix release"
sudo "monit restart phoenix_#{config.app}"
