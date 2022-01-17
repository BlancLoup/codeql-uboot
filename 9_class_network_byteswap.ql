import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap () {
        exists(MacroInvocation m | 
                m.getMacroName().regexpMatch("ntoh(l|ll|s)") and
                this = m.getExpr()
            )
    }
}

from NetworkByteSwap n
select n, "Network byte swap"

/*
from MacroInvocation mi
where mi.getMacroName().regexpMatch("ntoh(l|ll|s)")
// where m.getName().regexpMatch("ntoh(l|ll|s)")
//m.getName() = "ntohl" or m.getName() = "ntohll" or m.getName() = "ntohs"
select mi.getExpr()
*/