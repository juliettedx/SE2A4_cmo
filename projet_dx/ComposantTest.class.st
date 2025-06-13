Class {
	#name : 'ComposantTest',
	#superclass : 'TestCase',
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'tests' }
ComposantTest >> testDescriptionInterrupteur [
	| i |
	i := Interrupteur new.
	self assert: (i description beginsWith: 'Interrupteur (').

]
