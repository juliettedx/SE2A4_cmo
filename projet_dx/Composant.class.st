Class {
	#name : 'Composant',
	#superclass : 'Circuit',
	#instVars : [
		'id',
		'position',
		'fichier',
		'blocElement'
	],
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'operation' }
Composant >> affichagesur: aspace [
	| image element |
	image := (Form fromFileNamed: fichier) scaledToSize: 100@100.
   element := BlElement new
        background: image;
        position: position;
        size: 100@100.
   aspace root addChild: element.
]

{ #category : 'operation' }
Composant >> description [ 
 ^self class name, ' ( ', self id printString ,' ) '
]

{ #category : 'operation' }
Composant >> etat: uneEntree [
	[^ uneEntree class name, ' ( ', uneEntree id printString ,' ) ' ] on: Error do:[^'composant non connecté']

]

{ #category : 'accessing' }
Composant >> fichier [
    ^ fichier ifNil: [ 'default.png' ]  "ou un fichier de secours"
]

{ #category : 'operation' }
Composant >> id [
	^self hash
]

{ #category : 'accessing' }
Composant >> position [
    ^position
]

{ #category : 'accessing' }
Composant >> position: unPoint [
    position := unPoint
]
