local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	-- 他のUIに使われていないキーかどうか確認
	if gameProcessed then return end

	-- Uキーが押されたか確認
	if input.KeyCode == Enum.KeyCode.U then
		local character = player.Character
		if character and character:FindFirstChild("HumanoidRootPart") then
			local position = character.HumanoidRootPart.Position
			print("プレイヤーの位置:", position)
		else
			warn("キャラクターが見つからないか、HumanoidRootPartがない")
		end
	end
end)
