Config = {}
Config.Debug = false -- True / False for Debug System
Config.Dispatch = "ps-dispatch" -- 'default' / 'ps-dispatch' / 'cd_dispatch'
Config.PoliceRequired = 1 -- How many PD Officers Required to request
Config.Cooldown = 1 -- Server cooldown for alerts ( Set in minutes )

Config.Locations = {
    ["police"] = { -- Set this to the name of the job
        Required = 1, -- How many players with this job are required to be online to make a request/alert (You'll need to add events that track the amount of players online with that job. Police / Ambulance is setup by default)
        Zone = { -- Polyzone Info
            name = "Réception - MRPD", -- Name of the menu title
            coords = vector3(441.79, -982.07, 30.69), -- Boxzone Coords (Gabz)
            length = 0.6, width = 0.8, -- Boxzone Length / Width
            heading = 180, -- Boxzone Heading
            minZ = 30.49, -- Boxzone MinZ
            maxZ = 30.89 -- Boxzone MaxZ
        },
        Menu = { -- Menu Info ( Set Header, Text, Icon, Event, and Event Type )
            [1] = { Header = 'Assistance', Txt = '', Icon = 'fas fa-hand', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'assistance' },
            [2] = { Header = 'Permis de port d\'arme', Txt = '', Icon = 'fas fa-gun', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'weaponlicense' },
            [3] = { Header = 'Entretien', Txt = '', Icon = 'fas fa-people-arrows-left-right', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'interview' },
            [4] = { Header = 'Superviseur', Txt = '', Icon = 'fas fa-crown', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'supervisor' },
        }
    },
    ["ambulance"] = {
        Required = 1, -- How many players with this job are required to be online to make a request/alert (You'll need to add events that track the amount of players online with that job. Police / Ambulance is setup by default)
        Zone = {
            name = "Réception - Pillbox",
            coords = vector3(311.91, -592.69, 43.28),  -- Pillbox
            length = 0.8, width = 0.8,
            heading = 337,
            minZ = 42,
            maxZ = 44
        },
        Menu = {
            [1] = { Header = 'Assistance', Txt = '', Icon = 'fas fa-hand', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'assistance'},
            [2] = { Header = 'Entretien', Txt = '', Icon = 'fas fa-people-arrows-left-right', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'interview' },
            [3] = { Header = 'Superviseur', Txt = '', Icon = 'fas fa-crown', Event = 'rs-frontdesk:client:RequestAssistance', Args = 'supervisor'},
        }
    }
}
