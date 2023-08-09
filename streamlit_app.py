import streamlit as st
import snowflake.connector

# Snowflake connection parameters
SNOWFLAKE_USER = 'bkeloth'
SNOWFLAKE_PASSWORD = 'Bansi@2022'
SNOWFLAKE_ACCOUNT = 'anblickspartner.east-us-2.azure.snowflakecomputing.com'
SNOWFLAKE_DATABASE = 'DBT_PRACTICE_DB'
SNOWFLAKE_WAREHOUSE = 'POC_DATAHUB_GX_WH'

# Streamlit app
def main():
    st.title('Streamlit Snowflake Connection')

    # Create Snowflake connection
    conn = snowflake.connector.connect(
        user=SNOWFLAKE_USER,
        password=SNOWFLAKE_PASSWORD,
        account=SNOWFLAKE_ACCOUNT,
        warehouse=SNOWFLAKE_WAREHOUSE,
        database=SNOWFLAKE_DATABASE
    )

    # Create a cursor
    cursor = conn.cursor()

    # Execute a SQL query
    cursor.execute("SELECT * FROM RAW_CUSTOMER")
    results = cursor.fetchall()

    # Display the data using Streamlit
    if results:
        st.write("Query Results:")
        for row in results:
            st.write(row)
    else:
        st.write("No data found.")

    # Close the cursor and connection
    cursor.close()
    conn.close()

if __name__ == '__main__':
    main()


