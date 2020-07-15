Class {
	#name : #Bird,
	#superclass : #CMAgentLocation,
	#instVars : [
		'testReproduction',
		'mySpaceUnits',
		'status'
	],
	#classInstVars : [
		'habitatSuitabilityThreshold'
	],
	#category : #'Cormas-Model-ReHab'
}

{ #category : #image }
Bird class >> defaultImage [
"defaultImage adapted for Cormas versions previous to 2010. Returns a copy of the POV image stored in the povDict of the class at a specifed symbol key"
^((self povDict keys includes: #Animal) ifTrue:[self povDict at:#Animal] ifFalse:[super defaultImage]) copy
]

{ #category : #accessing }
Bird class >> habitatSuitabilityThreshold [
	"Getter accessor with default value = 2 "
	^habitatSuitabilityThreshold ifNil:[habitatSuitabilityThreshold := 2]
]

{ #category : #accessing }
Bird class >> habitatSuitabilityThreshold: anObject [
	habitatSuitabilityThreshold := anObject
]
