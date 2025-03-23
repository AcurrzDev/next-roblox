-- Compiled with roblox-ts v3.0.0
local TS = _G[script]
-- src/components/DefaultRoute.tsx
local React = TS.import(script, TS.getModule(script, "@rbxts", "react"))
local DefaultRoute = function()
	return React.createElement("textlabel", {
		Text = "Route not found!",
		Size = UDim2.new(1, 0, 1, 0),
	})
end
return {
	DefaultRoute = DefaultRoute,
}
