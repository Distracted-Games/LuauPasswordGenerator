--[[
  To use this password generator, you should have Luau installed on your system.
  Then, in your CLI when in the same directory as this file, type:

  ```bash
  luau GeneratePassword.luau -a [a number: desired password length] [a boolean: use special characters]
  ```

  *Obviously add the arguments without the brackets.
  If no arguments are passed, length defaults to 16 and useSpecials defaults to true.
]]

local LETTERS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
local NUMBERS = "0123456789"
local SPECIALS = "!@#$%^&*()-_=+[]{}|;:,.<>?"

math.randomseed(os.time())

local function generatePassword(length: number, useSpecials: boolean): string
	local charSet = `{LETTERS}{NUMBERS}`
	if useSpecials then
		charSet = `{charSet}{SPECIALS}`
	end

	local password = table.create(length, "")
	local charSetLen = charSet:len()

	for i = 1, length do
		local randomindex = math.random(1, charSetLen)
		password[i] = charSet:sub(randomindex, randomindex)
	end

	return table.concat(password)
end

local args = { ... }

local length = tonumber(args[1]) or 16
local useSpecials = args[2] == "true"

print(generatePassword(length, useSpecials))
