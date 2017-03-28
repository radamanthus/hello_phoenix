run "ln -nfs #{config.shared_path}/deps #{config.release_path}/deps"
run! "cd #{config.latest_release} && MIX_ENV=prod mix deps.get"
sudo "monit restart phoenix_#{config.app}"
