Class {
	#name : 'Vanne',
	#superclass : 'Composant',
	#instVars : [
		'in'
	],
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'operation' }
Vanne >> description [ 
 ^ super description ,' in : ( ', (self etat: in), ' )'
]

{ #category : 'operation' }
Vanne >> evaluate [
    ^ in evaluate.
]

{ #category : 'accessing' }
Vanne >> in [ 
	^in
]

{ #category : 'accessing' }
Vanne >> in: aComposant [
	in:= aComposant
]

{ #category : 'accessing' }
Vanne >> initialize [
    fichier := 'vanne_ouv.png'.
    position := 550@280.  "Par défaut, peut être défini après"
]

{ #category : 'operation' }
Vanne >> state [
	[^ in state] on: Error do: [ ^ false ].
]
