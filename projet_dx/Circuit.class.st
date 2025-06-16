Class {
	#name : 'Circuit',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'composants',
		'interrupteurs',
		'vannes'
	],
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'as yet unclassified' }
Circuit class >> Instancier: aCollection [ "prend ca en paramètre"
	|circuit|
	circuit := self new.
	circuit ajtcompo: aCollection .
   ^ circuit
]

{ #category : 'as yet unclassified' }
Circuit >> ajtcompo: aCollection [
"il faut ajouter dans les differentes collection des elements et les trier.
tous est ajouter dans composant, apres faut regarder ce que c'est et ajt les interupteur et les vannes au bon endroit
creation et utilisation des methodes getin et getouts ?? "
composants addAll: aCollection .
Transcript show: composants; cr.
composants := composants asSortedCollection: [:a :b | a id < b id].
Transcript show: composants; cr.
interrupteurs := (self getIns: aCollection) asSortedCollection: [:a :b | a id < b id].
vannes := (self getOuts: aCollection )asSortedCollection: [:a :b | a id < b id].


]

{ #category : 'accessing' }
Circuit >> composants [
	^ composants
]

{ #category : 'accessing' }
Circuit >> composantsAvecIds [
	^ composants collect: [:c | c class name , ' (' , c id printString , ')' ]

]

{ #category : 'accessing' }
Circuit >> description [ 
	| tmp |
	tmp := 'Circuit:' , String cr.
	composants do: [:elemt |
		tmp := tmp , '  ' , elemt description , String cr].
	^ tmp
]

{ #category : 'as yet unclassified' }
Circuit >> getIns: aCollection [
	|entree|
	entree := aCollection select: [ :i |i class = Interrupteur ].
	^entree
]

{ #category : 'as yet unclassified' }
Circuit >> getOuts: aCollection [
	|sortie|
	sortie := aCollection select: [ :i |i class = Vanne ].
	^sortie
]

{ #category : 'initialisation' }
Circuit >> initialize [ 
composants := OrderedCollection new.
interrupteurs := OrderedCollection new.
vannes := OrderedCollection new.
]

{ #category : 'accessing' }
Circuit >> interrupteurs [
	^ interrupteurs 
]

{ #category : 'accessing' }
Circuit >> vannes [
	^ vannes
]
