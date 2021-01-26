function place()
	turtle.digDown()
	turtle.placeDown()
	turtle.turnLeft()
	ok = turtle.forward()

	if ok then
		print("Left Turn")
		turtle.digDown()
		turtle.placeDown()
		turtle.turnRight()
		turtle.turnRight()
		turtle.forward()
		ok = turtle.forward()
	else
		turtle.turnRight()
		turtle.turnRight()
		ok = turtle.forward()
	end

	if ok then
		print("Turn Right")
		turtle.digDown()
		turtle.placeDown()
		turtle.turnLeft()
		turtle.turnLeft()
		turtle.forward()
		turtle.forward()
		turtle.turnRight()
	else
		turtle.turnLeft()
	end

	ok = turtle.forward()
	return ok
end

print("Starting")
for j = 1, 30 do
	print("Outer loop - column: " .. j)
	for i = 1, 32 do
		print("Inner loop - row: " .. i)
		moved = place()
		if not moved then
			return
		end
	end
	turtle.turnRight()
	turtle.turnRight()
	print("Turning")
	ok = turtle.forward()
	if ok then
		print("Turn success")
		turtle.turnRight()
	else
		print("Turn fail")
		return
	end
end