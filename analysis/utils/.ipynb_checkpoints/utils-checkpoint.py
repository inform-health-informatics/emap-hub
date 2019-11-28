import sqlalchemy as sa
import psycopg2

conn_ids = {'user': 'ids_admin',
            'host': '172.16.149.131',
            'port': 5432,
            'password': 'ids_admin',
            'database': 'ids_live'
            }

conn_try = {'user': 'uclh',
            'host': '212.71.245.199',
            'port': 55432,
            'password': 'uclh',
            'database': 'omopuclh'
            }

conn_eops = {'user': 'uds_read',
            'host': 'UCLVLDDDTAEPS02',
            'port': 5432,
            'password': 'klq;wed-0i439^^%',
            'database': 'uds'
            
            }
conn_uds = {'user': 'sharris9',
            'host': 'UCLVLDDDTAEPS02',
            'port': 5432,
            'password': 'steveSteveSteve',
            'database': 'uds'
            
            }

def gen_connection_string(d, engine='postgresql'):
    """Generates a SQLAlchemy connection string from a dictionary"""
    # e.g. # engine = create_engine('postgresql+psycopg2://steve@localhost:5432/omop')
    # TODO @later permit other interfaces
    d['port'] = str(d['port'])

    if engine == 'postgresql':
        if d.get('password'):
            return 'postgresql+psycopg2://{user}:{password}@{host}:{port}/{database}'.format(**d)
        else:
            return 'postgresql+psycopg2://{user}@{host}:{port}/{database}'.format(**d)

    elif engine == 'psycopg2':
        if d.get('password'):
            return 'host={host} dbname={database} user={user} password={password} port={port}'.format(**d)
        else:
            return 'host={host} dbname={database} user={user} port={port}'.format(**d)

# DSN = gen_connection_string(conn_eops, engine='psycopg2')

# SQL = 'SELECT COUNT(*) FROM measurement'

# with psycopg2.connect(DSN) as conn:
#     with conn.cursor() as curs:
#         rp = curs.execute(SQL)
