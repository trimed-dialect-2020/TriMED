<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <ns uri="urn:iso:std:iso:30042:ed-2" prefix="tbx" />
    <ns uri="http://www.tbxinfo.net/ns/linguist" prefix="ling" />
    <ns uri="http://www.w3.org/2001/XMLSchema" prefix="xs" />
    
    <!-- Trimed Module Rules -->
    
    
    <pattern id="module.trimed.descrip">
        
        <rule context="ling:superordinateConcept">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="ling:subordinateConcept">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="ling:conceptRelation">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="ling:conceptualSphere">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="ling:subDomain">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="ling:conceptIdentifier">
            <assert test="parent::tbx:conceptEntry">This DC must be at the concept level.</assert>
        </rule>
        
        <rule context="ling:languageIdent">
            <assert test="parent::tbx:langSec">This DC must be at the language section level.</assert>
        </rule>
        
        <rule context="ling:semicAnalysis">
            <assert test="parent::tbx:langSec">This DC must be at the language section level.</assert>
        </rule>
        
        <rule context="ling:identifier">
            <assert test="parent::tbx:termSec">This DC must be at the term section level.</assert>
        </rule>
        
    </pattern>
    
    <pattern id="module.trimed.termNote">
        <rule context="ling:grammaticalNumber">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:derivative">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:pronunciation">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:etymology">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:variant">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:abbreviation">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:fullForm">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:acronym">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:synonym">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:register">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:commonName">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:scientificName">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>      
        <rule context="ling:hyponym">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:hypernym">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:collocation">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
        <rule context="ling:phraseologicalUnit">
            <assert test="parent::tbx:termSec or parent::tbx:termNoteGrp/parent::tbx:termSec">termNote elements must not occur outside the termSec level.</assert>
        </rule>
    </pattern>
    
    <pattern id="module.trimed.xref">
        <rule context="ling:icpc2_code">
            <assert test="parent::tbx:termSec">This URL may only be found at the termSec level.</assert>
        </rule>
        <rule context="ling:icd10Code">
            <assert test="parent::tbx:termSec">This URL may only be found at the termSec level.</assert>
        </rule>
        <rule context="ling:snomed">
            <assert test="parent::tbx:termSec">This URL may only be found at the termSec level.</assert>
        </rule>
        <rule context="ling:mesh">
            <assert test="parent::tbx:termSec">This URL may only be found at the termSec level.</assert>
        </rule>
        
    </pattern> 
    
</schema>