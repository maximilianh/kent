# bed5Sources.sql was originally generated by the autoSql program, which also 
# generated bed5Sources.c and bed5Sources.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#BED5+ with a float data value field and a list of sources for combined data
CREATE TABLE bed5Sources (
    bin int unsigned not null,	# Bin number for browser speedup
    chrom varchar(255) not null,	# Reference sequence chromosome or scaffold
    chromStart int unsigned not null,	# Start position in chromosome
    chromEnd int unsigned not null,	# End position in chromosome
    name varchar(255) not null,	# Name of item
    score int unsigned not null,	# Display score (0-1000)
    floatScore float not null,	# Data score (signal, p-value, z-score, etc.)
    sourceCount int unsigned not null,	# Number of sources contributing to this item
    sourceIds longblob not null,	# Comma separated list of source ids
              #Indices
    INDEX (chrom,bin)
);
