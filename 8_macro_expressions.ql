import cpp

from MacroInvocation invocation
where invocation.getMacroName().regexpMatch("ntoh.*")
select invocation.getExpr(), "call to ntoh*"
