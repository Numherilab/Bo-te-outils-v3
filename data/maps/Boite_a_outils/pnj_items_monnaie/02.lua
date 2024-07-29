-- Lua script of map Boite_a_outils/pnj_items_monnaie/02.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()

function marty:on_interaction()
    -- Vérifie si le joueur n'a pas encore reçu l'argent de Marty
    if game:get_value("received_money_from_marty_1") then
        return
    end
    
    -- Démarre un dialogue avec l'identifiant "pnj_items_monnaie.marty.30_monnaie"
    game:start_dialog("pnj_items_monnaie.marty.30_monnaie", function()
        -- Ajoute 30 unités de monnaie au joueur
        game:add_money(30)
        -- Marque que l'argent a été donné
        game:set_value("received_money_from_marty_1", true)
    end)
end