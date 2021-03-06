# wgEncodeTreatment.sql was originally generated by the autoSql program, which also 
# generated wgEncodeTreatment.c and wgEncodeTreatment.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#Treatments used by ENCODE (2007-2012)
CREATE TABLE wgEncodeTreatment (
    id int unsigned not null,	# internal id
    term varchar(255) not null,	# public identifier
    description varchar(255) not null,	# descriptive phrase
              #Indices
    PRIMARY KEY(id)
);
