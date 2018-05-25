Class {
	#name : #PGGrammar,
	#superclass : #Object,
	#instVars : [
		'tokens'
	],
	#category : #Pharglare
}

{ #category : #'instance creation' }
PGGrammar class >> fromStream: aStream [

	^ self new tokens: (PGParser new parse: aStream)
]

{ #category : #accessing }
PGGrammar >> tokens [

	^ tokens
]

{ #category : #accessing }
PGGrammar >> tokens: aCol [

	tokens := aCol
]
