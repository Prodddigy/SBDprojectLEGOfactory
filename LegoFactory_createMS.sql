-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-01-11 18:44:52.11

-- tables
-- Table: Author
CREATE TABLE Author (
    id int  NOT NULL,
    Name varchar(40)  NOT NULL,
    Surname varchar(40)  NOT NULL,
    DOB date  NOT NULL,
    CONSTRAINT Author_pk PRIMARY KEY  (id)
);

-- Table: Author_CompleteSet
CREATE TABLE Author_CompleteSet (
    Author_id int  NOT NULL,
    CompleteSet_id int  NOT NULL,
    CONSTRAINT Author_CompleteSet_pk PRIMARY KEY  (Author_id,CompleteSet_id)
);

-- Table: Box
CREATE TABLE Box (
    id int  NOT NULL,
    Name varchar(40)  NOT NULL,
    Capacity int  NOT NULL,
    CompleteSet_id int  NOT NULL,
    CONSTRAINT Box_pk PRIMARY KEY  (id)
);

-- Table: Brick
CREATE TABLE Brick (
    id int  NOT NULL,
    Name varchar(40)  NOT NULL,
    electric smallint  NOT NULL,
    Material_id int  NOT NULL,
    CONSTRAINT Brick_pk PRIMARY KEY  (id)
);

-- Table: Brick_Color
CREATE TABLE Brick_Color (
    Color_id int  NOT NULL,
    Brick_id int  NOT NULL,
    CONSTRAINT Brick_Color_pk PRIMARY KEY  (Color_id,Brick_id)
);

-- Table: BuildingDifficulty
CREATE TABLE BuildingDifficulty (
    id int  NOT NULL,
    CeilingAge int  NOT NULL,
    GroundAge int  NOT NULL,
    CONSTRAINT BuildingDifficulty_pk PRIMARY KEY  (id)
);

-- Table: Color
CREATE TABLE Color (
    id int  NOT NULL,
    Name varchar(40)  NOT NULL,
    RGBcode varchar(20)  NOT NULL,
    GlowInDark smallint  NOT NULL,
    CONSTRAINT Color_pk PRIMARY KEY  (id)
);

-- Table: CompleteSet
CREATE TABLE CompleteSet (
    id int  NOT NULL,
    Name varchar(40)  NOT NULL,
    Theme_id int  NOT NULL,
    BuildingDifficulty_id int  NOT NULL,
    price int   NULL,
    DiscontinueDate_id int   NULL,
    CONSTRAINT CompleteSet_pk PRIMARY KEY  (id)
);

-- Table: CompleteSet_Brick
CREATE TABLE CompleteSet_Brick (
    CompleteSet_id int  NOT NULL,
    Brick_id int  NOT NULL,
    quantity int  NOT NULL,
    CONSTRAINT CompleteSet_Brick_pk PRIMARY KEY  (CompleteSet_id,Brick_id)
);

-- Table: Corporation
CREATE TABLE Corporation (
    id int  NOT NULL,
    Name varchar(40)  NOT NULL,
    CONSTRAINT Corporation_pk PRIMARY KEY  (id)
);

-- Table: DiscontinueDate
CREATE TABLE DiscontinueDate (
    id int  NOT NULL,
    MarketEntry date  NOT NULL,
    ExitDate date  NOT NULL,
    CONSTRAINT DiscontinueDate_pk PRIMARY KEY  (id)
);

-- Table: Manual
CREATE TABLE Manual (
    id int  NOT NULL,
    Name varchar(40)  NOT NULL,
    PageCount int  NOT NULL,
    CompleteSet_id int  NOT NULL,
    CONSTRAINT Manual_pk PRIMARY KEY  (id)
);

-- Table: Material
CREATE TABLE Material (
    id int  NOT NULL,
    name varchar(40)  NOT NULL,
    CONSTRAINT Material_pk PRIMARY KEY  (id)
);

-- Table: Minifigure
CREATE TABLE Minifigure (
    id int  NOT NULL,
    Name varchar(40)  NOT NULL,
    Brick_id int  NOT NULL,
    Brick_2_id int  NOT NULL,
    Brick_3_id int  NOT NULL,
    Brick_4_id int  NOT NULL,
    CONSTRAINT Minifigure_pk PRIMARY KEY  (id)
);

-- Table: Set_Minifigure
CREATE TABLE Set_Minifigure (
    CompleteSet_id int  NOT NULL,
    Minifigure_id int  NOT NULL,
    quantity int  NOT NULL,
    CONSTRAINT Set_Minifigure_pk PRIMARY KEY  (CompleteSet_id,Minifigure_id)
);

-- Table: Theme
CREATE TABLE Theme (
    id int  NOT NULL,
    Name varchar(40)  NOT NULL,
    Corporation_id int  NOT NULL,
    CONSTRAINT Theme_pk PRIMARY KEY  (id)
);

