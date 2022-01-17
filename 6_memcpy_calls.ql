import cpp

from FunctionCall c
where c.getTarget().getName() = "memcpy"
select c, c.getAPredecessor()