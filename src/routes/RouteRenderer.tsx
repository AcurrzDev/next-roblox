// src/routes/RouteRenderer.tsx
import React from "@rbxts/react";
import { useRouter } from "../Router";
import { DefaultRoute } from "../components/DefaultRoute";

// Props for the RouteRenderer
export interface RouteRendererProps {
  routes: { [path: string]: () => React.Element };
}

export const RouteRenderer = (props: RouteRendererProps) => {
  const { currentPath } = useRouter();

  const Component = props.routes[currentPath] || DefaultRoute;
  return <Component />;
};