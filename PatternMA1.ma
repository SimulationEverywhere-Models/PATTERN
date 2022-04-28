[top]
components : pattern1

[pattern1]
type : cell
dim : (20,20)
Delay : transport
DefaultDelayTime : 100
Border : WRAPPED
Neighbors : pattern1(0,0) pattern1(-1,0) pattern1(1,0) pattern1(0,-1) pattern1(0,1)
Initialvalue : 0
InitialRowValue : 10 00000000010000000000 
LocalTransition : pattern1-rule

[pattern1-rule]
rule : {1} 100  {(0,0)=0 AND stateCount(1)=1}
rule : {1} 100 {(0,0)=0 AND stateCount(1)=3}
rule : {1} 100 {((0,0)=0 AND stateCount(1)=2) OR ((0,0)=1 AND stateCount(1)=2)}
rule : {0} 100 {t}
