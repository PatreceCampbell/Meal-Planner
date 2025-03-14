import pandas as pd
from faker import Faker
from collections import defaultdict
from sqlalchemy import create_engine
fake = Faker()
fake_data = defaultdict(list)


for _ in range(100):
    fake_data["building_number"].append( fake.building_number() )
    fake_data["first_name"].append( fake.first_name() )
    fake_data["last_name"].append( fake.last_name() )
df_fake_data = pd.DataFrame(fake_data)
engine = create_engine('mysql://root:@127.0.0.1/test2', echo=False)
df_fake_data.to_sql('user4', con=engine,index=False)

