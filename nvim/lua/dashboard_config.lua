-- local status, alpha = pcall(require, "alpha")
-- if not status then return end
--
-- alpha.setup(require 'alpha.themes.dashboard'.config)

local status, dashboard = pcall(require, "dashboard")
if not status then return end

dashboard.setup {}
