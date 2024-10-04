Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("digtalden-service", vector3(-1530.63, -396.91, 35.63), 0.5, 1, {
        name = "digtalden-service",
        heading = 320,
        debugpoly = false,
        minZ=33.03,
        maxZ=36.23,
    }, {
        options = {
            {  
            event = "pugz-digtalden:client:Service",
            icon = "far fa-clipboard",
            label = "Clock in/out",
            job = "digtalden",
            },
            {
                event = "illenium-appearance:client:openOutfitMenu",-- change to qb-clothing:client:openOutfitMenu if using qb-clothing
                icon = "fa fa-user-o",
                label = "Change Clothing",
                job = "digtalden",
            },
        },
        distance = 1.5
    })

        exports['qb-target']:AddBoxZone("digtalden-crafting", vector3(-1535.91, -398.73, 35.43), 0.7, 1.5, {
            name="digtalden-crafting",
            heading=97.15,
            debugPoly=false,
    
        }, {
                options = {
                    {
                        event = "pugz-digtalden:client:CraftingMenu",
                        icon = "fa fa-laptop",
                        label = "Crafting",
                        job = "digtalden",
                    },
                },
                distance = 1.5
            })
end)
