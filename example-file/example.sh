#!/bin/bash

#module load BEDTools/2.26.0-foss-2016b
#module load SAMtools/1.3.1-foss-2016b
#module load R/3.3.1-foss-2016b-bioc-3.3-libX11-1.6.3 # for R package requirements
#module load novoalign/3.07.00
#module load TracerX-Picard-GATK/0.1-Java-1.7.0_80
#module load Jellyfish/2.2.6-foss-2016b

# If these commands are not already in your path, they must be added or pointed to
#alias samtools=/path/to/samtools
#alias jellyfish=/path/to/jellyfish
#alias bedtools=/path/to/bedtools


Rscript /home/dtiezzi/Softwares/lohhla/LOHHLAscript.R --patientId example --outputDir /out/correct-example-out \
 --normalBAMfile /home/dtiezzi/Softwares/lohhla/example-file/bam/example_BS_GL_sorted.bam \
 --tumorBAMfile /home/dtiezzi/Softwares/lohhla/example-file/bam/example_tumor_sorted.bam \
 --hlaPath /home/dtiezzi/Softwares/lohhla/example-file/hlas \
 --HLAfastaLoc /home/dtiezzi/Softwares/lohhla/data/example.patient.hlaFasta.fa  \
 --CopyNumLoc /home/dtiezzi/Softwares/lohhla/example-file/solutions.txt --mappingStep TRUE \
 --minCoverageFilter 10 --fishingStep TRUE --cleanUp FALSE  \
 --gatkDir /home/dtiezzi/Softwares/picard/build/libs/ \
 --novoDir /home/dtiezzi/Softwares/novocraft/




