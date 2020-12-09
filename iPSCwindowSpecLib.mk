SHELL=C:/Windows/System32/cmd.exe
# Make runs each recipy in a separate shell.
# It is critical that TPP programs are able to search
# the path of this shell for executables. The following "export" statement ensure 
# these are available
export PATH=C:\TPP\perl\bin;C:\TPP\bin
# The following export sets the local in the shell to "C" which is 
# suitable for processing and prevents spurious error messages
# that may be returend by perl.
export LC_ALL=C
# Paths to executables.
# The path on a windows PC may have several versions of these tools installed in 
# several locations in various orders on the path. Setting them explicity
# ensures the expected versions are used for processing.
sed_path="C:\Rtools\bin\sed.exe"
awk_path="C:\Rtools\bin\gawk.exe"
DecoyDatabase_path="C:\Program Files\OpenMS-2.4.0\bin\DecoyDatabase.exe"
spectrast_path=\
"C:\Program Files\OpenMS-2.4.0\share\OpenMS\THIRDPARTY\SpectraST\spectrast.exe"
tandem_path="C:\Program Files\tandem-win-17-02-01-4\bin\tandem.exe"
msconvert_path=\
"C:\Program Files\ProteoWizard\ProteoWizard 3.0.20002.36ad78f14\msconvert.exe"
qtofpeakpicker_path=\
"C:\Program Files\ProteoWizard\ProteoWizard 3.0.20002.36ad78f14\qtofpeakpicker.exe"
Tandem2XML_path="C:\TPP\bin\Tandem2XML.exe"
xinteract_path="C:\TPP\bin\xinteract.exe"
PeptideProphet_path="C:\TPP\bin\PeptideProphetParser.exe"
perl_path="C:\TPP\perl\bin\perl.exe"
mayu_path="C:\TPP\bin\Mayu.pl"
idconvert_path="C:\TPP\bin\idconvert.exe"
python_path="C:\ProgramData\Miniconda3\python.exe"
spectrast2tsv_path="C:\ProgramData\Miniconda3\Scripts\spectrast2tsv.py"
TargetedFileConverter_path="C:\Program Files\OpenMS-2.4.0\bin\TargetedFileConverter.exe"

# java and mzidlib are required to generate mzid files primarily for submission to PRIDE.
# If they are not required, coment out these lines and mzid files will not be generated.
# Be sure to give path to 64 bit not 32 bit java as the latter
# can not allocate sufficient memory.
java_path="C:\Program Files\Java\jre1.8.0_271\bin\java.exe"
mzidlib_path="C:\ProteoAnnotator-1.7.86\mzidlib-1.7\mzidlib-1.7.jar"


# Wiff file dir
wiffDir = PXD017014

# Find the full list of wiff files in directory
wiffFiles_Day6:=\
Day_6_DDA_BAND_01.wiff Day_6_DDA_BAND_02.wiff Day_6_DDA_BAND_03.wiff \
Day_6_DDA_BAND_04.wiff Day_6_DDA_BAND_05.wiff Day_6_DDA_BAND_06.wiff \
Day_6_DDA_BAND_07.wiff Day_6_DDA_BAND_08.wiff Day_6_DDA_BAND_09.wiff \
Day_6_DDA_BAND_10.wiff Day_6_DDA_BAND_11.wiff Day_6_DDA_BAND_12.wiff \
Day_6_DDA_BAND_13.wiff Day_6_DDA_BAND_14.wiff Day_6_DDA_BAND_15.wiff \
Day_6_DDA_BAND_16.wiff Day_6_DDA_BAND_17.wiff Day_6_DDA_BAND_18.wiff \
Day_6_DDA_BAND_19.wiff Day_6_DDA_BAND_20.wiff Day_6_DDA_BAND_21.wiff \
Day_6_DDA_BAND_22.wiff Day_6_DDA_BAND_23.wiff Day_6_DDA_BAND_24.wiff \
Day_6_DDA_BAND_25.wiff Day_6_DDA_BAND_26.wiff Day_6_DDA_BAND_27.wiff \
Day_6_DDA_BAND_28.wiff Day_6_DDA_BAND_29.wiff Day_6_DDA_BAND_30.wiff

wiffFiles_iPSC:=\
iPSC_BAND_1.wiff iPSC_BAND_10.wiff iPSC_BAND_11.wiff iPSC_BAND_12.wiff \
iPSC_BAND_13.wiff iPSC_BAND_14.wiff iPSC_BAND_15.wiff iPSC_BAND_16.wiff \
iPSC_BAND_17.wiff iPSC_BAND_18.wiff iPSC_BAND_19.wiff iPSC_BAND_2.wiff  \
iPSC_BAND_20.wiff iPSC_BAND_21.wiff iPSC_BAND_22.wiff iPSC_BAND_23.wiff \
iPSC_BAND_24.wiff iPSC_BAND_25.wiff iPSC_BAND_26.wiff iPSC_BAND_27.wiff \
iPSC_BAND_28.wiff iPSC_BAND_29.wiff iPSC_BAND_3.wiff iPSC_BAND_30.wiff \
iPSC_BAND_4.wiff iPSC_BAND_5.wiff iPSC_BAND_6.wiff iPSC_BAND_7.wiff \
iPSC_BAND_8.wiff iPSC_BAND_9.wiff   


wiffFiles_MEFs:=\
MEFs_BAND_1.wiff MEFs_BAND_10.wiff MEFs_BAND_11.wiff MEFs_BAND_12.wiff \
MEFs_BAND_13.wiff MEFs_BAND_14.wiff MEFs_BAND_15.wiff MEFs_BAND_16.wiff \
MEFs_BAND_17.wiff MEFs_BAND_18.wiff MEFs_BAND_19.wiff MEFs_BAND_2.wiff \
MEFs_BAND_20.wiff MEFs_BAND_21.wiff MEFs_BAND_22.wiff MEFs_BAND_23.wiff \
MEFs_BAND_24.wiff MEFs_BAND_25.wiff MEFs_BAND_26.wiff MEFs_BAND_27.wiff \
MEFs_BAND_28.wiff MEFs_BAND_29.wiff MEFs_BAND_3.wiff MEFs_BAND_30.wiff \
MEFs_BAND_4.wiff MEFs_BAND_5.wiff MEFs_BAND_6.wiff MEFs_BAND_7.wiff \
MEFs_BAND_8.wiff MEFs_BAND_9.wiff   

