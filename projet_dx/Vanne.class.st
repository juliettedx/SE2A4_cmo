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

{ #category : 'accessing' }
Vanne >> in [ 
	^in
]

{ #category : 'evaluating' }
Vanne >> in: aComposant [
	in:= aComposant
]
