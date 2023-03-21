local color, colorizer = pcall(require, "colorizer")
if not color then
	return
end

colorizer.setup()