wiffFiles_Mixed:=\
BAND_1.wiff BAND_10.wiff BAND_11.wiff BAND_12.wiff BAND_13.wiff \
BAND_14.wiff BAND_15.wiff BAND_16.wiff BAND_17.wiff BAND_18.wiff \
BAND_19.wiff BAND_2.wiff BAND_20.wiff BAND_21.wiff BAND_22.wiff \
BAND_23.wiff BAND_24.wiff BAND_25.wiff BAND_26.wiff BAND_27.wiff \
BAND_28.wiff BAND_29.wiff BAND_3.wiff BAND_30.wiff BAND_4.wiff \
BAND_5.wiff BAND_6.wiff BAND_7.wiff BAND_8.wiff BAND_9.wiff

rawDir=PXD002896

rawFiles_tissue:=\
ErikM_S1406_034.raw ErikM_S1406_035.raw ErikM_S1406_036.raw \
ErikM_S1406_037.raw ErikM_S1406_038.raw ErikM_S1406_039.raw \
ErikM_S1406_040.raw ErikM_S1406_041.raw ErikM_S1406_042.raw \
ErikM_S1406_043.raw ErikM_S1406_067.raw ErikM_S1406_068.raw \
ErikM_S1406_069.raw ErikM_S1406_070.raw ErikM_S1406_071.raw \
ErikM_S1406_072.raw ErikM_S1406_073.raw ErikM_S1406_074.raw \
ErikM_S1406_075.raw ErikM_S1406_076.raw ErikM_S1406_152.raw \
ErikM_S1406_153.raw ErikM_S1406_154.raw ErikM_S1406_155.raw \
ErikM_S1406_156.raw ErikM_S1406_157.raw ErikM_S1406_158.raw \
ErikM_S1406_159.raw ErikM_S1406_160.raw ErikM_S1406_161.raw \
ErikM_S1406_163.raw ErikM_S1406_164.raw ErikM_S1406_165.raw \
ErikM_S1406_166.raw ErikM_S1406_167.raw ErikM_S1406_168.raw \
ErikM_S1406_169.raw ErikM_S1406_170.raw ErikM_S1406_171.raw \
ErikM_S1406_172.raw Erik_S1407_013.raw Erik_S1407_014.raw   \
Erik_S1407_015.raw Erik_S1407_016.raw Erik_S1407_017.raw \
Erik_S1407_018.raw Erik_S1407_019.raw Erik_S1407_020.raw \
Erik_S1407_021.raw Erik_S1407_022.raw Erik_S1407_024.raw \
Erik_S1407_025.raw Erik_S1407_026.raw Erik_S1407_027.raw \
Erik_S1407_028.raw Erik_S1407_029.raw Erik_S1407_030.raw \
Erik_S1407_031.raw Erik_S1407_032.raw Erik_S1407_033.raw \
Erik_S1407_035.raw Erik_S1407_036.raw Erik_S1407_037.raw \
Erik_S1407_038.raw Erik_S1407_039.raw Erik_S1407_040.raw \
Erik_S1407_041.raw Erik_S1407_042.raw Erik_S1407_043.raw \
Erik_S1407_044.raw Erik_S1407_046.raw Erik_S1407_047.raw \
Erik_S1407_048.raw Erik_S1407_049.raw Erik_S1407_050.raw \
Erik_S1407_051.raw Erik_S1407_052.raw Erik_S1407_053.raw \
Erik_S1407_054.raw Erik_S1407_055.raw Erik_S1407_057.raw \
Erik_S1407_058.raw Erik_S1407_059.raw Erik_S1407_060.raw \
Erik_S1407_061.raw Erik_S1407_062.raw Erik_S1407_063.raw \
Erik_S1407_064.raw Erik_S1407_065.raw Erik_S1407_066.raw \
Erik_S1407_068.raw Erik_S1407_069.raw Erik_S1407_070.raw \
Erik_S1407_071.raw Erik_S1407_072.raw Erik_S1407_073.raw \
Erik_S1407_074.raw Erik_S1407_075.raw Erik_S1407_076.raw \
Erik_S1407_077.raw Erik_S1407_079.raw Erik_S1407_080.raw \
Erik_S1407_081.raw Erik_S1407_082.raw Erik_S1407_083.raw \
Erik_S1407_084.raw Erik_S1407_085.raw Erik_S1407_086.raw \
Erik_S1407_087.raw Erik_S1407_088.raw Erik_S1407_090.raw \
Erik_S1407_091.raw Erik_S1407_092.raw Erik_S1407_093.raw \
Erik_S1407_094.raw Erik_S1407_095.raw Erik_S1407_096.raw \
Erik_S1407_097.raw Erik_S1407_098.raw Erik_S1407_099.raw \
Erik_S1408_076.raw Erik_S1408_077.raw Erik_S1408_079.raw \
Erik_S1408_080.raw Erik_S1408_081.raw Erik_S1408_082.raw \
Erik_S1408_083.raw Erik_S1408_084.raw Erik_S1408_085.raw \
Erik_S1408_086.raw Simon_S1411_271.raw Simon_S1411_272.raw \
Simon_S1411_273.raw Simon_S1411_274.raw Simon_S1411_275.raw \
Simon_S1411_277.raw Simon_S1411_278.raw Simon_S1411_279.raw \
Simon_S1411_280.raw Simon_S1411_281.raw Simon_S1411_283.raw \
Simon_S1411_284.raw Simon_S1411_285.raw Simon_S1411_286.raw \
Simon_S1411_287.raw Simon_S1411_288.raw Simon_S1411_290.raw \
Simon_S1411_291.raw Simon_S1411_292.raw Simon_S1411_293.raw \
Simon_S1411_294.raw Simon_S1411_295.raw Simon_S1411_297.raw \
Simon_S1411_298.raw Simon_S1411_299.raw Simon_S1411_300.raw
                  
