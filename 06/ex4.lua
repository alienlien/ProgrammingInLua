rooms = {
    {south = 3, east = 2},
    {south = 4, west = 1},
    {north = 1, east = 4},
    {},
}

f = function(index) 
    print("You are in room [", index, "].")
    if index == 4 then
        print(">> Congradulations!! Go Home right now!!")
        return
    end

    map = rooms[index]

    print("Please insert the direction you want to move [north|south|east|west]: ")
    direction = io.read()

    new_index = map[direction]
    if new_index then
        print(">> Move. [", index, "] -> [", new_index, "].")
        return f(new_index)
    end

    print(">> Stay. Invalid direction: ", direction, ". [", index,"].")
    return f(index)
end

f(1)
