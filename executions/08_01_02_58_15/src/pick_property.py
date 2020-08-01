import geopandas as gpd
import random
from pathlib import Path

lots = gpd.read_file('ATX_Lot_line.shp')
lots = lots[lots.is_valid]
prop = lots[lots['objectid']==random.choice(lots['objectid'].unique())]

Path('Output').mkdir(exist_ok=True)
prop.to_file('Output/random_property.shp')

