-- Compiled with roblox-ts v3.0.0
local TS = _G[script]
-- src/routes/RouteRenderer.tsx
local React = TS.import(script, TS.getModule(script, "@rbxts", "react"))
local useRouter = TS.import(script, script.Parent.Parent, "Router").useRouter
local DefaultRoute = TS.import(script, script.Parent.Parent, "components", "DefaultRoute").DefaultRoute
-- Props for the RouteRenderer
local RouteRenderer = function(props)
	local _binding = useRouter()
	local currentPath = _binding.currentPath
	local Component = props.routes[currentPath] or DefaultRoute
	return React.createElement(Component)
end
return {
	RouteRenderer = RouteRenderer,
}
