function loadv(t)
    for i, v in pairs(t) do
        if type(v) == "function" then
            print("CWD:", v())
        elseif type(v) =="table" then
            loadv(v)
        else
            print(i,v)
        end
    end
end
loadv(process)