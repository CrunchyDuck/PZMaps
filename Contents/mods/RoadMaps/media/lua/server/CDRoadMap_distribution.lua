require "Items/ProceduralDistributions"
require "Items/VehicleDistributions"
require "Items/Distributions"

local function AddMaps(to_table, weight)
    table.insert(to_table, "CD.RoadMapLouisville");
    table.insert(to_table, weight);
    table.insert(to_table, "CD.RoadMapValleyStation");
    table.insert(to_table, weight);
    table.insert(to_table, "CD.RoadMapWestPoint");
    table.insert(to_table, weight);
    table.insert(to_table, "CD.RoadMapMarchRidge");
    table.insert(to_table, weight);
    table.insert(to_table, "CD.RoadMapRosewood");
    table.insert(to_table, weight);
    table.insert(to_table, "CD.RoadMapMuldraughEast");
    table.insert(to_table, weight);
    table.insert(to_table, "CD.RoadMapMuldraughWest");
    table.insert(to_table, weight);
    table.insert(to_table, "CD.RoadMapRiversideEast");
    table.insert(to_table, weight);
    table.insert(to_table, "CD.RoadMapRiversideWest");
    table.insert(to_table, weight);
    table.insert(to_table, "CD.RoadMapDoeValleyWest");
    table.insert(to_table, weight);
    table.insert(to_table, "CD.RoadMapDoeValleyEast");
    table.insert(to_table, weight);
end

AddMaps(Distributions[1].Bag_SurvivorBag.items, 10);
AddMaps(Distributions[1].all.inventoryfemale.items, 0.05);
AddMaps(Distributions[1].all.inventorymale.items, 0.05);

AddMaps(ProceduralDistributions.list.CrateMaps.items, 15);  -- The entry for this one is weird.
AddMaps(ProceduralDistributions.list.CrateMechanics.items, 2);
AddMaps(ProceduralDistributions.list.GasStorageMechanics.items, 2);
AddMaps(ProceduralDistributions.list.Hiker.items, 0.5);
AddMaps(ProceduralDistributions.list.MagazineRackMaps.items, 15);
AddMaps(ProceduralDistributions.list.StoreShelfMechanics.items, 2);

local vehicle_spawn_chance = 2;
AddMaps(VehicleDistributions.GloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.SurvivalistGlovebox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.FishermanGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.GolfGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.CarpenterGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.ElectricianGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.FarmerGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.MetalWelderGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.DoctorGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.RadioGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.PainterGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.ConstructionWorkerGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.TaxiGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.PoliceGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.RangerGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.FireGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.McCoyGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.HunterGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.FossoilGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.PostalGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.SpiffoGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.MassGenFacGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.TransitGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.DistilleryGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.HeraldsGloveBox.junk.items, vehicle_spawn_chance);
AddMaps(VehicleDistributions.AmbulanceGloveBox.junk.items, vehicle_spawn_chance);
