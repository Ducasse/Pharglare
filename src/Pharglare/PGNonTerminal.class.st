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

{ #category : #'instance creation' }
PGNonTerminal class >> withName: aString [
	" ^ self new name: aString; yourself "
	
	| inst | 
	inst := self new. 
	inst name: aString.
	^ inst 
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
