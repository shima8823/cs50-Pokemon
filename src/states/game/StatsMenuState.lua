StatsMenuState = Class{__includes = BaseState}

function StatsMenuState:init(level, previousStats, increaseStats, onClose)    
    self.statsMenu = Menu {
        x = VIRTUAL_WIDTH / 2,
        y = 32,
        width = VIRTUAL_WIDTH / 2,
        height = 150,
        canSelect = false,
        onClose = onClose,
        items = {
            {text = 'Level ' .. level .. 'Lv',},
            {text = 'HP ' ..  previousStats['HP']      .. ' + ' .. increaseStats['HP']      .. ' = ' .. previousStats['HP']      + increaseStats['HP'],},
            {text = 'ATK ' .. previousStats['attack']  .. ' + ' .. increaseStats['attack']  .. ' = ' .. previousStats['attack']  + increaseStats['attack'],},
            {text = 'DEF ' .. previousStats['defense'] .. ' + ' .. increaseStats['defense'] .. ' = ' .. previousStats['defense'] + increaseStats['defense'],},
            {text = 'SPD ' .. previousStats['speed']   .. ' + ' .. increaseStats['speed']   .. ' = ' .. previousStats['speed']   + increaseStats['speed'],}
        }
    }
end

function StatsMenuState:update(dt)
    self.statsMenu:update(dt)
end

function StatsMenuState:render()
    self.statsMenu:render()
end