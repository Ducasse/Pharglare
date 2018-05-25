Class {
	#name : #PGParser,
	#superclass : #Object,
	#category : #Pharglare
}

{ #category : #parsing }
PGParser >> parse: aStream [

	^ Scanner new scanTokens: aStream contents
]
