do_task=Task.async(
  fn -> IO.puts("Hello world") end
)
Task.await(do_task)
#Just a simple application
