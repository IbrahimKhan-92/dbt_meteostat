-- Active: 1790165417836@@data-analytics-course-2.c8g8r1deus2v.eu-central-1.rds.amazonaws.com@5432@nf_da_onl_en_200726@s_muhammadibrahim

version: 2
sources:

- name: weather_data
  schema: c_teacher
  tables:
    - name: weather_daily_raw
    - name: weather_hourly_raw

- name: flights_data
  schema: public
  tables:
    - name: flights
    - name: airports
    - name: regions