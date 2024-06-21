select sales.* From sales inner join inventory
on sales.inventoryId = inventory.inventoryId
where inventory.modelId in (select modelId from model 
where EngineType = 'Electric')