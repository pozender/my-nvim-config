-- init.lua

-- Charger les modules pozender

--[[ local status_ok, plugins_manager = pcall(require, 'pozender.plugins-manager')
--[[ if not status_ok then
--[[   print("Erreur lors du chargement de pozender.plugins-manager: " .. plugins_manager)
--[[   return
--[[ end ]]

require("pozender.lazy")

local status_ok, core = pcall(require, "pozender.core")
if not status_ok then
  print("Erreur lors du chargement de pozender.core: " .. core)
  return
end

local status_ok, plugins = pcall(require, "pozender.plugins")
if not status_ok then
  print("Erreur lors du chargement de pozender.plugins: " .. plugins)
  return
end
