function TapaItsesi()
	Citizen.CreateThread(function()

	local playerCoords = GetEntityCoords(PlayerPedId())

	local ped = PlayerPedId()
	local currentPos = GetEntityCoords(ped)

	SetEntityCoords(ped, playerCoords, false, false, false, true)

	SetEntityHealth(GetPlayerPed(-1), 0)

	end)
    end

RegisterCommand('die', function()
	TapaItsesi()
end,false)