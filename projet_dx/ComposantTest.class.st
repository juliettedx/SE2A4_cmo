Class {
	#name : 'ComposantTest',
	#superclass : 'TestCase',
	#instVars : [
		'inter1',
		'inter2',
		'inter3',
		'not',
		'and',
		'or',
		'vanne'
	],
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'as yet unclassified' }
ComposantTest >> setUp [ 
inter1 := Interrupteur new.
inter2 := Interrupteur new.
inter3 := Interrupteur new.
or := Or new.
not := Not new.
and := And new.
vanne := Vanne new.

not in: inter3.
or in1: inter1.
or in2: inter2.
and in1: or.
and in2: not.
vanne in: and.
]

{ #category : 'tests' }
ComposantTest >> testCircuitEtatoffoffoff [
	inter1 off.
	inter2 off.
	inter3 off.
	self assert: vanne state = false.
]

{ #category : 'tests' }
ComposantTest >> testCircuitEtatonoffoff [
	inter1 on.
	inter2 off.
	inter3 off.  
	self assert: vanne state = true.
]

{ #category : 'tests' }
ComposantTest >> testCircuitEtatonoffon [
	inter1 on.
	inter2 off.
	inter3 on.
	
	self assert: vanne state =false.
]

{ #category : 'tests' }
ComposantTest >> testCircuitEtatononoff [
	inter1 on.
	inter2 on.
	inter3 off.  
	self assert: vanne state = true.
]

{ #category : 'tests' }
ComposantTest >> testDescriptionInterrupteur_porte [
	| i prt|
	i := Interrupteur new.
	self assert: (i description beginsWith: 'Interrupteur (').
	prt := Porte new.
	self assert: (prt description beginsWith: 'Porte (').

	
	

]

{ #category : 'tests' }
ComposantTest >> testInterrupteurOnOff [
	| inter |
	inter := Interrupteur new.
	inter on.
	self assert: inter state .
	inter off.
	self assert: inter state equals: false.
]

{ #category : 'tests' }
ComposantTest >> test_description_avec_entree [
| i nt van noo|
i :=And new.
van :=Vanne new.
nt := Not new.
noo := Not new.
i in1: nt.
van in: nt.
self assert: ((i description findString: 'in1: ( Not ( ') > 0).
self assert:( (van description findString: 'in : ( Not (')>0).
self assert:( (noo description findString: 'in: non connecté')>0).

]
