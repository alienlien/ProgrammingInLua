rooms = {}
rooms[1] = {
    south = 3,
    east = 2,
}
rooms[2] = {
    south = 4,
    west = 1,
}
rooms[3] = {
    north = 1,
    east = 4,
}
rooms[4] = {
}

direction = "initial"
index = 1
while direction do
    print("You are in room[", index, "].")
    print("Please insert the direction you want to move [north|south|east|west]: ")
    direction = io.read()
    new_index = rooms[index][direction]
    if new_index then
        print(">> Move: room[", index, "] -> [", new_index, "]")
        index = new_index
    else
        print(">> Stay: Invalid move. room[", index, "]")
    end

    if (new_index and new_index == 4) then 
        print(">> Congradulations! Finish the game.")
        return
    end
end
