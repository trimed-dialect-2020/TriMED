<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <ns uri="urn:iso:std:iso:30042:ed-2" prefix="tbx" />
    <ns uri="https://github.com/trimed-dialect-2020/" prefix="trimed" />
    <ns uri="http://www.w3.org/2001/XMLSchema" prefix="xs" />
    
    <!-- Trimed Module Rules -->
    
    
    <pattern id="module.trimed.descrip">
        
        <rule context="trimed:superordinateConcept">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="trimed:subordinateConcept">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="trimed:conceptRelation">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="trimed:conceptualSphere">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="trimed:subDomain">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
       <!-- <rule context="trimed:conceptIdentifier">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="trimed:languageIdent">
            <assert test="parent::tbx:langSec">This DC must be at the language section level.</assert>
        </rule> -->
        
        <rule context="trimed:semicAnalysis">
            <assert test="parent::tbx:langSec">This DC must be at the language section level.</assert>
        </rule>
        
        
    </pattern>
    
    <pattern id="module.trimed.termNote">
        
        <rule context="trimed:identifier">
            <assert test="parent::tbx:termSec">This DC must be at the term section level.</assert>
        </rule>
        <rule context="trimed:grammaticalNumber">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:pronunciation">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:etymology">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:variant">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:abbreviation">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:derivative">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:fullForm">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:acronym">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:synonym">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:register">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:commonName">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:scientificName">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>      
        <rule context="trimed:hyponym">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:hypernym">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:collocation">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="trimed:phraseologicalUnit">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
    </pattern>
    
    <pattern id="module.trimed.xref">
        <rule context="trimed:icpc2_code">
            <assert test="parent::tbx:termSec">This URL may only be found at the termSec level.</assert>
        </rule>
        <rule context="trimed:icd10Code">
            <assert test="parent::tbx:termSec">This URL may only be found at the termSec level.</assert>
        </rule>
        <rule context="trimed:snomed">
            <assert test="parent::tbx:termSec">This URL may only be found at the termSec level.</assert>
        </rule>
        <rule context="trimed:mesh">
            <assert test="parent::tbx:termSec">This URL may only be found at the termSec level.</assert>
        </rule>
        
    </pattern> 
    
</schema>