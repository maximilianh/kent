# cgapSage.sql was originally generated by the autoSql program, which also 
# generated cgapSage.c and cgapSage.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#Mappings and frequencies for CGAP SAGE tags
CREATE TABLE cgapSage (
    bin smallint unsigned not null,
    chrom varchar(255) not null,	# Reference sequence chromosome or scaffold
    chromStart int unsigned not null,	# Start in Chromosome
    chromEnd int unsigned not null,	# End in Chromosome
    name varchar(255) not null,	# Name
    score int unsigned not null,	# Score
    strand char(1) not null,	# Strand
    thickStart int unsigned not null,	# Thick start
    thickEnd int unsigned not null,	# Thick end
    numLibs int unsigned not null,	# Number of libraries with data for this tag
    libIds longblob not null,	# Ids of libraries (foreign keys)
    freqs longblob not null,	# Frequency of each tag per library
    tagTpms longblob not null,	# Tag per million measurement of each lib
    numSnps int unsigned not null,	# Number of class=single SNPs in this region
    snps longblob not null,	# List of SNPs
              #Indices
    INDEX chrom (chrom(8), bin),
    INDEX chromStart (chrom(8), chromStart)
);