rawFiles_tissue_dir:=$(addprefix .\${rawDir}\, ${rawFiles_tissue})

# Protein fasta files

fastaBase = .\ini\uniprot-proteome3AUP000000589.fasta
fastaSwissProt = .\ini\uniprot-proteomeUP000000589_swissProt.fasta
fasta_iRT = .\ini\irtfusion.fasta
fasta_cRAP = .\ini\crap.fasta
fasta_MPI = .\ini\contaminants.fasta
fastaForTandem = $(subst .fasta,_rev.fasta,${fastaBase})
fastaForLabel = $(subst .fasta,_iRT.fasta,${fastaBase})

decoy_string = reverse_
cont_string = cont_

# Either biognosis iRT of Sciex pepCal retention time index peptides may be used.
RTindex = .\ini\iRTPeptides.txt


# Spesify mzXML files including target directory by swapping .wiff or .raw suffix for 
# .mzXML and adding dir prefix.
mzxml_CentFiles_Day6  :=$(addprefix .\lib\day6\Xtandem\,$(wiffFiles_Day6:.wiff=.mzXML))
mzxml_CentFiles_iPSC  :=$(addprefix .\lib\ipsc\Xtandem\,$(wiffFiles_iPSC:.wiff=.mzXML))
mzxml_CentFiles_MEFs  :=$(addprefix .\lib\mef\Xtandem\,$(wiffFiles_MEFs:.wiff=.mzXML))
mzxml_CentFiles_Mixed :=$(addprefix .\lib\mixed\Xtandem\,$(wiffFiles_Mixed:.wiff=.mzXML))
mzxml_CentFiles_tissue :=$(addprefix .\lib\tissues\Xtandem\,$(rawFiles_tissue:.raw=.mzXML))

# Concatenate lists of centroided files together.
all_CentFiles:= ${mzxml_CentFiles_Day6} ${mzxml_CentFiles_iPSC} \
            ${mzxml_CentFiles_MEFs} ${mzxml_CentFiles_Mixed} \
            ${mzxml_CentFiles_tissue}


# spesify the names of groups of files to enable xinteract to operate 
# on each group separatly (see below).
list_groups:= day6 ipsc mef mixed tissues

# Determin names of pep.xml files
# ifdef comands ensure this is only done if java and mzidlib are spesified above.
# if not this section will not be defined and recipies to produce mzid files not run.
pep_xml_files:= $(all_CentFiles:.mzXML=.pep.xml)
ifdef java_path
ifdef mzidlib_path
mzid_files:= $(all_CentFiles:.mzXML=.mzid)
endif
endif

# Spesify xtandem search combined interact.pep.xml files.
xtand_Day6  = .\lib\day6\Xtandem\interact.pep.xml
xtand_iPSC  = .\lib\ipsc\Xtandem\interact.pep.xml
xtand_MEFs  = .\lib\mef\Xtandem\interact.pep.xml
xtand_Mixed = .\lib\mixed\Xtandem\interact.pep.xml
xtand_tissue = .\lib\tissues\Xtandem\interact.pep.xml

xtand_all:= ${xtand_Day6} ${xtand_iPSC} ${xtand_MEFs} \
						${xtand_Mixed} ${xtand_tissue}

# Spesify names of files prcessed by peptide prophet.
xtand_Day6_Proph  = .\lib\day6\Xtandem\interact_Proph.pep.xml
xtand_iPSC_Proph  = .\lib\ipsc\Xtandem\interact_Proph.pep.xml
xtand_MEFs_Proph  = .\lib\mef\Xtandem\interact_Proph.pep.xml
xtand_Mixed_Proph = .\lib\mixed\Xtandem\interact_Proph.pep.xml
xtand_tissue_Proph = .\lib\tissues\Xtandem\interact_Proph.pep.xml

xtand_all_Proph:= ${xtand_Day6_Proph} ${xtand_iPSC_Proph} ${xtand_MEFs_Proph} \
									${xtand_Mixed_Proph} ${xtand_tissue_Proph}

# Spesify no consensus splib files
splib_Day6_noCons  = .\lib\day6\splib\splib_Day6_noCons.splib
splib_iPSC_noCons  = .\lib\ipsc\splib\splib_iPSC_noCons.splib
splib_MEFs_noCons  = .\lib\mef\splib\splib_MEFs_noCons.splib
splib_Mixed_noCons = .\lib\mixed\splib\splib_Mixed_noCons.splib
splib_tissue_noCons = .\lib\tissues\splib\splib_tissue_noCons.splib

allSplibNoCons := ${splib_Day6_noCons} ${splib_iPSC_noCons} ${splib_MEFs_noCons} \
									${splib_Mixed_noCons} ${splib_tissue_noCons}

#Spesify splib consensus files.
splib_Day6  = .\lib\day6\splib\splib_Day6_Cons.splib
splib_iPSC  = .\lib\ipsc\splib\splib_iPSC_Cons.splib
splib_MEFs  = .\lib\mef\splib\splib_MEFs_Cons.splib
splib_Mixed = .\lib\mixed\splib\splib_Mixed_Cons.splib
splib_tissue = .\lib\tissues\splib\splib_tissue_Cons.splib
splib_all_ipsc = .\lib\all_ipsc\splib_all_ipsc_Cons.splib
splib_all_ipsc_Tissues = .\lib\all_ipsc_Tissues\splib_all_ipsc_Tissues_Cons.splib
splib_all_ipsc_Tissues_SP = .\lib\all_ipsc_Tissues\splib_all_ipsc_Tissues_Cons_SP.splib

