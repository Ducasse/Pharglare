Class {
	#name : #PGGrammarSymbolTest,
	#superclass : #TestCase,
	#category : #Pharglare
}

{ #category : #tests }
PGGrammarSymbolTest >> testCreateANonTerminal [

	| nt |
	nt := PGNonTerminal new.
	self assert: nt name equals: PGNonTerminal undefinedName


	
]
