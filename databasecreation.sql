
create database mydb;
use mydb;




CREATE TABLE ev_charging_stations (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,  
    station_name VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    latitude DOUBLE,
    longitude DOUBLE,
    fuel_type_code VARCHAR(50),
    station_phone VARCHAR(50),
    access_days_time VARCHAR(50),
    status_code VARCHAR(50),
    ev_network VARCHAR(100),
    location POINT,
    geocode_status VARCHAR(50),
    updated_at DATETIME
);


CREATE TABLE vehicle_registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    zip_code VARCHAR(10),
    registration_valid_date DATE,
    dmv_id INT,
    registration_type VARCHAR(50),
    vin_prefix VARCHAR(20),
    vehicle_id INT,
    station_id BIGINT, 
    FOREIGN KEY (station_id) 
        REFERENCES ev_charging_stations(id)  
        ON DELETE SET NULL
);



CREATE TABLE fuel_stations_new_york (
    id BIGINT PRIMARY KEY, 
    ng_psi INTEGER,
    cng_psi INTEGER,
    facility_type VARCHAR(255),
    city VARCHAR(255),
    access_code VARCHAR(50),
    cng_dispenser_num INTEGER,
    federal_agency_id INTEGER,
    ev_level2_evse_num INTEGER,
    expected_date TIMESTAMP,
    latitude DOUBLE PRECISION,
    zip VARCHAR(10),
    ev_network_web VARCHAR(255),
    state VARCHAR(50),
    federal_agency_code VARCHAR(50),
    station_name VARCHAR(255),
    ev_pricing_french_ VARCHAR(50),
    bd_blends VARCHAR(255),
    hydrogen_standards VARCHAR(255),
    lpg_nozzle_types VARCHAR(255),
    owner_type_code VARCHAR(50),
    intersection_directions VARCHAR(255),
    lng_on_site_renewable_source VARCHAR(50),
    cards_accepted VARCHAR(255),
    plus4 VARCHAR(10),
    ev_dc_fast_count INTEGER,
    date_last_confirmed TIMESTAMP,
    ev_on_site_renewable_source VARCHAR(50),
    status_code VARCHAR(50),
    country VARCHAR(50),
    ev_level1_evse_num INTEGER,
    access_detail_code VARCHAR(50),
    cng_on_site_renewable_source VARCHAR(50),
    longitude DOUBLE PRECISION,
    access_days_time_french VARCHAR(255),
    e85_other_ethanol_blends VARCHAR(255),
    ev_network VARCHAR(255),
    ev_other_info VARCHAR(255),
    cng_total_compression_capacity INTEGER,
    cng_fill_type_code VARCHAR(50),
    station_phone VARCHAR(50),
    cng_storage_capacity INTEGER,
    access_days_time VARCHAR(255),
    fuel_type_code VARCHAR(50),
    hydrogen_is_retail BOOLEAN,
    hydrogen_pressures VARCHAR(255),
    intersection_directions_french VARCHAR(255),
    bd_blends_french VARCHAR(255),
    open_date TIMESTAMP,
    cng_vehicle_class VARCHAR(50),
    groups_with_access_code_french VARCHAR(255),
    geocode_status VARCHAR(50),
    street_address VARCHAR(255),
    ng_fill_type_code VARCHAR(50),
    updated_at TIMESTAMP,
    ev_connector_types VARCHAR(255),
    e85_blender_pump BOOLEAN,
    lpg_primary BOOLEAN,
    lng_vehicle_class VARCHAR(50),
    hydrogen_status_link VARCHAR(255),
    federal_agency_name VARCHAR(255),
    ng_vehicle_class VARCHAR(50),
    groups_with_access_code VARCHAR(255),
    ev_pricing VARCHAR(50)
);





