#!/bin/perl -w

use Bio::Tools::Run::StandAloneBlastPlus;

#Lista de bases de datos: ftp://ftp.ncbi.nlm.nih.gov/blast/documents/blastdb.html
$fac = Bio::Tools::Run::StandAloneBlastPlus->new(
  -db_name => 'swissprot',
  -remote => 1
);
$fac->blastp( -query => '../Ex1/aminoacidosEjercicio1.fasta', -outfile => 'reporte.txt');
