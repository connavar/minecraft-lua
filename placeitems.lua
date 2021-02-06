function findItem()
	print("Searching for items to place")
	for n = 1,16 do
		if turtle.getItemCount(n) > 0 then
			turtle.select(n)
			return true
		end		
	end
	print("No items found")
	return false
end

local column = 0

while true do

	if turtle.forward() then 

		if not turtle.placeDown() then

			if findItem() then
				turtle.placeDown()
			else
				print("Couldn't place - exiting")
				return
			end

		end

	else
		if column % 2 then
			print("Turn right")
			turtle.turnRight()
			if turtle.forward() then
				turtle.turnRight()
			else
				print("In corner")
			end
		else
			print("Turn left")
			turtle.turnLeft()
			if turtle.forward() then
				turtle.turnLeft()
			else
				print("In corner")
			end
		end
	end

	column = column + 1

end