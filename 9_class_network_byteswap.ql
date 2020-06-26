import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation invocation |
      invocation.getMacroName().regexpMatch("ntoh.*") and this = invocation.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 
