[top]
components : pattern2

[pattern2]
type : cell
dim : (20,20)
Delay : transport
DefaultDelayTime : 100
Border : WRAPPED
Neighbors : pattern2(-1,-1) pattern2(0,-1) pattern2(1,-1) 
neighbors : pattern2(-1,0) pattern2(0,0) pattern2(1,0)
neighbors : pattern2(-1,1) pattern2(0,1) pattern2(1,1)
Initialvalue : 0
InitialRowValue : 10 00000000010000000000 
LocalTransition : pattern2-rule

[pattern2-rule]
rule : {1} 100  {(0,0)=0 AND stateCount(1)=1}
rule : {1} 100 {(0,0)=1 AND stateCount(1)=3}
rule : {1} 100 {(0,0)=0 AND stateCount(1)=4}
rule : {0} 100 {t}
