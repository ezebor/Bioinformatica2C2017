#!/bin/perl -w

use Bio::Seq;
use Bio::SeqIO;

$seq_input_obj = Bio::SeqIO->new(-file => "mRNAEjercicio1.gb", 
                             -format => "GenBank",
			     -desc => "Ejercicio 1",
			     -alphabet => "rna");
$seq_rna_obj = $seq_input_obj->next_seq;
$prot_obj = $seq_rna_obj->translate(-orf => 'longest', -start => 'atg', -complete => 1);
$seq_output_obj = Bio::SeqIO->new(-file =>'>aminoacidosEjercicio1.fasta', 
                             -format => 'fasta' );
$seq_output_obj->write_seq($prot_obj);



