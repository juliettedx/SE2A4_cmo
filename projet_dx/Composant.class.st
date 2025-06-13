Class {
	#name : 'Composant',
	#superclass : 'Object',
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'operation' }
Composant >> description [ 
 ^self class name, ' ( ', self id printString ,' ) '
]

{ #category : 'as yet unclassified' }
Composant >> etat: uneEntree [
^ uneEntree isNil
	ifTrue: [ 'non connecté' ]
	ifFalse: [ uneEntree class name, ' ( ', uneEntree id printString ,' ) ']
]

{ #category : 'operation' }
Composant >> id [
	^self hash.
]
