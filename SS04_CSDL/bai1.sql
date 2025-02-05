CREATE TABLE room (
    roomid INT PRIMARY KEY,
    roomName VARCHAR(255),
    cpuSpeed VARCHAR(50),
    comId INT,
    FOREIGN KEY (comId) REFERENCES computer(comId)
);

CREATE TABLE computer (
    comId INT PRIMARY KEY,
    roomId INT,
    FOREIGN KEY (roomId) REFERENCES room(roomid)
);

CREATE TABLE register (
    registerId INT PRIMARY KEY,
    roomId INT,
    subId INT,
    date DATE,
    FOREIGN KEY (roomId) REFERENCES room(roomid),
    FOREIGN KEY (subId) REFERENCES sub(subId)
);

CREATE TABLE sub (
    subId INT PRIMARY KEY,
    subName VARCHAR(255)
);