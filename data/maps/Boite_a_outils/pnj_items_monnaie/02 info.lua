

function marty:on_interaction()
    -- Vérifie si le joueur a déjà reçu l'argent de Marty
    if not game:get_value("received_money_from_marty_1") then
        -- Démarre un dialogue avec l'identifiant "pnj_items_monnaie.marty.30_monnaie"
        game:start_dialog("pnj_items_monnaie.marty.30_monnaie", function()
            -- Ajoute 30 unités de monnaie au joueur
            game:add_money(30)
            -- Marque que l'argent a été donné
            game:set_value("received_money_from_marty_1", true)
        end)
    end
end


on pourrait aussi le coder comme ceci

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