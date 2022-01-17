import cpp

from Macro m
where m.getName() in ["ntohl", "ntohll", "ntohs"]
// where m.getName().regexpMatch("ntoh(l|ll|s)")
//m.getName() = "ntohl" or m.getName() = "ntohll" or m.getName() = "ntohs"
select m, m.getName(), "a macros named " + m.getName()