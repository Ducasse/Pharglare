Class {
	#name : #PGNonTerminal,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #Pharglare
}

{ #category : #constants }
PGNonTerminal class >> undefinedName [

	^ 'Undefined Name'
]

{ #category : #initialization }
PGNonTerminal >> initialize [

	super initialize.
	self name: self class undefinedName 
]

{ #category : #accessing }
PGNonTerminal >> name [

	^ name
]

{ #category : #accessing }
PGNonTerminal >> name: aString [

	name := aString
]
