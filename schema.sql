
CREATE TABLE zip_codes (
	id INTEGER NOT NULL, 
	PRIMARY KEY (id)
)

;

CREATE TABLE complaints (
	id INTEGER NOT NULL, 
	date_column DATE, 
	complaint_type VARCHAR, 
	zip_code_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(zip_code_id) REFERENCES zip_codes (id)
)

;

CREATE TABLE trees (
	id INTEGER NOT NULL, 
	specie VARCHAR, 
	health VARCHAR, 
	status VARCHAR, 
	zip_code_id INTEGER, 
	longitude FLOAT, 
	latitude FLOAT, 
	geometry geometry(POINT,4326), 
	PRIMARY KEY (id), 
	FOREIGN KEY(zip_code_id) REFERENCES zip_codes (id)
)

;

CREATE TABLE rents (
	id INTEGER NOT NULL, 
	city VARCHAR, 
	county VARCHAR, 
	rent_amount_aug FLOAT, 
	rent_amount FLOAT, 
	zip_code_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(zip_code_id) REFERENCES zip_codes (id)
)

;
