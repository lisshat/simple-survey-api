CREATE DATABASE IF NOT EXISTS sky_survey_db;
USE sky_survey_db;

-- Table to store survey responses
CREATE TABLE IF NOT EXISTS responses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(255) NOT NULL,
  email_address VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  gender ENUM('MALE', 'FEMALE', 'OTHER') NOT NULL,
  programming_stack TEXT NOT NULL,
  date_responded DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table to store uploaded certificates
CREATE TABLE IF NOT EXISTS certificates (
  id INT AUTO_INCREMENT PRIMARY KEY,
  response_id INT NOT NULL,
  file_name VARCHAR(255) NOT NULL,
  FOREIGN KEY (response_id) REFERENCES responses(id) ON DELETE CASCADE
);
