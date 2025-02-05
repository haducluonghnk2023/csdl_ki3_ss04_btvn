CREATE TABLE producer (
    proId INT PRIMARY KEY,
    proName VARCHAR(255)
);
CREATE TABLE provide (
    proId INT,
    supId INT,
    FOREIGN KEY (proId) REFERENCES producer(proId),
    FOREIGN KEY (supId) REFERENCES supplies(supId),
    PRIMARY KEY (proId, supId) -- Khóa chính ghép
);
CREATE TABLE supplies (
    supId INT PRIMARY KEY,
    supName VARCHAR(255)
);
CREATE TABLE deliveryAddress (
    daId INT PRIMARY KEY,
    proId INT,
    daAddress VARCHAR(255),
    FOREIGN KEY (proId) REFERENCES producer(proId)
);