import React from "@rbxts/react";
export type RouteComponent = () => React.Element;
interface RouterContextType {
    currentPath: string;
    setPath: (newPath: string) => void;
}
export declare const RouterProvider: (props: {
    initialPath?: string;
    children: React.Element;
}) => JSX.Element;
export declare const useRouter: () => RouterContextType;
export {};
