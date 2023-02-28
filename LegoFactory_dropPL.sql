-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-01-11 19:00:02.103

-- foreign keys
ALTER TABLE Author_CompleteSet
    DROP CONSTRAINT Author_CompleteSet_Author;

ALTER TABLE Author_CompleteSet
    DROP CONSTRAINT Author_CompleteSet_CompleteSet;

ALTER TABLE Box
    DROP CONSTRAINT Box_CompleteSet;

ALTER TABLE Brick_Color
    DROP CONSTRAINT Brick_Color_Brick;

ALTER TABLE Brick_Color
    DROP CONSTRAINT Brick_Color_Color;

ALTER TABLE Brick
    DROP CONSTRAINT Brick_Material;

ALTER TABLE CompleteSet_Brick
    DROP CONSTRAINT CompleteSet_Brick_Brick;

ALTER TABLE CompleteSet_Brick
    DROP CONSTRAINT CompleteSet_Brick_CompleteSet;

ALTER TABLE CompleteSet
    DROP CONSTRAINT CompleteSet_BuildingDifficulty;

ALTER TABLE CompleteSet
    DROP CONSTRAINT CompleteSet_DiscontinueDate;

ALTER TABLE CompleteSet
    DROP CONSTRAINT CompleteSet_Theme;

ALTER TABLE Manual
    DROP CONSTRAINT Manual_CompleteSet;

ALTER TABLE Minifigure
    DROP CONSTRAINT Minifigure_Brick;

ALTER TABLE Minifigure
    DROP CONSTRAINT Minifigure_Brick2;

ALTER TABLE Minifigure
    DROP CONSTRAINT Minifigure_Brick3;

ALTER TABLE Minifigure
    DROP CONSTRAINT Minifigure_Brick4;

ALTER TABLE Set_Minifigure
    DROP CONSTRAINT Set_Minifigure_CompleteSet;

ALTER TABLE Set_Minifigure
    DROP CONSTRAINT Set_Minifigure_Minifigure;

ALTER TABLE Theme
    DROP CONSTRAINT Theme_Corporation;

-- tables
DROP TABLE Author;

DROP TABLE Author_CompleteSet;

DROP TABLE Box;

DROP TABLE Brick;

DROP TABLE Brick_Color;

DROP TABLE BuildingDifficulty;

DROP TABLE Color;

DROP TABLE CompleteSet;

DROP TABLE CompleteSet_Brick;

DROP TABLE Corporation;

DROP TABLE DiscontinueDate;

DROP TABLE Manual;

DROP TABLE Material;

DROP TABLE Minifigure;

DROP TABLE Set_Minifigure;

DROP TABLE Theme;

-- End of file.

