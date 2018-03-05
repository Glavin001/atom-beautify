#!/usr/bin/env ruby

conn_hash = { :hosts => [

      {:login => login, :passcode => passcode, :host => host, :port => port},
],
      :reliable => false, # Override default
:connect_headers => conn_hdrs,

}


hash = { :hosts => [

    {:login => user, :passcode => password, :host => 'noonehome', :port => 2525},

          {:login => user, :passcode => password, :host => host, :port => port},

          ],

          :logger => mylog, # This enables callback logging!

          :max_reconnect_attempts => 5,

        }
