helpers do
    def bar(name)
        "#{name} hii"
    end

    def initialise(s)
        name=s.capitalize.to_s.split('/')
        newname=name.pop
    end
end