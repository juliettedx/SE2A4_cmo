Class {
	#name : 'SigTest',
	#superclass : 'TestCase',
	#category : 'projet_dx',
	#package : 'projet_dx'
}

{ #category : 'test' }
SigTest >> testAnd [
    self assert: (SignalHaut new and: SignalHaut new) class = SignalHaut.
    self assert: (SignalHaut new and: SignalBas new) class =  SignalBas.
    self assert: (SignalBas new and: SignalHaut new) class =  SignalBas.
    self assert: (SignalBas new and: SignalBas new) class = SignalBas.

]

{ #category : 'test' }
SigTest >> testNot [
    self assert: (SignalHaut new not) class = SignalBas.
    self assert: (SignalBas new not) class = SignalHaut.
]

{ #category : 'test' }
SigTest >> testOr [
    self assert: (SignalHaut new or: SignalHaut new) class= SignalHaut.
    self assert: (SignalHaut new or: SignalBas new) class=  SignalHaut.
    self assert: (SignalBas new or: SignalHaut new) class=  SignalHaut.
    self assert: (SignalBas new or: SignalBas new) class=  SignalBas.
]

{ #category : 'test' }
SigTest >> testevaluate1 [
| interrupteur1 interrupteur2 andGate val|
interrupteur1 := Interrupteur new .
interrupteur1 on.
interrupteur2 := Interrupteur new .
interrupteur2 off.

andGate := And new.
andGate in1: interrupteur1.
andGate in2: interrupteur2.

val := andGate evaluate.
self assert:(val class = SignalBas).
]

{ #category : 'test' }
SigTest >> testevaluatecircuit [
| interrupteur1 interrupteur2 and not vanne val circuit|
interrupteur1 := Interrupteur new .
interrupteur1 on.
interrupteur2 := Interrupteur new .
interrupteur2 off.

and := And new.
and in1: interrupteur1.
and in2: interrupteur2.

not:= Not new.
not in: and.

vanne := Vanne new.
vanne in: not.

circuit := Circuit new.
circuit ajtcompo: { interrupteur1 . interrupteur2. and. not. vanne }.

val := circuit evaluate.
self assert:(val class = SignalHaut).
]

{ #category : 'test' }
SigTest >> testvalue [ 
	self assert: (SignalHaut new value = true).
	self assert: (SignalBas new value = false)
]
