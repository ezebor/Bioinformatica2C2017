#!/bin/perl -w

use Bio::Tools::Run::StandAloneBlastPlus;

$fac = Bio::Tools::Run::StandAloneBlastPlus->new(
  -db_name => 'swissprot'
);
$fac->blastp( -query => '../Ex1/aminoacidosEjercicio1.fasta', -outfile => 'reporte.txt');
