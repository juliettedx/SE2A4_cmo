Class {
	#name : 'Circuit',
	#superclass : 'Object',
	#instVars : [
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

{ #category : 'operation' }
Circuit >> LienDe: source vers: destination dans: space [
    | line startPoint endPoint |

    startPoint := source position +(100@20).  "sortie à droite"
    endPoint := destination position +(0@30). "entrée à gauche"
	line:=BlElement new.
    line geometry: (BlLineGeometry from: startPoint to: endPoint).
line border: (BlBorder paint: Color black width: 2).
	(source state value ) ifTrue:[line border: (BlBorder paint: Color green width: 2)] ifFalse:[line border: (BlBorder paint: Color red width: 2)] .


    space root addChild: line.

]

{ #category : 'operation' }
Circuit >> ajoutConnexions: space [
    composants do: [:compo |
        
        (compo isKindOf: Porte2Entrees ) ifTrue: [
            compo in1 ifNotNil: [:entree1 |
                self LienDe: entree1 vers: compo dans: space.
            ].
            compo in2 ifNotNil: [:entree2 |
                self LienDe: entree2 vers: compo dans: space.
            ].
        ].

        (compo isKindOf: Porte) ifTrue: [
            (compo respondsTo: #in) ifTrue: [
                compo in ifNotNil: [:entree |
                    self LienDe: entree vers: compo dans: space.
                ].
            ].
        ].

        (compo isKindOf: Vanne) ifTrue: [
            compo in ifNotNil: [:entree |
                self LienDe: entree vers: compo dans: space.
            ].
        ].

        "Les interrupteurs n’ont pas d’entrée"
    ].

]

{ #category : 'operation' }
Circuit >> ajtcompo: aCollection [
"il faut ajouter dans les differentes collection des elements et les trier.
tous est ajouter dans composant, apres faut regarder ce que c'est et ajt les interupteur et les vannes au bon endroit"
composants addAll: aCollection .
composants := composants asSortedCollection: [:a :b | a id < b id].
interrupteurs := (self getIns: composants ) asSortedCollection: [:a :b | a id < b id].
vannes := (self getOuts: composants )asSortedCollection: [:a :b | a id < b id].


]

{ #category : 'accessing' }
Circuit >> composants [
	^ composants
]

{ #category : 'accessing' }
Circuit >> composantsAvecIds [
	^ composants collect: [:c | c class name , ' (' , c id printString , ')', ' etat: ', c state asString ]

]

{ #category : 'accessing' }
Circuit >> description [ 
	| tmp |
	tmp := 'Circuit:' , String cr.
	composants do: [:elemt |
		tmp := tmp , '  ' , elemt description , String cr].
	^ tmp
]

{ #category : 'operation' }
Circuit >> dessin_circuits [ 
	|space|
	space:= BlSpace new.
	composants do: [:elemt |
		elemt affichagesur: space].
	self ajoutConnexions: space.
	space show.
]

{ #category : 'operation' }
Circuit >> evaluate [ 
	|sig|
	sig:=vannes first evaluate.
	Transcript 
		show: 'Vanne ';
		show: vannes first id;
		show: ' : ';
		show: sig value asString;
		cr.
	^sig
]

{ #category : 'operation' }
Circuit >> getIns: aCollection [
	|entree|
	entree := aCollection select: [ :i |i class = Interrupteur ].
	^entree
]

{ #category : 'operation' }
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
