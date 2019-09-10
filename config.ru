map '/' do
    run lambda { |env| [
        410,
        { 'Content-Type' => 'text/plain' },
        ['HTTP/1.1 410 Gone']
    ] }
end

map '/robots.txt' do
    run lambda { |env| [
        200,
        { 'Content-Type' => 'text/plain' },
        ["User-agent: *\nDisallow: /"]
    ] }
end
