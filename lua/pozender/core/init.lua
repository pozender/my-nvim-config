local status_ok, keymaps = pcall(require, 'pozender.core.keymaps')
if not status_ok then
  print("Erreur lors du chargement de pozender.core.keymaps: " .. keymaps)
  return
end

local status_ok, colorscheme = pcall(require, 'pozender.core.colorscheme')
if not status_ok then
  print("Erreur lors du chargement de pozender.core.coloscheme: " .. colorscheme)
  return
end
