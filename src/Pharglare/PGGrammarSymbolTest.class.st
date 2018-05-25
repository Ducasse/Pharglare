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
