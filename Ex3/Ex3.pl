#!/usr/bin/perl -w

use Bio::AlignIO;
use Bio::Tools::Run::Alignment::Clustalw;
use Bio::Seq;

# Input: las 10 proteínas descargadas del blast online
my $proteinasInput = Bio::SeqIO->new(-file=> "INPUTproteinas.txt", 
				-format => 'fasta');

# Output: objeto de tipo clustalw, con el alineamiento entre la proteína inicial y las 10 proteínas descargadas del blast online
my $proteinasAlineadas = Bio::AlignIO->new(-file   => ">OUTPUTalineamientoMSA", 
				-format => 'clustalw');

# Construcción para correr Clustalw
$factory = Bio::Tools::Run::Alignment::Clustalw->new(-matrix => 'BLOSUM');
$ktuple = 3;
$factory->ktuple($ktuple);

# Guardo en un array cada secuencia del fasta input
@seq_array = ();
while ( my $secuencia = $proteinasInput->next_seq() ) {
    push (@seq_array, $secuencia);

}
# Correr alineamiento
$aln = $factory->align(\@seq_array);

$proteinasAlineadas->write_aln($aln);
