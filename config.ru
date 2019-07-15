run lambda { |env| [
    410,
    { 'Content-Type' => 'text/plain' },
    StringIO.new("410 -- Gone\n")
] }
