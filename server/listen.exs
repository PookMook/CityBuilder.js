parent = self()
spawn fn -> send(parent, {:hello, self()}) end
receive do
  {:hello, pid} -> IO.puts "Hello from #{inspect pid}"
end
