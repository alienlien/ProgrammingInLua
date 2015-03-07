-- N is the size of the chess board.
local N = 8

function addQueen(a, r)
    if r > N then
        coroutine.yield(a)
--        printChess(a)
    else 
        for c = 1, N do
            if isPlaceOK(a, r, c) then
                a[r] = c
                addQueen(a, r+1)
            end
        end
    end
end

-- isPlaceOK checks whether the position (r,c) is ok or not.
function isPlaceOK (a, r, c) 
    for i = 1, r - 1 do
        if (a[i] == c or isSameDiagonal(i, a[i], r, c)) then
            return false
        end
    end
    return true
end

-- isSameDiagonal checks whether the coordinates (r1, c1) and (r2, c2) are
-- at the same diagonal or not.
function isSameDiagonal(r1, c1, r2, c2) 
    return ((r1 - c1) == (r2 - c2)) or ((r1 + c1) == (r2 + c2))
end

-- printChess print the chess board for the coordinates a.
function printChess(a)
    for i, v in ipairs(a) do
        for j = 1, N do
            if v == j then
                io.write("X ")
            else
                io.write("- ")
            end
        end
        io.write("\n")
    end
    io.write("\n")
end

function genChess()
    return coroutine.wrap(function() addQueen({}, 1) end)
end

for result in genChess() do
    printChess(result)
    break
end

