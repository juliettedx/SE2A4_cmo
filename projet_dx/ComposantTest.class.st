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

{ #category : 'tests' }
ComposantTest >> test_description_avec_entree [
| i not |
i :=And new.
not := Not new.
i in1: not.
self assert: i description
]
