# Galaxy cluster server

Before sys.config we can use `iex --name earth@127.0.0.1 -S mix` to start server and this `Node.connect :"sun@127.0.0.1"` to connect to the other node
We can use `Node.list` to check nodes list except current one.

With sys.config its easier we can just use these comands and sys.config will link the nodes
`iex --name earth@127.0.0.1 --erl "-config sys.config" -S mix`
`iex --name sun@127.0.0.1 --erl "-config sys.config" -S mix`