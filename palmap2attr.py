import glob

color_attrs = {
	'GRAY': 0, 'RED': 1, 'GREEN': 2, 'WATER': 3,
	'YELLOW': 4, 'BROWN': 5, 'ROOF': 6, 'TEXT': 7,
	'PRIORITY_GRAY': 0x80, 'PRIORITY_RED': 0x81,
	'PRIORITY_GREEN': 0x82, 'PRIORITY_WATER': 0x83,
	'PRIORITY_YELLOW': 0x84, 'PRIORITY_BROWN': 0x85,
	'PRIORITY_ROOF': 0x86, 'PRIORITY_TEXT': 0x87,
}

palette_map_names = glob.glob('gfx/tilesets/*_palette_map.asm')
for palette_map_name in palette_map_names:

	if 'unused_museum_palette_map' in palette_map_name:
		continue

	palette_map_name = palette_map_name.replace('\\', '/')
	metatiles_name = (palette_map_name.replace('gfx/', 'data/')
		.replace('_palette_map.asm', '_metatiles.bin'))
	attributes_name = metatiles_name.replace('_metatiles', '_attributes')

	print('Convert', palette_map_name.split('/')[-1], '...')

	tile_colors = {}

	with open(palette_map_name, 'r', encoding='utf8') as palette_map:
		reached_vram1 = False
		tile_index = 0
		for line in palette_map:
			if not line.startswith('\ttilepal'):
				continue
			line = line[len('\ttilepal '):]
			colors = (c.strip() for c in line.split(','))
			bank = next(colors)
			if not reached_vram1 and bank == '1':
				reached_vram1 = True
				tile_index = 0x80
			for color in colors:
				tile_attr = color_attrs.get(color, 0)
				tile_attr |= (tile_index >= 0x80) << 3
				tile_colors[tile_index] = tile_attr
				tile_index += 1

	print('... to', attributes_name.split('/')[-1], '...')

	metatile_bytes = b''
	with open(metatiles_name, 'rb') as metatiles:
		with open(attributes_name, 'wb') as attributes:
			for block_tiles in iter(lambda: metatiles.read(16), b''):
				block_attrs = (tile_colors.get(t, (t >= 0x80) << 3)
					for t in block_tiles)
				attributes.write(bytes(block_attrs))
				metatile_bytes += block_tiles

	print('... and modify', metatiles_name.split('/')[-1], '!')

	with open(metatiles_name, 'wb') as metatiles:
		metatiles.write(bytes(t & 0x7f for t in metatile_bytes))