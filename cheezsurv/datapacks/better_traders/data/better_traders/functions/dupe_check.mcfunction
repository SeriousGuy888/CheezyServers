data modify storage better_traders:trader_offers fullData set from entity @s Offers
data modify storage better_traders:trader_offers Offer0 set from entity @s Offers.Recipes[0]


execute as @s store success score @s TradeSuccess run data modify storage better_traders:trader_offers Offer0 set from entity @s Offers.Recipes[1]
execute as @s[scores={TradeSuccess=1}] run data modify storage better_traders:trader_offers Offer0 set from entity @s Offers.Recipes[0]
execute as @s[scores={TradeSuccess=0}] run function better_traders:roll1

data modify storage better_traders:trader_offers Offer1 set from entity @s Offers.Recipes[1]


execute as @s store success score @s TradeSuccess run data modify storage better_traders:trader_offers Offer0 set from entity @s Offers.Recipes[2]
execute as @s[scores={TradeSuccess=1}] run data modify storage better_traders:trader_offers Offer0 set from entity @s Offers.Recipes[0]
execute as @s[scores={TradeSuccess=0}] run function better_traders:roll2

execute as @s store success score @s TradeSuccess run data modify storage better_traders:trader_offers Offer1 set from entity @s Offers.Recipes[2]
execute as @s[scores={TradeSuccess=1}] run data modify storage better_traders:trader_offers Offer1 set from entity @s Offers.Recipes[1]
execute as @s[scores={TradeSuccess=0}] run function better_traders:roll2

data modify storage better_traders:trader_offers Offer2 set from entity @s Offers.Recipes[2]


execute as @s store success score @s TradeSuccess run data modify storage better_traders:trader_offers Offer0 set from entity @s Offers.Recipes[3]
execute as @s[scores={TradeSuccess=1}] run data modify storage better_traders:trader_offers Offer0 set from entity @s Offers.Recipes[0]
execute as @s[scores={TradeSuccess=0}] run function better_traders:roll3

execute as @s store success score @s TradeSuccess run data modify storage better_traders:trader_offers Offer1 set from entity @s Offers.Recipes[3]
execute as @s[scores={TradeSuccess=1}] run data modify storage better_traders:trader_offers Offer1 set from entity @s Offers.Recipes[1]
execute as @s[scores={TradeSuccess=0}] run function better_traders:roll3

execute as @s store success score @s TradeSuccess run data modify storage better_traders:trader_offers Offer2 set from entity @s Offers.Recipes[3]
execute as @s[scores={TradeSuccess=1}] run data modify storage better_traders:trader_offers Offer2 set from entity @s Offers.Recipes[2]
execute as @s[scores={TradeSuccess=0}] run function better_traders:roll3

data modify storage better_traders:trader_offers Offer3 set from entity @s Offers.Recipes[3]


execute as @s store success score @s TradeSuccess run data modify storage better_traders:trader_offers Offer0 set from entity @s Offers.Recipes[4]
execute as @s[scores={TradeSuccess=1}] run data modify storage better_traders:trader_offers Offer0 set from entity @s Offers.Recipes[0]
execute as @s[scores={TradeSuccess=0}] run function better_traders:roll4

execute as @s store success score @s TradeSuccess run data modify storage better_traders:trader_offers Offer1 set from entity @s Offers.Recipes[4]
execute as @s[scores={TradeSuccess=1}] run data modify storage better_traders:trader_offers Offer1 set from entity @s Offers.Recipes[1]
execute as @s[scores={TradeSuccess=0}] run function better_traders:roll4

execute as @s store success score @s TradeSuccess run data modify storage better_traders:trader_offers Offer2 set from entity @s Offers.Recipes[4]
execute as @s[scores={TradeSuccess=1}] run data modify storage better_traders:trader_offers Offer2 set from entity @s Offers.Recipes[2]
execute as @s[scores={TradeSuccess=0}] run function better_traders:roll4

execute as @s store success score @s TradeSuccess run data modify storage better_traders:trader_offers Offer3 set from entity @s Offers.Recipes[4]
execute as @s[scores={TradeSuccess=1}] run data modify storage better_traders:trader_offers Offer3 set from entity @s Offers.Recipes[3]
execute as @s[scores={TradeSuccess=0}] run function better_traders:roll4

data modify storage better_traders:trader_offers Offer4 set from entity @s Offers.Recipes[4]

execute as @s store success score @s DataCheck run data modify storage better_traders:trader_offers fullData set from entity @s Offers
execute as @e[type=minecraft:wandering_trader,limit=1,scores={DataCheck=1}] run function better_traders:dupe_check