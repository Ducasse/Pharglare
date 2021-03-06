Class {
	#name : #PGGrammarSymbolTest,
	#superclass : #TestCase,
	#category : #Pharglare
}

{ #category : #tests }
PGGrammarSymbolTest >> testANonTerminalShouldHaveAName [

	| nt |
	nt := PGNonTerminal withName: 'myLovelyTerminal'.
	self assert: nt name equals: 'myLovelyTerminal'


	
]

{ #category : #tests }
PGGrammarSymbolTest >> testAction [
	| nt |
	nt := PGNonTerminal myTerminal.
	nt actionName: #print.
	nt actionMapping: {#print -> [ :parsingContext :nodes | parsingContext] } asDictionary. 
	self assert: (nt execute: #print) equals: #()


	
]

{ #category : #tests }
PGGrammarSymbolTest >> testAnUnnamedNonTerminalShouldBeUnnamed [

	| nt |
	nt := PGNonTerminal new.
	self assert: nt name equals: PGNonTerminal undefinedName


	
]

{ #category : #tests }
PGGrammarSymbolTest >> testCreateANonTerminal [

	| nt |
	nt := PGNonTerminal new.
	self assert: nt name equals: PGNonTerminal undefinedName


	
]

{ #category : #tests }
PGGrammarSymbolTest >> testSimpleGrammarCreation [

	| grammar |
	grammar := PGGrammar fromStream: ('''('' E '')''') readStream.
	self assert: grammar tokens size equals: 3

]
