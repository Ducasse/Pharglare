Class {
	#name : #PGNonTerminal,
	#superclass : #Object,
	#instVars : [
		'name',
		'actionName',
		'actionMapping'
	],
	#category : #Pharglare
}

{ #category : #examples }
PGNonTerminal class >> myTerminal [
	<sampleInstance>
	^ self withName: 'My'
]

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

{ #category : #private }
PGNonTerminal >> actionMapping: aDictionary [

	actionMapping := aDictionary
]

{ #category : #accessing }
PGNonTerminal >> actionName: aSymbol [

	actionName := aSymbol
]

{ #category : #private }
PGNonTerminal >> execute: aSymbol [

	^ ( actionMapping at: aSymbol ) value: #() value: #()
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
