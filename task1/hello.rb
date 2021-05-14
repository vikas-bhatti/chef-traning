file 'hello.txt' do
    content 'hello world'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end