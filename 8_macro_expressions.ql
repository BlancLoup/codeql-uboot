import cpp

from MacroInvocation mi
where mi.getMacroName().regexpMatch("ntoh(l|ll|s)")
// where m.getName().regexpMatch("ntoh(l|ll|s)")
//m.getName() = "ntohl" or m.getName() = "ntohll" or m.getName() = "ntohs"
select mi, mi.getExpr()