all_iPSC_Splib := ${splib_Day6} ${splib_iPSC} ${splib_MEFs} ${splib_Mixed} 
allSplib := ${all_iPSC_Splib} ${splib_tissue}
allSplibIncCombined := ${allSplib} ${splib_all_ipsc_Tissues} ${splib_all_ipsc} ${splib_all_ipsc_Tissues_SP}

# Spesify .tsv files for each .splib file
allFiltered := $(allSplibIncCombined:.splib=.tsv)
allFiltered_peakview := $(allSplibIncCombined:.splib=_peakview.tsv)

# Spesify .TraML file for each .splib file
allTraML:= $(allSplibIncCombined:.splib=.TraML)

.PHONY: all


all: ${allTraML} ${allFiltered} ${allFiltered_peakview} ${mzid_files} ${allSplibIncCombined}


define wiff2mzxml_Rule
${1} : ${2}
	if not exist $(dir ${1}) mkdir $(dir ${1}) 
	${qtofpeakpicker_path} --resolution=25000 \
							--area=1 --threshold=1 \
							--smoothwidth=1.1 \
							--in=${2} \
							--out=$(basename ${1})_large.mzxml 
	${msconvert_path} $(basename ${1})_large.mzxml --mzXML \
					--filter "threshold count 150 most-intense" \
					-o $(dir ${1}) \
					--outfile $(notdir ${1}) 
	del /F $(basename ${1})_large.mzxml 
endef


# Day six rules:
$(foreach wiffFile, ${wiffFiles_Day6},\
	$(eval \
		$(call wiff2mzxml_Rule,\
			.\lib\day6\Xtandem\$(wiffFile:.wiff=.mzXML),${wiffDir}\$(wiffFile)\
			)\
		)\
)


# ipsc rules:
$(foreach wiffFile, ${wiffFiles_iPSC},\
	$(eval \
		$(call wiff2mzxml_Rule,\
			.\lib\ipsc\Xtandem\$(wiffFile:.wiff=.mzXML),${wiffDir}\$(wiffFile)\
			)\
		)\
)
		
# mef rules:
$(foreach wiffFile, ${wiffFiles_MEFs},\
	$(eval \
		$(call wiff2mzxml_Rule,\
			.\lib\mef\Xtandem\$(wiffFile:.wiff=.mzXML),${wiffDir}\$(wiffFile)\
		)\
	)\
)
		
# mixed rules:
$(foreach wiffFile, ${wiffFiles_Mixed},\
	$(eval \
		$(call wiff2mzxml_Rule,\
			.\lib\mixed\Xtandem\$(wiffFile:.wiff=.mzXML),${wiffDir}\$(wiffFile)\
		)\
	)\
)



define raw2mzxml_Rule
${1} : ${2}
	if not exist $(dir ${1}) mkdir $(dir ${1}) 
	${msconvert_path} ${2} --singleThreaded --mzXML  --filter "peakPicking true 1-" \
	--filter "threshold count 150 most-intense" \
	-o $(dir ${1}) \
	--outfile $(notdir ${1}) 
endef

# tissue rules
$(foreach rawFile, ${rawFiles_tissue_dir},\
	$(eval \
		$(call raw2mzxml_Rule,\
			$(addprefix .\lib\tissues\Xtandem\,\
			$(notdir $(rawFile:.raw=.mzXML))),${rawFile})\
	)\
)


$(fastaBase:.fasta=_clean.fasta) : ${fastaBase}
	${sed_path} -e 's/[[:blank:]].*//g' $< > $@ 


$(fasta_cRAP:.fasta=_clean.fasta) : ${fasta_cRAP}
	${sed_path} -e 's/^>/^>${cont_string}/g' $< > $@ 


$(fasta_MPI:.fasta=_clean.fasta) : ${fasta_MPI}
	${sed_path} -e 's/^>/^>${cont_string}/g' $< > $@ 


${fastaForTandem} : $(fastaBase:.fasta=_clean.fasta) \
                    $(fasta_cRAP:.fasta=_clean.fasta) \
                    $(fasta_MPI:.fasta=_clean.fasta) ${fasta_iRT}
	${DecoyDatabase_path} -in $^ -out $@ -decoy_string ${decoy_string} 


${fastaForLabel} : $(fastaBase:.fasta=_clean.fasta) ${fasta_iRT}
	type $(fastaBase:.fasta=_clean.fasta) ${fasta_iRT} > ${fastaForLabel} 


define Xtandem_Rule
${1} : ${2} .\ini\taxonomy.xml .\ini\default_input.xml .\ini\Xtandem_params.xml ${fastaForTandem}
	if not exist $(dir ${1}) mkdir $(dir ${1}) 
	copy .\ini\Xtandem_params.xml $(1:.t.xml=_params.xml) 
	${sed_path} -i "s|spectrumFile|$(subst \,\\,${2})|"  $(1:.t.xml=_params.xml) 
	${sed_path} -i "s|outFile|$(subst \,\\,${1})|" $(1:.t.xml=_params.xml) 
	${tandem_path} $(1:.t.xml=_params.xml) 
	del /F $(1:.t.xml=_params.xml) 
	if exist sed* del sed* 
endef 

$(foreach centFile, ${all_CentFiles},\
		$(eval \
			$(call Xtandem_Rule,$\
				$(centFile:.mzXML=.t.xml),${centFile}$\
			)\
		)\
)

	
# The following rule will build mzid files
# ontology fasta : MS:1001348 
# https://www.ebi.ac.uk/ols/ontologies/MS/terms?obo_id=MS:1001348
# ontology mzxml: MS:1000566 
# https://www.ebi.ac.uk/ols/ontologies/MS/terms?obo_id=MS:1000566

define mzid_Rule
${1} : ${2}
	${java_path} -Xms1500m -Xmx3G -jar ${mzidlib_path} Tandem2mzid ${2} ${1} \
	-outputFragmentation true -decoyRegex ${decoy_string} \
	-databaseFileFormatID MS:1001348  -massSpecFileFormatID MS:1000566 \
	-idsStartAtZero false -compress false 
