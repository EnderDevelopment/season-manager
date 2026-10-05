Config = {}

-- Default season settings
Config.DefaultSeason = 'spring'
Config.Seasons = {
    ['spring'] = {
        label = 'Spring',
        weather = 'EXTRASUNNY',
        time = 9
    },
    ['summer'] = {
        label = 'Summer',
        weather = 'CLEAR',
        time = 12
    },
    ['autumn'] = {
        label = 'Autumn',
        weather = 'CLOUDS',
        time = 15
    },
    ['winter'] = {
        label = 'Winter',
        weather = 'SNOW',
        time = 21
    }
}

-- Database settings
Config.Database = {
    table = 'seasons'
}