Class {
	#name : 'And',
	#superclass : 'Porte2Entrees',
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'action' }
And >> evaluate [ 
	^ (in1 evaluate)and: (in2 evaluate)
]

{ #category : 'action' }
And >> initialize [
    fichier := 'and.png'.
    position := 400@300.  "Par défaut, peut être défini après"
]

{ #category : 'action' }
And >> state [
	[^ in1 state and: in2 state] on: Error do: [ ^ false ].
]