endef

$(foreach mzid, ${mzid_files},\
		$(eval \
			$(call mzid_Rule,\
					${mzid},\
					$(mzid:.mzid=.t.xml)\
				)\
		)\
)


define Xtandem_pep_xml_Rule
${1}: ${2}
	${Tandem2XML_path} ${2} ${1}
endef

$(foreach centFile, ${all_CentFiles},\
	$(eval \
		$(call Xtandem_pep_xml_Rule,\
				$(centFile:.mzXML=.pep.xml),\
				$(centFile:.mzXML=.t.xml)\
			)\
	)\
)


define xinteract_Rule
${1} : ${2}
	if not exist $(dir ${1}) mkdir $(dir ${1}) 
	${xinteract_path} -eT \
							-MONO \
							-E${3} \
							-l7 \
							-nP \
							-D${fastaForTandem} \
							-d${decoy_string} \
							-N${1} ${2} 
endef

$(foreach group, ${list_groups},\
		$(eval \
			$(call xinteract_Rule,$\
					.\lib\${group}\Xtandem\interact.pep.xml,$\
					$(filter .\lib\${group}\Xtandem%,${pep_xml_files}),$\
					${group}\
				)\
			)\
)


define peptideProphet_Rule
${1} : ${2}
	if not exist $(dir ${1}) mkdir $(dir ${1})
	if exist $(2:.pep.xml=_tmp.pep.xml) del /F $(2:.pep.xml=_tmp.pep.xml) 
	copy ${2} $(2:.pep.xml=_tmp.pep.xml) 
	if exist ${1} del /F ${1}
	${PeptideProphet_path} $(2:.pep.xml=_tmp.pep.xml) \
	ACCMASS PPM PI MINPROB=0.05 DECOY=${decoy_string} \
	DECOYPROBS NONPARAM NONTT IGNORECHG=1 IGNORECHG=4 \
	IGNORECHG=5 IGNORECHG=6 IGNORECHG=7
	ren $(2:.pep.xml=_tmp.pep.xml) $(notdir ${1}) 
endef

$(foreach prophOut, ${xtand_all_Proph},\
		$(eval \
			$(call peptideProphet_Rule,$\
					${prophOut},$\
					$(prophOut:_Proph.pep.xml=.pep.xml))\
			)\
)



define mayu_Rule
${1} : ${2}
	if not exist $(dir ${1}) mkdir $(dir ${1}) 
	${perl_path} ${mayu_path} \
	-A ${2} \
	-M $(subst _psm_protFDR0.01_t_1.07.csv,,${1}) \
	-C ${fastaForTandem} \
	-E ${decoy_string} \
	-G 0.01 \
	-H 49 \
	-I 1 \
	-P protFDR=0.01:t
endef

$(foreach prophOut, ${xtand_all_Proph},\
		$(eval \
			$(call mayu_Rule,\
				$(dir ${prophOut})mayuOut_psm_protFDR0.01_t_1.07.csv,\
				${prophOut}\
			)\
		)\
)


define spectrast_Rule	
${1} $(splibNoCons:.splib=.sptxt) : ${2} ${3} ${4} $${pep_xml_files}
	if not exist $(dir ${1}) mkdir $(dir ${1}) 
	$$(eval mayuCutoff := \
	$$(shell ${awk_path} -F, "BEGIN{min=1}{if($$$$5<=min)  min=$$$$5}END{print min}" ${4})\
		) 
	$$(file > $$(dir ${4})mayuCutoff.txt,$${mayuCutoff}) 
	${spectrast_path} -V \
				-cN$(basename $1) \
				-cICID-QTOF \
				-c_IRR \
				-c_IRT${3} \
				-cP$${mayuCutoff} \
				-c_BRK \
				-c_BRM \
				-c_RDY"${decoy_string}" \
				${2}
endef

$(foreach splibNoCons, ${allSplibNoCons},\
	$(eval\
		$(call spectrast_Rule,$\
			$(splibNoCons),$\
			$(subst splib,Xtandem,$(dir ${splibNoCons}))interact_Proph.pep.xml,$\
			${RTindex},$\
			$(subst splib,Xtandem,$(dir ${splibNoCons})mayuOut_psm_protFDR0.01_t_1.07.csv)$\
		)\
	)\
)



define spectrastCons_Rule	
${1} $(1:.splib=.sptxt) : ${2} ${fastaForLabel}
	if not exist $(dir ${1}) mkdir $(dir ${1}) 
	${spectrast_path} -V \
				-cN$(basename ${1}) \
				-cD${fastaForLabel} \
				-cu \
				-cAC \
				${2}
endef

$(foreach splibCons,${allSplib},$\
		$(eval\
			$(call spectrastCons_Rule,$\
				${splibCons},$\
				$(splibCons:_Cons.splib=_noCons.splib)$\
			)\
		)\
)


		
.\lib\all_ipsc\splib_all_ipsc_Cons.sptxt \
.\lib\all_ipsc\splib_all_ipsc_Cons.splib : ${all_iPSC_Splib}
	if not exist .\lib\all_ipsc mkdir .\lib\all_ipsc 
	${spectrast_path} -V \
				-cN$(basename $@) \
				-cAC \
				-cJU \
				$(filter %.splib,$^)

#################
#################
#################
				
.\lib\all_ipsc_Tissues\splib_all_ipsc_Tissues_Cons.sptxt \
.\lib\all_ipsc_Tissues\splib_all_ipsc_Tissues_Cons.splib: ${allSplib}
	if not exist .\lib\all_ipsc_Tissues\ mkdir .\lib\all_ipsc_Tissues 
	${spectrast_path} -V \
				-cN$(basename $@) \
				-cAC \
				-cJU \
				-cu \
				-cD${fastaForLabel} \
				$(filter %.splib,$^)
				
