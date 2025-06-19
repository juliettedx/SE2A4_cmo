Class {
	#name : 'Or',
	#superclass : 'Porte2Entrees',
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'public access' }
Or >> evaluate [ 
	^ (in1 evaluate) or: (in2 evaluate)
]

{ #category : 'accessing - structure variables' }
Or >> initialize [
    fichier := 'or.png'.
    position := 200@175.  "Par défaut, peut être défini après"

]

{ #category : 'accessing - structure variables' }
Or >> state [
	[^ in1 state or: in2 state] on: Error do: [ ^ false ].

]
