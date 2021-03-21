import pandas as pd
df = pd.read_csv (r'awards.csv')
df.to_json (r'awards.json')