#################
#################
#################




				
$(splib_all_ipsc_Tissues_SP:.splib=.sptxt) ${splib_all_ipsc_Tissues_SP}: \
.\lib\all_ipsc_Tissues\splib_all_ipsc_Tissues_Cons.splib ${fastaSwissProt}
	if not exist .\lib\all_ipsc_Tissues\ mkdir .\lib\all_ipsc_Tissues 
	${spectrast_path} -V \
				-cN$(basename $@) \
				-cAC \
				-cJU \
				-cu \
				-cD${fastaSwissProt} \
				$(filter %.splib,$^)
				
#################
#################
#################



				
define spectrast2tsv_Rule
${1} : ${2} ${3}
	if not exist $(dir ${1}) mkdir $(dir ${1}) 
	${python_path} ${spectrast2tsv_path}  \
						-l 100,2000 \
						-s b,y \
						-x 1,2 \
						-g -17.03,-18.0 \
						-o 3 \
						-n 20 \
						-p 0.05 \
						-d -e \
						-k openswath \
						-w ${3} \
						-a ${1} \
						${2}
endef

$(foreach splib2conv, ${allSplibIncCombined},\
		$(eval \
				$(call spectrast2tsv_Rule,\
						$(basename ${splib2conv}).tsv,\
						$(basename ${splib2conv}).sptxt,\
						.\ini\SWATH_windows.txt\
					)\
			)\
)
						

				
define spectrast2tsv_peakview_Rule
${1} : ${2} ${3}
	if not exist $(dir ${1}) mkdir $(dir ${1}) 
	${python_path} ${spectrast2tsv_path}  \
						-l 100,2000 \
						-s b,y \
						-x 1,2 \
						-g -17.03,-18.0 \
						-o 3 \
						-n 20 \
						-p 0.05 \
						-d -e \
						-k peakview \
						-w ${3} \
						-a ${1} \
						${2}
endef

$(foreach splib2conv, ${allSplibIncCombined},\
		$(eval \
				$(call spectrast2tsv_peakview_Rule,\
						$(basename ${splib2conv})_peakview.tsv,\
						$(basename ${splib2conv}).sptxt,\
						.\ini\SWATH_windows.txt \
						)\
				)\
)
						

define Traml_Rule
${1} : ${2}
	if not exist $(dir ${1}) mkdir $(dir ${1}) 
	${TargetedFileConverter_path} -in ${2} -out ${1} \
	-algorithm:force_invalid_mods
endef
						
$(foreach TraML,${allTraML},\
		$(eval \
				$(call Traml_Rule,\
						${TraML},\
						$(basename ${TraML}).tsv \
					)\
			)\
)
						

define outFile_iRTfasta
>Biognosys|iRT-Kit_WR_fusion
LGGNEQVTRYILAGVENSKGTFIIDPGGVIR
GTFIIDPAAVIRGAGSSEPVTGLDAKTPVISGGPYEYR
VEATFGVDESNAKTPVITGAPYEYRDGLDAASYYAPVR
ADVTPADFSEWSKLFLQFGAQGSPFLK
endef

.\ini\irtfusion.fasta :
	$(file > .\ini\irtfusion.fasta,${outFile_iRTfasta})


define xtandemTaxonomy
<?xml version="1.0"?>
<bioml label="x! taxon-to-file matching list">
	<taxon label="fastaForSearch">
		<file format="peptide" URL="ini/uniprot-proteome3AUP000000589_rev.fasta" />
	</taxon>
</bioml>
endef

.\ini\taxonomy.xml :
	$(file > .\ini\taxonomy.xml,${xtandemTaxonomy})

define Xtandem_params
<?xml version="1.0"?>
<bioml>
	<note>
	Each one of the parameters for x! tandem is entered as a labeled note node. 
	Any of the entries in the default_input.xml file can be over-ridden by
	adding a corresponding entry to this file.
	</note>

	<note type="input" label="list path, default parameters">.\ini\default_input.xml</note>
	<note type="input" label="list path, taxonomy information">.\ini\taxonomy.xml</note>
	<note type="input" label="protein, taxon">fastaForSearch</note>	
	<note type="input" label="spectrum, path">spectrumFile</note>
	<note type="input" label="output, path">outFile</note>
	<note type="input" label="output, path hashing">no</note>
	<note>The following 'potential modification motif' entries cover 
	the isotopicaly labelled pepCalMix peptides.</note>
	<note type="input" label="residue, modification mass">+57.034@C</note>
	<note type="input" label="residue, potential modification mass">16@M</note>
	<note type="input" label="scoring, maximum missed cleavage sites">1</note>
	<note type="input" label="spectrum, fragment monoisotopic mass error">25</note>
	<note type="input" label="spectrum, parent monoisotopic mass error plus">30</note>
	<note type="input" label="spectrum, parent monoisotopic mass error minus">30</note>
	<note type="input" label="spectrum, parent monoisotopic mass isotope error">yes</note>
	<note type="input" label="spectrum, fragment monoisotopic mass error units">ppm</note>
	<note>The value for this parameter may be 'Daltons' or 'ppm': 
	all other values are ignored</note>
	<note type="input" label="spectrum, parent monoisotopic mass error units">ppm</note>
	<note>The value for this parameter may be 'Daltons' or 'ppm': 
	all other values are ignored</note>
	<note type="input" label="spectrum, fragment mass type">monoisotopic</note>
	<note type="input" label="scoring, include reverse">no</note>
	<note type="input" label="refine, maximum valid expectation value">0.1</note>
	<note type="input" label="output, maximum valid expectation value">0.1</note>	
	<note type="input" label="scoring, x ions">no</note>
	<note type="input" label="scoring, y ions">yes</note>
	<note type="input" label="scoring, z ions">no</note>
	<note type="input" label="scoring, a ions">no</note>
	<note type="input" label="scoring, b ions">yes</note>
	<note type="input" label="scoring, c ions">no</note>
	<note type="input" label="refine, use potential modifications for full refinement">no</note>
