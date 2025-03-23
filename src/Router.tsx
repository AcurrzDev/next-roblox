// src/Router.tsx
import React, { createContext, useContext, useState } from "@rbxts/react";

// Define the type for a route component
export type RouteComponent = () => React.Element;

// Define the router context type
interface RouterContextType {
  currentPath: string;
  setPath: (newPath: string) => void;
}

const RouterContext = createContext<RouterContextType>({
  currentPath: "/",
  setPath: () => {},
});

// Router provider component
export const RouterProvider = (props: { initialPath?: string; children: React.Element }) => {
  const [currentPath, setPath] = useState(props.initialPath ?? "/");

  return (
    <RouterContext.Provider value={{ currentPath, setPath }}>
      {props.children}
    </RouterContext.Provider>
  );
};

// Hook to access the router
export const useRouter = (): RouterContextType => {
  const context = useContext(RouterContext);
  if (!context) {
    error("useRouter must be used within a RouterProvider");
  }
  return context;
};