/* David Hiebl | HTL Leonding  3BHIF
 prepend3 */

prepend([],E,[E]).
prepend([Head|Tail], E, [E |[Head|Tail]]).

/*Zum Ausführen: prepend([LISTE], element, X) (liefert X = [element+LISTE])
BSP: prepend([b,c,d,e,f,g],a,X) liefert X = [a,b,c,d,e,f,g]

addElement3
*/

addElement([],E,[E]).
addElement([Head|Tail],E,[Head|AddedTail]):-addElement(Tail, E, AddedTail).

/*Zum Ausführen: addElement([LISTE], element, X) (liefert X = [LISTE+element])
BSP: prepend([1,2,3,4,5,6],7,X) liefert X = [1,2,3,4,5,6,7]

hasLength2
*/

hasLength([],0).
hasLength([_|Tail],L):-hasLength(Tail, C), L is C+1.

/*Zum Ausführen: hasLength([LISTE], X) (liefert X = länge)
BSP: hasLength([1,2,3,4,5,6,7],X) liefert X = 7

remove3*/

remove([E|Tail],E,Tail).
remove([Head|Tail],E,[Head|RemTail]):-remove(Tail,E,RemTail).

/*Zum Ausführen: remove([LISTE], element, X) (liefert X = [LISTE-element])
BSP: remove([5,4,3],4,X) liefert X = [5,3]*/

