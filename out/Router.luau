-- Compiled with roblox-ts v3.0.0
local TS = _G[script]
-- src/Router.tsx
local _react = TS.import(script, TS.getModule(script, "@rbxts", "react"))
local React = _react
local createContext = _react.createContext
local useContext = _react.useContext
local useState = _react.useState
-- Define the type for a route component
-- Define the router context type
local RouterContext = createContext({
	currentPath = "/",
	setPath = function() end,
})
-- Router provider component
local RouterProvider = function(props)
	local _condition = props.initialPath
	if _condition == nil then
		_condition = "/"
	end
	local currentPath, setPath = useState(_condition)
	return React.createElement(RouterContext.Provider, {
		value = {
			currentPath = currentPath,
			setPath = setPath,
		},
	}, props.children)
end
-- Hook to access the router
local useRouter = function()
	local context = useContext(RouterContext)
	if not context then
		error("useRouter must be used within a RouterProvider")
	end
	return context
end
return {
	RouterProvider = RouterProvider,
	useRouter = useRouter,
}
