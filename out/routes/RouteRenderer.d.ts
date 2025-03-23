import React from "@rbxts/react";
export interface RouteRendererProps {
    routes: {
        [path: string]: () => React.Element;
    };
}
export declare const RouteRenderer: (props: RouteRendererProps) => JSX.Element;
