graph [
  directed 1
  node [
    id 0
    label "java.net.InetAddress"
    type "class"
    comment "&#10; * This class represents an Internet Protocol (IP) address.&#10; *&#10; * <p> An IP address is either a 32-bit or 128-bit unsigned number&#10; * used by IP, a lower-level protocol on which protocols like UDP and&#10; * TCP are built. The IP address architecture is defined by <a&#10; * href=&#34;http://www.ietf.org/rfc/rfc790.txt&#34;><i>RFC&#38;nbsp;790:&#10; * Assigned Numbers</i></a>, <a&#10; * href=&#34;http://www.ietf.org/rfc/rfc1918.txt&#34;> <i>RFC&#38;nbsp;1918:&#10; * Address Allocation for Private Internets</i></a>, <a&#10; * href=&#34;http://www.ietf.org/rfc/rfc2365.txt&#34;><i>RFC&#38;nbsp;2365:&#10; * Administratively Scoped IP Multicast</i></a>, and <a&#10; * href=&#34;http://www.ietf.org/rfc/rfc2373.txt&#34;><i>RFC&#38;nbsp;2373: IP&#10; * Version 6 Addressing Architecture</i></a>. An instance of an&#10; * InetAddress consists of an IP address and possibly its&#10; * corresponding host name (depending on whether it is constructed&#10; * with a host name or whether it has already done reverse host name&#10; * resolution).&#10; *&#10; * <h3> Address types </h3>&#10; *&#10; * <blockquote><table cellspacing=2 summary=&#34;Description of unicast and multicast address types&#34;>&#10; *   <tr><th valign=top><i>unicast</i></th>&#10; *       <td>An identifier for a single interface. A packet sent to&#10; *         a unicast address is delivered to the interface identified by&#10; *         that address.&#10; *&#10; *         <p> The Unspecified Address -- Also called anylocal or wildcard&#10; *         address. It must never be assigned to any node. It indicates the&#10; *         absence of an address. One example of its use is as the target of&#10; *         bind, which allows a server to accept a client connection on any&#10; *         interface, in case the server host has multiple interfaces.&#10; *&#10; *         <p> The <i>unspecified</i> address must not be used as&#10; *         the destination address of an IP packet.&#10; *&#10; *         <p> The <i>Loopback</i> Addresses -- This is the address&#10; *         assigned to the loopback interface. Anything sent to this&#10; *         IP address loops around and becomes IP input on the local&#10; *         host. This address is often used when testing a&#10; *         client.</td></tr>&#10; *   <tr><th valign=top><i>multicast</i></th>&#10; *       <td>An identifier for a set of interfaces (typically belonging&#10; *         to different nodes). A packet sent to a multicast address is&#10; *         delivered to all interfaces identified by that address.</td></tr>&#10; * </table></blockquote>&#10; *&#10; * <h4> IP address scope </h4>&#10; *&#10; * <p> <i>Link-local</i> addresses are designed to be used for addressing&#10; * on a single link for purposes such as auto-address configuration,&#10; * neighbor discovery, or when no routers are present.&#10; *&#10; * <p> <i>Site-local</i> addresses are designed to be used for addressing&#10; * inside of a site without the need for a global prefix.&#10; *&#10; * <p> <i>Global</i> addresses are unique across the internet.&#10; *&#10; * <h4> Textual representation of IP addresses </h4>&#10; *&#10; * The textual representation of an IP address is address family specific.&#10; *&#10; * <p>&#10; *&#10; * For IPv4 address format, please refer to <A&#10; * HREF=&#34;Inet4Address.html#format&#34;>Inet4Address#format</A>; For IPv6&#10; * address format, please refer to <A&#10; * HREF=&#34;Inet6Address.html#format&#34;>Inet6Address#format</A>.&#10; *&#10; * <P>There is a <a href=&#34;doc-files/net-properties.html#Ipv4IPv6&#34;>couple of&#10; * System Properties</a> affecting how IPv4 and IPv6 addresses are used.</P>&#10; *&#10; * <h4> Host Name Resolution </h4>&#10; *&#10; * Host name-to-IP address <i>resolution</i> is accomplished through&#10; * the use of a combination of local machine configuration information&#10; * and network naming services such as the Domain Name System (DNS)&#10; * and Network Information Service(NIS). The particular naming&#10; * services(s) being used is by default the local machine configured&#10; * one. For any host name, its corresponding IP address is returned.&#10; *&#10; * <p> <i>Reverse name resolution</i> means that for any IP address,&#10; * the host associated with the IP address is returned.&#10; *&#10; * <p> The InetAddress class provides methods to resolve host names to&#10; * their IP addresses and vice versa.&#10; *&#10; * <h4> InetAddress Caching </h4>&#10; *&#10; * The InetAddress class has a cache to store successful as well as&#10; * unsuccessful host name resolutions.&#10; *&#10; * <p> By default, when a security manager is installed, in order to&#10; * protect against DNS spoofing attacks,&#10; * the result of positive host name resolutions are&#10; * cached forever. When a security manager is not installed, the default&#10; * behavior is to cache entries for a finite (implementation dependent)&#10; * period of time. The result of unsuccessful host&#10; * name resolution is cached for a very short period of time (10&#10; * seconds) to improve performance.&#10; *&#10; * <p> If the default behavior is not desired, then a Java security property&#10; * can be set to a different Time-to-live (TTL) value for positive&#10; * caching. Likewise, a system admin can configure a different&#10; * negative caching TTL value when needed.&#10; *&#10; * <p> Two Java security properties control the TTL values used for&#10; *  positive and negative host name resolution caching:&#10; *&#10; * <blockquote>&#10; * <dl>&#10; * <dt><b>networkaddress.cache.ttl</b></dt>&#10; * <dd>Indicates the caching policy for successful name lookups from&#10; * the name service. The value is specified as as integer to indicate&#10; * the number of seconds to cache the successful lookup. The default&#10; * setting is to cache for an implementation specific period of time.&#10; * <p>&#10; * A value of -1 indicates &#34;cache forever&#34;.&#10; * </dd>&#10; * <dt><b>networkaddress.cache.negative.ttl</b> (default: 10)</dt>&#10; * <dd>Indicates the caching policy for un-successful name lookups&#10; * from the name service. The value is specified as as integer to&#10; * indicate the number of seconds to cache the failure for&#10; * un-successful lookups.&#10; * <p>&#10; * A value of 0 indicates &#34;never cache&#34;.&#10; * A value of -1 indicates &#34;cache forever&#34;.&#10; * </dd>&#10; * </dl>&#10; * </blockquote>&#10; *&#10; * @author  Chris Warth&#10; * @see     java.net.InetAddress#getByAddress(byte[])&#10; * @see     java.net.InetAddress#getByAddress(java.lang.String, byte[])&#10; * @see     java.net.InetAddress#getAllByName(java.lang.String)&#10; * @see     java.net.InetAddress#getByName(java.lang.String)&#10; * @see     java.net.InetAddress#getLocalHost()&#10; * @since JDK1.0&#10; "
  ]
  node [
    id 1
    label "private Object readResolve() throws ObjectStreamException"
    type "method"
    comment "&#10;     * Replaces the de-serialized object with an Inet4Address object.&#10;     *&#10;     * @return the alternate object to the de-serialized object.&#10;     *&#10;     * @throws ObjectStreamException if a new object replacing this&#10;     * object could not be created&#10;     "
  ]
  node [
    id 2
    label "public boolean isMulticastAddress()"
    type "method"
    comment "&#10;     * Utility routine to check if the InetAddress is an&#10;     * IP multicast address.&#10;     * @return a {@code boolean} indicating if the InetAddress is&#10;     * an IP multicast address&#10;     * @since   JDK1.1&#10;     "
  ]
  node [
    id 3
    label "public boolean isAnyLocalAddress()"
    type "method"
    comment "&#10;     * Utility routine to check if the InetAddress in a wildcard address.&#10;     * @return a {@code boolean} indicating if the Inetaddress is&#10;     *         a wildcard address.&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 4
    label "public boolean isLoopbackAddress()"
    type "method"
    comment "&#10;     * Utility routine to check if the InetAddress is a loopback address.&#10;     *&#10;     * @return a {@code boolean} indicating if the InetAddress is&#10;     * a loopback address; or false otherwise.&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 5
    label "public boolean isLinkLocalAddress()"
    type "method"
    comment "&#10;     * Utility routine to check if the InetAddress is an link local address.&#10;     *&#10;     * @return a {@code boolean} indicating if the InetAddress is&#10;     * a link local address; or false if address is not a link local unicast address.&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 6
    label "public boolean isSiteLocalAddress()"
    type "method"
    comment "&#10;     * Utility routine to check if the InetAddress is a site local address.&#10;     *&#10;     * @return a {@code boolean} indicating if the InetAddress is&#10;     * a site local address; or false if address is not a site local unicast address.&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 7
    label "public boolean isMCGlobal()"
    type "method"
    comment "&#10;     * Utility routine to check if the multicast address has global scope.&#10;     *&#10;     * @return a {@code boolean} indicating if the address has&#10;     *         is a multicast address of global scope, false if it is not&#10;     *         of global scope or it is not a multicast address&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 8
    label "public boolean isMCNodeLocal()"
    type "method"
    comment "&#10;     * Utility routine to check if the multicast address has node scope.&#10;     *&#10;     * @return a {@code boolean} indicating if the address has&#10;     *         is a multicast address of node-local scope, false if it is not&#10;     *         of node-local scope or it is not a multicast address&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 9
    label "public boolean isMCLinkLocal()"
    type "method"
    comment "&#10;     * Utility routine to check if the multicast address has link scope.&#10;     *&#10;     * @return a {@code boolean} indicating if the address has&#10;     *         is a multicast address of link-local scope, false if it is not&#10;     *         of link-local scope or it is not a multicast address&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 10
    label "public boolean isMCSiteLocal()"
    type "method"
    comment "&#10;     * Utility routine to check if the multicast address has site scope.&#10;     *&#10;     * @return a {@code boolean} indicating if the address has&#10;     *         is a multicast address of site-local scope, false if it is not&#10;     *         of site-local scope or it is not a multicast address&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 11
    label "public boolean isMCOrgLocal()"
    type "method"
    comment "&#10;     * Utility routine to check if the multicast address has organization scope.&#10;     *&#10;     * @return a {@code boolean} indicating if the address has&#10;     *         is a multicast address of organization-local scope,&#10;     *         false if it is not of organization-local scope&#10;     *         or it is not a multicast address&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 12
    label "public boolean isReachable(int timeout) throws IOException"
    type "method"
    comment "&#10;     * Test whether that address is reachable. Best effort is made by the&#10;     * implementation to try to reach the host, but firewalls and server&#10;     * configuration may block requests resulting in a unreachable status&#10;     * while some specific ports may be accessible.&#10;     * <p>&#10;     * Android implementation attempts ICMP ECHO REQUESTs first, on failure it&#10;     * will fall back to TCP ECHO REQUESTs. Success on either protocol will&#10;     * return true.&#10;     * <p>&#10;     * The timeout value, in milliseconds, indicates the maximum amount of time&#10;     * the try should take. If the operation times out before getting an&#10;     * answer, the host is deemed unreachable. A negative value will result&#10;     * in an IllegalArgumentException being thrown.&#10;     *&#10;     * @param   timeout the time, in milliseconds, before the call aborts&#10;     * @return a {@code boolean} indicating if the address is reachable.&#10;     * @throws IOException if a network error occurs&#10;     * @throws  IllegalArgumentException if {@code timeout} is negative.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 13
    label "public boolean isReachable(NetworkInterface netif, int ttl, int timeout) throws IOException"
    type "method"
    comment "&#10;     * Test whether that address is reachable. Best effort is made by the&#10;     * implementation to try to reach the host, but firewalls and server&#10;     * configuration may block requests resulting in a unreachable status&#10;     * while some specific ports may be accessible.&#10;     * <p>&#10;     * Android implementation attempts ICMP ECHO REQUESTs first, on failure it&#10;     * will fall back to TCP ECHO REQUESTs. Success on either protocol will&#10;     * return true.&#10;     * <p>&#10;     * The {@code network interface} and {@code ttl} parameters&#10;     * let the caller specify which network interface the test will go through&#10;     * and the maximum number of hops the packets should go through.&#10;     * A negative value for the {@code ttl} will result in an&#10;     * IllegalArgumentException being thrown.&#10;     * <p>&#10;     * The timeout value, in milliseconds, indicates the maximum amount of time&#10;     * the try should take. If the operation times out before getting an&#10;     * answer, the host is deemed unreachable. A negative value will result&#10;     * in an IllegalArgumentException being thrown.&#10;     *&#10;     * @param   netif   the NetworkInterface through which the&#10;     *                    test will be done, or null for any interface&#10;     * @param   ttl     the maximum numbers of hops to try or 0 for the&#10;     *                  default&#10;     * @param   timeout the time, in milliseconds, before the call aborts&#10;     * @throws  IllegalArgumentException if either {@code timeout}&#10;     *                          or {@code ttl} are negative.&#10;     * @return a {@code boolean}indicating if the address is reachable.&#10;     * @throws IOException if a network error occurs&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 14
    label "public String getHostName()"
    type "method"
    comment "&#10;     * Gets the host name for this IP address.&#10;     *&#10;     * <p>If this InetAddress was created with a host name,&#10;     * this host name will be remembered and returned;&#10;     * otherwise, a reverse name lookup will be performed&#10;     * and the result will be returned based on the system&#10;     * configured name lookup service. If a lookup of the name service&#10;     * is required, call&#10;     * {@link #getCanonicalHostName() getCanonicalHostName}.&#10;     *&#10;     * <p>If there is a security manager, its&#10;     * {@code checkConnect} method is first called&#10;     * with the hostname and {@code -1}&#10;     * as its arguments to see if the operation is allowed.&#10;     * If the operation is not allowed, it will return&#10;     * the textual representation of the IP address.&#10;     *&#10;     * @return  the host name for this IP address, or if the operation&#10;     *    is not allowed by the security check, the textual&#10;     *    representation of the IP address.&#10;     *&#10;     * @see InetAddress#getCanonicalHostName&#10;     * @see SecurityManager#checkConnect&#10;     "
  ]
  node [
    id 15
    label "getCanonicalHostName()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 16
    label "public String getCanonicalHostName()"
    type "method"
    comment "&#10;     * Gets the fully qualified domain name for this IP address.&#10;     * Best effort method, meaning we may not be able to return&#10;     * the FQDN depending on the underlying system configuration.&#10;     *&#10;     * <p>If there is a security manager, this method first&#10;     * calls its {@code checkConnect} method&#10;     * with the hostname and {@code -1}&#10;     * as its arguments to see if the calling code is allowed to know&#10;     * the hostname for this IP address, i.e., to connect to the host.&#10;     * If the operation is not allowed, it will return&#10;     * the textual representation of the IP address.&#10;     *&#10;     * @return  the fully qualified domain name for this IP address,&#10;     *    or if the operation is not allowed by the security check,&#10;     *    the textual representation of the IP address.&#10;     *&#10;     * @see SecurityManager#checkConnect&#10;     *&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 17
    label "private static String getHostFromNameService(InetAddress addr)"
    type "method"
    comment "&#10;     * Returns the hostname for this address.&#10;     *&#10;     * <p>If there is a security manager, this method first&#10;     * calls its {@code checkConnect} method&#10;     * with the hostname and {@code -1}&#10;     * as its arguments to see if the calling code is allowed to know&#10;     * the hostname for this IP address, i.e., to connect to the host.&#10;     * If the operation is not allowed, it will return&#10;     * the textual representation of the IP address.&#10;     *&#10;     * @return  the host name for this IP address, or if the operation&#10;     *    is not allowed by the security check, the textual&#10;     *    representation of the IP address.&#10;     *&#10;     * @see SecurityManager#checkConnect&#10;     "
  ]
  node [
    id 18
    label "public byte[] getAddress()"
    type "method"
    comment "&#10;     * Returns the raw IP address of this {@code InetAddress}&#10;     * object. The result is in network byte order: the highest order&#10;     * byte of the address is in {@code getAddress()[0]}.&#10;     *&#10;     * @return  the raw IP address of this object.&#10;     "
  ]
  node [
    id 19
    label "public String getHostAddress()"
    type "method"
    comment "&#10;     * Returns the IP address string in textual presentation.&#10;     *&#10;     * @return  the raw IP address in a string format.&#10;     * @since   JDK1.0.2&#10;     "
  ]
  node [
    id 20
    label "public int hashCode()"
    type "method"
    comment "&#10;     * Returns a hashcode for this IP address.&#10;     *&#10;     * @return  a hash code value for this IP address.&#10;     "
  ]
  node [
    id 21
    label "public boolean equals(Object obj)"
    type "method"
    comment "&#10;     * Compares this object against the specified object.&#10;     * The result is {@code true} if and only if the argument is&#10;     * not {@code null} and it represents the same IP address as&#10;     * this object.&#10;     * <p>&#10;     * Two instances of {@code InetAddress} represent the same IP&#10;     * address if the length of the byte arrays returned by&#10;     * {@code getAddress} is the same for both, and each of the&#10;     * array components is the same for the byte arrays.&#10;     *&#10;     * @param   obj   the object to compare against.&#10;     * @return  {@code true} if the objects are the same;&#10;     *          {@code false} otherwise.&#10;     * @see     java.net.InetAddress#getAddress()&#10;     "
  ]
  node [
    id 22
    label "public String toString()"
    type "method"
    comment "&#10;     * Converts this IP address to a {@code String}. The&#10;     * string returned is of the form: hostname / literal IP&#10;     * address.&#10;     *&#10;     * If the host name is unresolved, no reverse name service lookup&#10;     * is performed. The hostname part will be represented by an empty string.&#10;     *&#10;     * @return  a string representation of this IP address.&#10;     "
  ]
  node [
    id 23
    label "public static InetAddress getByAddress(String host, byte[] addr) throws UnknownHostException"
    type "method"
    comment "&#10;     * Creates an InetAddress based on the provided host name and IP address.&#10;     * No name service is checked for the validity of the address.&#10;     *&#10;     * <p> The host name can either be a machine name, such as&#10;     * &#34;{@code java.sun.com}&#34;, or a textual representation of its IP&#10;     * address.&#10;     * <p> No validity checking is done on the host name either.&#10;     *&#10;     * <p> If addr specifies an IPv4 address an instance of Inet4Address&#10;     * will be returned; otherwise, an instance of Inet6Address&#10;     * will be returned.&#10;     *&#10;     * <p> IPv4 address byte array must be 4 bytes long and IPv6 byte array&#10;     * must be 16 bytes long&#10;     *&#10;     * @param host the specified host&#10;     * @param addr the raw IP address in network byte order&#10;     * @return  an InetAddress object created from the raw IP address.&#10;     * @exception  UnknownHostException  if IP address is of illegal length&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 24
    label "private static InetAddress getByAddress(String host, byte[] addr, int scopeId) throws UnknownHostException"
    type "method"
    comment " Do not delete. Called from native code."
  ]
  node [
    id 25
    label "public static InetAddress getByName(String host) throws UnknownHostException"
    type "method"
    comment "&#10;     * Determines the IP address of a host, given the host's name.&#10;     *&#10;     * <p> The host name can either be a machine name, such as&#10;     * &#34;{@code java.sun.com}&#34;, or a textual representation of its&#10;     * IP address. If a literal IP address is supplied, only the&#10;     * validity of the address format is checked.&#10;     *&#10;     * <p> For {@code host} specified in literal IPv6 address,&#10;     * either the form defined in RFC 2732 or the literal IPv6 address&#10;     * format defined in RFC 2373 is accepted. IPv6 scoped addresses are also&#10;     * supported. See <a href=&#34;Inet6Address.html#scoped&#34;>here</a> for a description of IPv6&#10;     * scoped addresses.&#10;     *&#10;     * <p> If the host is {@code null} then an {@code InetAddress}&#10;     * representing an address of the loopback interface is returned.&#10;     * See <a href=&#34;http://www.ietf.org/rfc/rfc3330.txt&#34;>RFC&#38;nbsp;3330</a>&#10;     * section&#38;nbsp;2 and <a href=&#34;http://www.ietf.org/rfc/rfc2373.txt&#34;>RFC&#38;nbsp;2373</a>&#10;     * section&#38;nbsp;2.5.3. </p>&#10;     *&#10;     * @param      host   the specified host, or {@code null}.&#10;     * @return     an IP address for the given host name.&#10;     * @exception  UnknownHostException  if no IP address for the&#10;     *               {@code host} could be found, or if a scope_id was specified&#10;     *               for a global IPv6 address.&#10;     * @exception  SecurityException if a security manager exists&#10;     *             and its checkConnect method doesn't allow the operation&#10;     "
  ]
  node [
    id 26
    label "public static InetAddress[] getAllByName(String host) throws UnknownHostException"
    type "method"
    comment "&#10;     * Given the name of a host, returns an array of its IP addresses,&#10;     * based on the configured name service on the system.&#10;     *&#10;     * <p> The host name can either be a machine name, such as&#10;     * &#34;{@code java.sun.com}&#34;, or a textual representation of its IP&#10;     * address. If a literal IP address is supplied, only the&#10;     * validity of the address format is checked.&#10;     *&#10;     * <p> For {@code host} specified in <i>literal IPv6 address</i>,&#10;     * either the form defined in RFC 2732 or the literal IPv6 address&#10;     * format defined in RFC 2373 is accepted. A literal IPv6 address may&#10;     * also be qualified by appending a scoped zone identifier or scope_id.&#10;     * The syntax and usage of scope_ids is described&#10;     * <a href=&#34;Inet6Address.html#scoped&#34;>here</a>.&#10;     * <p> If the host is {@code null} then an {@code InetAddress}&#10;     * representing an address of the loopback interface is returned.&#10;     * See <a href=&#34;http://www.ietf.org/rfc/rfc3330.txt&#34;>RFC&#38;nbsp;3330</a>&#10;     * section&#38;nbsp;2 and <a href=&#34;http://www.ietf.org/rfc/rfc2373.txt&#34;>RFC&#38;nbsp;2373</a>&#10;     * section&#38;nbsp;2.5.3. </p>&#10;     *&#10;     * <p> If there is a security manager and {@code host} is not&#10;     * null and {@code host.length() } is not equal to zero, the&#10;     * security manager's&#10;     * {@code checkConnect} method is called&#10;     * with the hostname and {@code -1}&#10;     * as its arguments to see if the operation is allowed.&#10;     *&#10;     * @param      host   the name of the host, or {@code null}.&#10;     * @return     an array of all the IP addresses for a given host name.&#10;     *&#10;     * @exception  UnknownHostException  if no IP address for the&#10;     *               {@code host} could be found, or if a scope_id was specified&#10;     *               for a global IPv6 address.&#10;     * @exception  SecurityException  if a security manager exists and its&#10;     *               {@code checkConnect} method doesn't allow the operation.&#10;     *&#10;     * @see SecurityManager#checkConnect&#10;     "
  ]
  node [
    id 27
    label "public static InetAddress getLoopbackAddress()"
    type "method"
    comment "&#10;     * Returns the loopback address.&#10;     * <p>&#10;     * The InetAddress returned will represent the IPv4&#10;     * loopback address, 127.0.0.1, or the IPv6 loopback&#10;     * address, ::1. The IPv4 loopback address returned&#10;     * is only one of many in the form 127.*.*.*&#10;     *&#10;     * @return  the InetAddress loopback instance.&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 28
    label "public static InetAddress getByAddress(byte[] addr) throws UnknownHostException"
    type "method"
    comment "&#10;     * Returns an {@code InetAddress} object given the raw IP address .&#10;     * The argument is in network byte order: the highest order&#10;     * byte of the address is in {@code getAddress()[0]}.&#10;     *&#10;     * <p> This method doesn't block, i.e. no reverse name service lookup&#10;     * is performed.&#10;     *&#10;     * <p> IPv4 address byte array must be 4 bytes long and IPv6 byte array&#10;     * must be 16 bytes long&#10;     *&#10;     * @param addr the raw IP address in network byte order&#10;     * @return  an InetAddress object created from the raw IP address.&#10;     * @exception  UnknownHostException  if IP address is of illegal length&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 29
    label "public static InetAddress getLocalHost() throws UnknownHostException"
    type "method"
    comment "&#10;     * Returns the address of the local host. This is achieved by retrieving&#10;     * the name of the host from the system, then resolving that name into&#10;     * an {@code InetAddress}.&#10;     *&#10;     * <P>Note: The resolved address may be cached for a short period of time.&#10;     * </P>&#10;     *&#10;     * <p>If there is a security manager, its&#10;     * {@code checkConnect} method is called&#10;     * with the local host name and {@code -1}&#10;     * as its arguments to see if the operation is allowed.&#10;     * If the operation is not allowed, an InetAddress representing&#10;     * the loopback address is returned.&#10;     *&#10;     * @return     the address of the local host.&#10;     *&#10;     * @exception  UnknownHostException  if the local host name could not&#10;     *             be resolved into an address.&#10;     *&#10;     * @see SecurityManager#checkConnect&#10;     * @see java.net.InetAddress#getByName(java.lang.String)&#10;     "
  ]
  node [
    id 30
    label " static InetAddress anyLocalAddress()"
    type "method"
    comment "&#10;     * Returns the InetAddress representing anyLocalAddress&#10;     * (typically 0.0.0.0 or ::0)&#10;     "
  ]
  edge [
    source 0
    target 1
    type "child"
  ]
  edge [
    source 0
    target 2
    type "child"
  ]
  edge [
    source 0
    target 3
    type "child"
  ]
  edge [
    source 0
    target 4
    type "child"
  ]
  edge [
    source 0
    target 5
    type "child"
  ]
  edge [
    source 0
    target 6
    type "child"
  ]
  edge [
    source 0
    target 7
    type "child"
  ]
  edge [
    source 0
    target 8
    type "child"
  ]
  edge [
    source 0
    target 9
    type "child"
  ]
  edge [
    source 0
    target 10
    type "child"
  ]
  edge [
    source 0
    target 11
    type "child"
  ]
  edge [
    source 0
    target 12
    type "child"
  ]
  edge [
    source 0
    target 13
    type "child"
  ]
  edge [
    source 0
    target 14
    type "child"
  ]
  edge [
    source 0
    target 16
    type "child"
  ]
  edge [
    source 0
    target 17
    type "child"
  ]
  edge [
    source 0
    target 18
    type "child"
  ]
  edge [
    source 0
    target 19
    type "child"
  ]
  edge [
    source 0
    target 20
    type "child"
  ]
  edge [
    source 0
    target 21
    type "child"
  ]
  edge [
    source 0
    target 22
    type "child"
  ]
  edge [
    source 0
    target 23
    type "child"
  ]
  edge [
    source 0
    target 24
    type "child"
  ]
  edge [
    source 0
    target 25
    type "child"
  ]
  edge [
    source 0
    target 26
    type "child"
  ]
  edge [
    source 0
    target 27
    type "child"
  ]
  edge [
    source 0
    target 28
    type "child"
  ]
  edge [
    source 0
    target 29
    type "child"
  ]
  edge [
    source 0
    target 30
    type "child"
  ]
  edge [
    source 14
    target 15
    type "link"
  ]
]