</bioml>
endef

.\ini\Xtandem_params.xml :
	$(file > .\ini\Xtandem_params.xml,${Xtandem_params})

define xtandemDefautParams
<?xml version="1.0"?>
<?xml-stylesheet type="text\xsl" href="tandem-input-style.xsl"?>
<bioml>
<note>list path parameters</note>
	<note type="input" label="list path, default parameters">default_input.xml</note>
		<note>This value is ignored when it is present in the default parameter
		list path.</note>
	<note type="input" label="list path, taxonomy information">taxonomy.xml</note>
<note>spectrum parameters</note>
	<note type="input" label="spectrum, fragment monoisotopic mass error">0.4</note>
	<note type="input" label="spectrum, parent monoisotopic mass error plus">100</note>
	<note type="input" label="spectrum, parent monoisotopic mass error minus">100</note>
	<note type="input" label="spectrum, parent monoisotopic mass isotope error">yes</note>
	<note type="input" label="spectrum, fragment monoisotopic mass error units">Daltons</note>
	<note>The value for this parameter may be 'Daltons' or 'ppm': 
	all other values are ignored</note>
	<note type="input" label="spectrum, parent monoisotopic mass error units">ppm</note>
		<note>The value for this parameter may be 'Daltons' or 'ppm': 
		all other values are ignored</note>
	<note type="input" label="spectrum, fragment mass type">monoisotopic</note>
		<note>values are monoisotopic|average </note>

<note>spectrum conditioning parameters</note>
	<note type="input" label="spectrum, dynamic range">100.0</note>
		<note>The peaks read in are normalized so that the most intense peak
		is set to the dynamic range value. All peaks with values of less that
		1, using this normalization, are not used. This normalization has the
		overall effect of setting a threshold value for peak intensities.</note>
	<note type="input" label="spectrum, total peaks">50</note> 
		<note>If this value is 0, it is ignored. If it is greater than zero (lets say 50),
		then the number of peaks in the spectrum with be limited to the 50 most intense
		peaks in the spectrum. X! tandem does not do any peak finding: it only
		limits the peaks used by this parameter, and the dynamic range parameter.</note>
	<note type="input" label="spectrum, maximum parent charge">4</note>
	<note type="input" label="spectrum, use noise suppression">yes</note>
	<note type="input" label="spectrum, minimum parent m+h">500.0</note>
	<note type="input" label="spectrum, minimum fragment mz">150.0</note>
	<note type="input" label="spectrum, minimum peaks">15</note> 
	<note type="input" label="spectrum, threads">1</note>
	<note type="input" label="spectrum, sequence batch size">1000</note>
	
<note>residue modification parameters</note>
	<note type="input" label="residue, modification mass">57.022@C</note>
		<note>The format of this parameter is m@X, where m is the modfication
		mass in Daltons and X is the appropriate residue to modify. Lists of
		modifications are separated by commas. For example, to modify M and C
		with the addition of 16.0 Daltons, the parameter line would be
		+16.0@M,+16.0@C
		Positive and negative values are allowed.
		</note>
	<note type="input" label="residue, potential modification mass"></note>
		<note>The format of this parameter is the same as the format
		for residue, modification mass (see above).</note>
		<note>The format of this parameter is similar to residue, modification mass,
		with the addition of a modified PROSITE notation sequence motif specification.
		For example, a value of 80@[ST!]PX[KR] indicates a modification
		of either S or T when followed by P, and residue and the a K or an R.
		A value of 204@N!{P}[ST]{P} indicates a modification of N by 204, if it
		is NOT followed by a P, then either an S or a T, NOT followed by a P.
		Positive and negative values are allowed.
		</note>

<note>protein parameters</note>
	<note type="input" label="protein, taxon">other mammals</note>
		<note>This value is interpreted using the information in taxonomy.xml.</note>
	<note type="input" label="protein, cleavage site">[RK]|{P}</note>
		<note>this setting corresponds to the enzyme trypsin. The first characters
		in brackets represent residues N-terminal to the bond - the '|' pipe -
		and the second set of characters represent residues C-terminal to the
		bond. The characters must be in square brackets (denoting that only
		these residues are allowed for a cleavage) or french brackets (denoting
		that these residues cannot be in that position). Use UPPERCASE characters.
		To denote cleavage at any residue, use [X]|[X] and reset the 
		scoring, maximum missed cleavage site parameter (see below) to something like 50.
		</note>
	<note type="input" label="protein, modified residue mass file"></note>
	<note type="input" label="protein, cleavage C-terminal mass change">+17.002735</note>
	<note type="input" label="protein, cleavage N-terminal mass change">+1.007825</note>
	<note type="input" label="protein, N-terminal residue modification mass">0.0</note>
	<note type="input" label="protein, C-terminal residue modification mass">0.0</note>
	<note type="input" label="protein, homolog management">no</note>
		<note>if yes, an upper limit is set on the number of 
		homologues kept for a particular spectrum</note>