-- foreign keys
-- Reference: Author_CompleteSet_Author (table: Author_CompleteSet)
ALTER TABLE Author_CompleteSet ADD CONSTRAINT Author_CompleteSet_Author
    FOREIGN KEY (Author_id)
    REFERENCES Author (id);

-- Reference: Author_CompleteSet_CompleteSet (table: Author_CompleteSet)
ALTER TABLE Author_CompleteSet ADD CONSTRAINT Author_CompleteSet_CompleteSet
    FOREIGN KEY (CompleteSet_id)
    REFERENCES CompleteSet (id);

-- Reference: Box_CompleteSet (table: Box)
ALTER TABLE Box ADD CONSTRAINT Box_CompleteSet
    FOREIGN KEY (CompleteSet_id)
    REFERENCES CompleteSet (id);

-- Reference: Brick_Color_Brick (table: Brick_Color)
ALTER TABLE Brick_Color ADD CONSTRAINT Brick_Color_Brick
    FOREIGN KEY (Brick_id)
    REFERENCES Brick (id);

-- Reference: Brick_Color_Color (table: Brick_Color)
ALTER TABLE Brick_Color ADD CONSTRAINT Brick_Color_Color
    FOREIGN KEY (Color_id)
    REFERENCES Color (id);

-- Reference: Brick_Material (table: Brick)
ALTER TABLE Brick ADD CONSTRAINT Brick_Material
    FOREIGN KEY (Material_id)
    REFERENCES Material (id);

-- Reference: CompleteSet_Brick_Brick (table: CompleteSet_Brick)
ALTER TABLE CompleteSet_Brick ADD CONSTRAINT CompleteSet_Brick_Brick
    FOREIGN KEY (Brick_id)
    REFERENCES Brick (id);

-- Reference: CompleteSet_Brick_CompleteSet (table: CompleteSet_Brick)
ALTER TABLE CompleteSet_Brick ADD CONSTRAINT CompleteSet_Brick_CompleteSet
    FOREIGN KEY (CompleteSet_id)
    REFERENCES CompleteSet (id);

-- Reference: CompleteSet_BuildingDifficulty (table: CompleteSet)
ALTER TABLE CompleteSet ADD CONSTRAINT CompleteSet_BuildingDifficulty
    FOREIGN KEY (BuildingDifficulty_id)
    REFERENCES BuildingDifficulty (id);

-- Reference: CompleteSet_DiscontinueDate (table: CompleteSet)
ALTER TABLE CompleteSet ADD CONSTRAINT CompleteSet_DiscontinueDate
    FOREIGN KEY (DiscontinueDate_id)
    REFERENCES DiscontinueDate (id);

-- Reference: CompleteSet_Theme (table: CompleteSet)
ALTER TABLE CompleteSet ADD CONSTRAINT CompleteSet_Theme
    FOREIGN KEY (Theme_id)
    REFERENCES Theme (id);

-- Reference: Manual_CompleteSet (table: Manual)
ALTER TABLE Manual ADD CONSTRAINT Manual_CompleteSet
    FOREIGN KEY (CompleteSet_id)
    REFERENCES CompleteSet (id);

-- Reference: Minifigure_Brick (table: Minifigure)
ALTER TABLE Minifigure ADD CONSTRAINT Minifigure_Brick
    FOREIGN KEY (Brick_id)
    REFERENCES Brick (id);

-- Reference: Minifigure_Brick2 (table: Minifigure)
ALTER TABLE Minifigure ADD CONSTRAINT Minifigure_Brick2
    FOREIGN KEY (Brick_2_id)
    REFERENCES Brick (id);

-- Reference: Minifigure_Brick3 (table: Minifigure)
ALTER TABLE Minifigure ADD CONSTRAINT Minifigure_Brick3
    FOREIGN KEY (Brick_3_id)
    REFERENCES Brick (id);

-- Reference: Minifigure_Brick4 (table: Minifigure)
ALTER TABLE Minifigure ADD CONSTRAINT Minifigure_Brick4
    FOREIGN KEY (Brick_4_id)
    REFERENCES Brick (id);

-- Reference: Set_Minifigure_CompleteSet (table: Set_Minifigure)
ALTER TABLE Set_Minifigure ADD CONSTRAINT Set_Minifigure_CompleteSet
    FOREIGN KEY (CompleteSet_id)
    REFERENCES CompleteSet (id);

-- Reference: Set_Minifigure_Minifigure (table: Set_Minifigure)
ALTER TABLE Set_Minifigure ADD CONSTRAINT Set_Minifigure_Minifigure
    FOREIGN KEY (Minifigure_id)
    REFERENCES Minifigure (id);

-- Reference: Theme_Corporation (table: Theme)
ALTER TABLE Theme ADD CONSTRAINT Theme_Corporation
    FOREIGN KEY (Corporation_id)
    REFERENCES Corporation (id);

-- End of file.

