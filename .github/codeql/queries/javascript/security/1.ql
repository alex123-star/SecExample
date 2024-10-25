// CodeQL 示例：查询具有特定特征的变量
import java
from MethodAccess  ma, Method m
where
m = ma.getMethod () and
m.getName().regexpMatch("equals |getResourceAsStream|getResourceAsStream|getSyste")
not m.getDeclaringType() -getName() matches ("SecureUtil WhiteListedClass")
select ma, "Risky method" + m. getName()