<note>model refinement parameters</note>
	<note type="input" label="refine">yes</note>
	<note type="input" label="refine, modification mass"></note>
	<note type="input" label="refine, sequence path"></note>
	<note type="input" label="refine, tic percent">20</note>
	<note type="input" label="refine, spectrum synthesis">yes</note>
	<note type="input" label="refine, maximum valid expectation value">0.1</note>
	<note type="input" label="refine, potential N-terminus modifications">+42.010565@[</note>
	<note type="input" label="refine, potential C-terminus modifications"></note>
	<note type="input" label="refine, unanticipated cleavage">yes</note>
	<note type="input" label="refine, potential modification mass"></note>
	<note type="input" label="refine, point mutations">no</note>
	<note type="input" label="refine, use potential modifications for full refinement">no</note>
	<note type="input" label="refine, point mutations">no</note>
	<note type="input" label="refine, potential modification motif"></note>
	<note>The format of this parameter is similar to residue, modification mass,
		with the addition of a modified PROSITE notation sequence motif specification.
		For example, a value of 80@[ST!]PX[KR] indicates a modification
		of either S or T when followed by P, and residue and the a K or an R.
		A value of 204@N!{P}[ST]{P} indicates a modification of N by 204, if it
		is NOT followed by a P, then either an S or a T, NOT followed by a P.
		Positive and negative values are allowed.
		</note>

<note>scoring parameters</note>
	<note type="input" label="scoring, minimum ion count">4</note>
	<note type="input" label="scoring, maximum missed cleavage sites">1</note>
	<note type="input" label="scoring, x ions">no</note>
	<note type="input" label="scoring, y ions">yes</note>
	<note type="input" label="scoring, z ions">no</note>
	<note type="input" label="scoring, a ions">no</note>
	<note type="input" label="scoring, b ions">yes</note>
	<note type="input" label="scoring, c ions">no</note>
	<note type="input" label="scoring, cyclic permutation">no</note>
		<note>if yes, cyclic peptide sequence permutation 
		is used to pad the scoring histograms</note>
	<note type="input" label="scoring, include reverse">no</note>
		<note>if yes, then reversed sequences are searched at the 
		same time as forward sequences</note>
	<note type="input" label="scoring, cyclic permutation">no</note>
	<note type="input" label="scoring, include reverse">no</note>

<note>output parameters</note>
	<note type="input" label="output, log path"></note>
	<note type="input" label="output, message">testing 1 2 3</note>
	<note type="input" label="output, one sequence copy">no</note>
	<note type="input" label="output, sequence path"></note>
	<note type="input" label="output, path">output.xml</note>
	<note type="input" label="output, sort results by">protein</note>
		<note>values = protein|spectrum (spectrum is the default)</note>
	<note type="input" label="output, path hashing">yes</note>
		<note>values = yes|no</note>
	<note type="input" label="output, xsl path">tandem-style.xsl</note>
	<note type="input" label="output, parameters">yes</note>
		<note>values = yes|no</note>
	<note type="input" label="output, performance">yes</note>
		<note>values = yes|no</note>
	<note type="input" label="output, spectra">yes</note>
		<note>values = yes|no</note>
	<note type="input" label="output, histograms">yes</note>
		<note>values = yes|no</note>
	<note type="input" label="output, proteins">yes</note>
		<note>values = yes|no</note>
	<note type="input" label="output, sequences">yes</note>
		<note>values = yes|no</note>
	<note type="input" label="output, mzid">no</note>
	<note type="input" label="output, one sequence copy">no</note>
		<note>values = yes|no, set to yes to produce only one 
		copy of each protein sequence in the output xml</note>
	<note type="input" label="output, results">valid</note>
		<note>values = all|valid|stochastic</note>
	<note type="input" label="output, maximum valid expectation value">0.1</note>
		<note>value is used in the valid|stochastic setting of output, results</note>
	<note type="input" label="output, histogram column width">30</note>
		<note>values any integer greater than 0. Setting this to '1' 
		makes cutting and pasting histograms into spread sheet programs easier.</note>
	<note type="description">ADDITIONAL EXPLANATIONS</note>
	<note type="description">Each one of the parameters for X! tandem is entered as a 
	labeled note node. In the current version of X!, keep those note nodes 
	on a single line.
	</note>
	<note type="description">The presence of the type 'input' is necessary if a 
	note is to be considered an input parameter.
	</note>
	<note type="description">Any of the parameters that are paths to files may require 
	alteration for a particular installation. Full path names usually cause the least trouble,
			but there is no reason not to use relative path names, if that is the
			most convenient.
	</note>
	<note type="description">Any parameter values set in the 'list path, default parameters' 
	file are reset by entries in the normal input file, if they are present. Otherwise,
			the default set is used.
	</note>
	<note type="description">The 'list path, taxonomy information' file must exist.
		</note>
	<note type="description">The directory containing the 'output, path' file must exist: 
	it will not be created. </note>
	<note type="description">The 'output, xsl path' is optional: it is only of use if a 
	good XSLT style sheet exists. </note>
</bioml>
endef

.\ini\default_input.xml :
	$(file > .\ini\default_input.xml,${xtandemDefautParams})
	
define iRT_File
LGGNEQVTR	-24.92
GAGSSEPVTGLDAK	0.00
VEATFGVDESNAK	12.39
YILAGVENSK	19.79
TPVISGGPYEYR	28.71
TPVITGAPYEYR	33.38
DGLDAASYYAPVR	42.26
ADVTPADFSEWSK	54.62
GTFIIDPGGVIR	70.52
GTFIIDPAAVIR	87.23
LFLQFGAQGSPFLK	100.00
endef


.\ini\iRTPeptides.txt :
	$(file > .\ini\iRTPeptides.txt,${iRT_File})
	
define SWATH_windows
399.5	406
406	412
412	418
418	424
424	430
430	436
436	442
442	448
448	454
454	459
459	464
464	469
469	474
474	479
479	484
484	489
489	494
494	499
499	504
504	509
509	514
514	519
519	524
524	529
529	534
534	539
539	544
544	549
549	554
554	559
559	564
564	569
569	574
574	579
579	584
584	589
589	594
594	599
599	604
604	609
609	614
614	619
619	624
624	629
629	634
634	639
639	644
644	649
649	654
654	660
660	666
666	672
672	678
678	684
684	690
690	696
696	702
702	708
708	714
714	720
720	726
726	732
732	738
738	744
744	750
750	756
756	763
763	770
770	777
777	784
784	791
791	798
798	805
805	812
812	819
819	826
826	834
834	842
842	850
850	858
858	867
867	876
876	885
885	894
894	903
903	914
914	925
925	936
936	950
950	964
964	978
978	992
992	1011
1011	1030
1030	1054
1054	1078
1078	1117
1117	1156
1156	1200
1200	1249.5
endef

.\ini\SWATH_windows.txt :
	$(file > .\ini\SWATH_windows.txt,${SWATH_windows})
	

