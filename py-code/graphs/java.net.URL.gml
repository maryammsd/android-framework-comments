graph [
  directed 1
  node [
    id 0
    label "java.net.URL"
    type "class"
    comment "&#10; * Class {@code URL} represents a Uniform Resource&#10; * Locator, a pointer to a &#34;resource&#34; on the World&#10; * Wide Web. A resource can be something as simple as a file or a&#10; * directory, or it can be a reference to a more complicated object,&#10; * such as a query to a database or to a search engine. More&#10; * information on the types of URLs and their formats can be found at:&#10; * <a href=&#10; * &#34;http://web.archive.org/web/20051219043731/http://archive.ncsa.uiuc.edu/SDG/Software/Mosaic/Demo/url-primer.html&#34;>&#10; * <i>Types of URL</i></a>&#10; * <p>&#10; * In general, a URL can be broken into several parts. Consider the&#10; * following example:&#10; * <blockquote><pre>&#10; *     http://www.example.com/docs/resource1.html&#10; * </pre></blockquote>&#10; * <p>&#10; * The URL above indicates that the protocol to use is&#10; * {@code http} (HyperText Transfer Protocol) and that the&#10; * information resides on a host machine named&#10; * {@code www.example.com}. The information on that host&#10; * machine is named {@code /docs/resource1.html}. The exact&#10; * meaning of this name on the host machine is both protocol&#10; * dependent and host dependent. The information normally resides in&#10; * a file, but it could be generated on the fly. This component of&#10; * the URL is called the <i>path</i> component.&#10; * <p>&#10; * A URL can optionally specify a &#34;port&#34;, which is the&#10; * port number to which the TCP connection is made on the remote host&#10; * machine. If the port is not specified, the default port for&#10; * the protocol is used instead. For example, the default port for&#10; * {@code http} is {@code 80}. An alternative port could be&#10; * specified as:&#10; * <blockquote><pre>&#10; *     http://www.example.com:1080/docs/resource1.html&#10; * </pre></blockquote>&#10; * <p>&#10; * The syntax of {@code URL} is defined by  <a&#10; * href=&#34;http://www.ietf.org/rfc/rfc2396.txt&#34;><i>RFC&#38;nbsp;2396: Uniform&#10; * Resource Identifiers (URI): Generic Syntax</i></a>, amended by <a&#10; * href=&#34;http://www.ietf.org/rfc/rfc2732.txt&#34;><i>RFC&#38;nbsp;2732: Format for&#10; * Literal IPv6 Addresses in URLs</i></a>. The Literal IPv6 address format&#10; * also supports scope_ids. The syntax and usage of scope_ids is described&#10; * <a href=&#34;Inet6Address.html#scoped&#34;>here</a>.&#10; * <p>&#10; * A URL may have appended to it a &#34;fragment&#34;, also known&#10; * as a &#34;ref&#34; or a &#34;reference&#34;. The fragment is indicated by the sharp&#10; * sign character &#34;#&#34; followed by more characters. For example,&#10; * <blockquote><pre>&#10; *     http://java.sun.com/index.html#chapter1&#10; * </pre></blockquote>&#10; * <p>&#10; * This fragment is not technically part of the URL. Rather, it&#10; * indicates that after the specified resource is retrieved, the&#10; * application is specifically interested in that part of the&#10; * document that has the tag {@code chapter1} attached to it. The&#10; * meaning of a tag is resource specific.&#10; * <p>&#10; * An application can also specify a &#34;relative URL&#34;,&#10; * which contains only enough information to reach the resource&#10; * relative to another URL. Relative URLs are frequently used within&#10; * HTML pages. For example, if the contents of the URL:&#10; * <blockquote><pre>&#10; *     http://java.sun.com/index.html&#10; * </pre></blockquote>&#10; * contained within it the relative URL:&#10; * <blockquote><pre>&#10; *     FAQ.html&#10; * </pre></blockquote>&#10; * it would be a shorthand for:&#10; * <blockquote><pre>&#10; *     http://java.sun.com/FAQ.html&#10; * </pre></blockquote>&#10; * <p>&#10; * The relative URL need not specify all the components of a URL. If&#10; * the protocol, host name, or port number is missing, the value is&#10; * inherited from the fully specified URL. The file component must be&#10; * specified. The optional fragment is not inherited.&#10; * <p>&#10; * The URL class does not itself encode or decode any URL components&#10; * according to the escaping mechanism defined in RFC2396. It is the&#10; * responsibility of the caller to encode any fields, which need to be&#10; * escaped prior to calling URL, and also to decode any escaped fields,&#10; * that are returned from URL. Furthermore, because URL has no knowledge&#10; * of URL escaping, it does not recognise equivalence between the encoded&#10; * or decoded form of the same URL. For example, the two URLs:<br>&#10; * <pre>    http://foo.com/hello world/ and http://foo.com/hello%20world</pre>&#10; * would be considered not equal to each other.&#10; * <p>&#10; * Note, the {@link java.net.URI} class does perform escaping of its&#10; * component fields in certain circumstances. The recommended way&#10; * to manage the encoding and decoding of URLs is to use {@link java.net.URI},&#10; * and to convert between these two classes using {@link #toURI()} and&#10; * {@link URI#toURL()}.&#10; * <p>&#10; * The {@link URLEncoder} and {@link URLDecoder} classes can also be&#10; * used, but only for HTML form encoding, which is not the same&#10; * as the encoding scheme defined in RFC2396.&#10; *&#10; * @author  James Gosling&#10; * @since JDK1.0&#10; "
  ]
  node [
    id 1
    label "private boolean isValidProtocol(String protocol)"
    type "method"
    comment "&#10;     * Returns true if specified string is a valid protocol name.&#10;     "
  ]
  node [
    id 2
    label "private void checkSpecifyHandler(SecurityManager sm)"
    type "method"
    comment "&#10;     * Checks for permission to specify a stream handler.&#10;     "
  ]
  node [
    id 3
    label " void set(String protocol, String host, int port, String file, String ref)"
    type "method"
    comment "&#10;     * Sets the fields of the URL. This is not a public method so that&#10;     * only URLStreamHandlers can modify URL fields. URLs are&#10;     * otherwise constant.&#10;     *&#10;     * @param protocol the name of the protocol to use&#10;     * @param host the name of the host&#10;       @param port the port number on the host&#10;     * @param file the file on the host&#10;     * @param ref the internal reference in the URL&#10;     "
  ]
  node [
    id 4
    label " void set(String protocol, String host, int port, String authority, String userInfo, String path, String query, String ref)"
    type "method"
    comment "&#10;     * Sets the specified 8 fields of the URL. This is not a public method so&#10;     * that only URLStreamHandlers can modify URL fields. URLs are otherwise&#10;     * constant.&#10;     *&#10;     * @param protocol the name of the protocol to use&#10;     * @param host the name of the host&#10;     * @param port the port number on the host&#10;     * @param authority the authority part for the url&#10;     * @param userInfo the username and password&#10;     * @param path the file on the host&#10;     * @param ref the internal reference in the URL&#10;     * @param query the query part of this URL&#10;     * @since 1.3&#10;     "
  ]
  node [
    id 5
    label "public String getQuery()"
    type "method"
    comment "&#10;     * Returns the decoded query component of this URI.&#10;     *&#10;     * <p> The string returned by this method is equal to that returned by the&#10;     * {@link #getRawQuery() getRawQuery} method except that all sequences of&#10;     * escaped octets are <a href=&#34;#decode&#34;>decoded</a>.  </p>&#10;     *&#10;     * @return  The decoded query component of this URI,&#10;     *          or {@code null} if the query is undefined&#10;     "
  ]
  node [
    id 6
    label "public String getPath()"
    type "method"
    comment "&#10;     * Returns the decoded path component of this URI.&#10;     *&#10;     * <p> The string returned by this method is equal to that returned by the&#10;     * {@link #getRawPath() getRawPath} method except that all sequences of&#10;     * escaped octets are <a href=&#34;#decode&#34;>decoded</a>.  </p>&#10;     *&#10;     * @return  The decoded path component of this URI,&#10;     *          or {@code null} if the path is undefined&#10;     "
  ]
  node [
    id 7
    label "public String getUserInfo()"
    type "method"
    comment "&#10;     * Returns the decoded user-information component of this URI.&#10;     *&#10;     * <p> The string returned by this method is equal to that returned by the&#10;     * {@link #getRawUserInfo() getRawUserInfo} method except that all&#10;     * sequences of escaped octets are <a href=&#34;#decode&#34;>decoded</a>.  </p>&#10;     *&#10;     * @return  The decoded user-information component of this URI,&#10;     *          or {@code null} if the user information is undefined&#10;     "
  ]
  node [
    id 8
    label "public String getAuthority()"
    type "method"
    comment "&#10;     * Returns the decoded authority component of this URI.&#10;     *&#10;     * <p> The string returned by this method is equal to that returned by the&#10;     * {@link #getRawAuthority() getRawAuthority} method except that all&#10;     * sequences of escaped octets are <a href=&#34;#decode&#34;>decoded</a>.  </p>&#10;     *&#10;     * @return  The decoded authority component of this URI,&#10;     *          or {@code null} if the authority is undefined&#10;     "
  ]
  node [
    id 9
    label "public int getPort()"
    type "method"
    comment "&#10;     * Returns the port number of this URI.&#10;     *&#10;     * <p> The port component of a URI, if defined, is a non-negative&#10;     * integer. </p>&#10;     *&#10;     * @return  The port component of this URI,&#10;     *          or {@code -1} if the port is undefined&#10;     "
  ]
  node [
    id 10
    label "public int getDefaultPort()"
    type "method"
    comment "&#10;     * Gets the default port number of the protocol associated&#10;     * with this {@code URL}. If the URL scheme or the URLStreamHandler&#10;     * for the URL do not define a default port number,&#10;     * then -1 is returned.&#10;     *&#10;     * @return  the port number&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 11
    label "public String getProtocol()"
    type "method"
    comment "&#10;     * Gets the protocol name of this {@code URL}.&#10;     *&#10;     * @return  the protocol of this {@code URL}.&#10;     "
  ]
  node [
    id 12
    label "public String getHost()"
    type "method"
    comment "&#10;     * Returns the host component of this URI.&#10;     *&#10;     * <p> The host component of a URI, if defined, will have one of the&#10;     * following forms: </p>&#10;     *&#10;     * <ul>&#10;     *&#10;     *   <li><p> A domain name consisting of one or more <i>labels</i>&#10;     *   separated by period characters ({@code '.'}), optionally followed by&#10;     *   a period character.  Each label consists of <i>alphanum</i> characters&#10;     *   as well as hyphen characters ({@code '-'}), though hyphens never&#10;     *   occur as the first or last characters in a label. The rightmost&#10;     *   label of a domain name consisting of two or more labels, begins&#10;     *   with an <i>alpha</i> character. </li>&#10;     *&#10;     *   <li><p> A dotted-quad IPv4 address of the form&#10;     *   <i>digit</i>{@code +.}<i>digit</i>{@code +.}<i>digit</i>{@code +.}<i>digit</i>{@code +},&#10;     *   where no <i>digit</i> sequence is longer than three characters and no&#10;     *   sequence has a value larger than 255. </p></li>&#10;     *&#10;     *   <li><p> An IPv6 address enclosed in square brackets ({@code '['} and&#10;     *   {@code ']'}) and consisting of hexadecimal digits, colon characters&#10;     *   ({@code ':'}), and possibly an embedded IPv4 address.  The full&#10;     *   syntax of IPv6 addresses is specified in <a&#10;     *   href=&#34;http://www.ietf.org/rfc/rfc2373.txt&#34;><i>RFC&#38;nbsp;2373: IPv6&#10;     *   Addressing Architecture</i></a>.  </p></li>&#10;     *&#10;     * </ul>&#10;     *&#10;     * The host component of a URI cannot contain escaped octets, hence this&#10;     * method does not perform any decoding.&#10;     *&#10;     * @return  The host component of this URI,&#10;     *          or {@code null} if the host is undefined&#10;     "
  ]
  node [
    id 13
    label "public String getFile()"
    type "method"
    comment "&#10;     * Gets the file name of this {@code URL}.&#10;     * The returned file portion will be&#10;     * the same as <CODE>getPath()</CODE>, plus the concatenation of&#10;     * the value of <CODE>getQuery()</CODE>, if any. If there is&#10;     * no query portion, this method and <CODE>getPath()</CODE> will&#10;     * return identical results.&#10;     *&#10;     * @return  the file name of this {@code URL},&#10;     * or an empty string if one does not exist&#10;     "
  ]
  node [
    id 14
    label "public String getRef()"
    type "method"
    comment "&#10;     * Gets the anchor (also known as the &#34;reference&#34;) of this&#10;     * {@code URL}.&#10;     *&#10;     * @return  the anchor (also known as the &#34;reference&#34;) of this&#10;     *          {@code URL}, or <CODE>null</CODE> if one does not exist&#10;     "
  ]
  node [
    id 15
    label "public boolean equals(Object obj)"
    type "method"
    comment "&#10;     * Compares this object against the specified object.&#10;     * The result is {@code true} if and only if the argument is not&#10;     * {@code null} and is a {@code Character} object that&#10;     * represents the same {@code char} value as this object.&#10;     *&#10;     * @param   obj   the object to compare with.&#10;     * @return  {@code true} if the objects are the same;&#10;     *          {@code false} otherwise.&#10;     "
  ]
  node [
    id 16
    label "java.util.Map"
    type "class"
    comment "&#10; * An object that maps keys to values.  A map cannot contain duplicate keys;&#10; * each key can map to at most one value.&#10; *&#10; * <p>This interface takes the place of the {@code Dictionary} class, which&#10; * was a totally abstract class rather than an interface.&#10; *&#10; * <p>The {@code Map} interface provides three <i>collection views</i>, which&#10; * allow a map's contents to be viewed as a set of keys, collection of values,&#10; * or set of key-value mappings.  The <i>order</i> of a map is defined as&#10; * the order in which the iterators on the map's collection views return their&#10; * elements.  Some map implementations, like the {@code TreeMap} class, make&#10; * specific guarantees as to their order; others, like the {@code HashMap}&#10; * class, do not.&#10; *&#10; * <p>Note: great care must be exercised if mutable objects are used as map&#10; * keys.  The behavior of a map is not specified if the value of an object is&#10; * changed in a manner that affects {@code equals} comparisons while the&#10; * object is a key in the map.  A special case of this prohibition is that it&#10; * is not permissible for a map to contain itself as a key.  While it is&#10; * permissible for a map to contain itself as a value, extreme caution is&#10; * advised: the {@code equals} and {@code hashCode} methods are no longer&#10; * well defined on such a map.&#10; *&#10; * <p>All general-purpose map implementation classes should provide two&#10; * &#34;standard&#34; constructors: a void (no arguments) constructor which creates an&#10; * empty map, and a constructor with a single argument of type {@code Map},&#10; * which creates a new map with the same key-value mappings as its argument.&#10; * In effect, the latter constructor allows the user to copy any map,&#10; * producing an equivalent map of the desired class.  There is no way to&#10; * enforce this recommendation (as interfaces cannot contain constructors) but&#10; * all of the general-purpose map implementations in the JDK comply.&#10; *&#10; * <p>The &#34;destructive&#34; methods contained in this interface, that is, the&#10; * methods that modify the map on which they operate, are specified to throw&#10; * {@code UnsupportedOperationException} if this map does not support the&#10; * operation.  If this is the case, these methods may, but are not required&#10; * to, throw an {@code UnsupportedOperationException} if the invocation would&#10; * have no effect on the map.  For example, invoking the {@link #putAll(Map)}&#10; * method on an unmodifiable map may, but is not required to, throw the&#10; * exception if the map whose mappings are to be &#34;superimposed&#34; is empty.&#10; *&#10; * <p>Some map implementations have restrictions on the keys and values they&#10; * may contain.  For example, some implementations prohibit null keys and&#10; * values, and some have restrictions on the types of their keys.  Attempting&#10; * to insert an ineligible key or value throws an unchecked exception,&#10; * typically {@code NullPointerException} or {@code ClassCastException}.&#10; * Attempting to query the presence of an ineligible key or value may throw an&#10; * exception, or it may simply return false; some implementations will exhibit&#10; * the former behavior and some will exhibit the latter.  More generally,&#10; * attempting an operation on an ineligible key or value whose completion&#10; * would not result in the insertion of an ineligible element into the map may&#10; * throw an exception or it may succeed, at the option of the implementation.&#10; * Such exceptions are marked as &#34;optional&#34; in the specification for this&#10; * interface.&#10; *&#10; * <p>Many methods in Collections Framework interfaces are defined&#10; * in terms of the {@link Object#equals(Object) equals} method.  For&#10; * example, the specification for the {@link #containsKey(Object)&#10; * containsKey(Object key)} method says: &#34;returns {@code true} if and&#10; * only if this map contains a mapping for a key {@code k} such that&#10; * {@code (key==null ? k==null : key.equals(k))}.&#34; This specification should&#10; * <i>not</i> be construed to imply that invoking {@code Map.containsKey}&#10; * with a non-null argument {@code key} will cause {@code key.equals(k)} to&#10; * be invoked for any key {@code k}.  Implementations are free to&#10; * implement optimizations whereby the {@code equals} invocation is avoided,&#10; * for example, by first comparing the hash codes of the two keys.  (The&#10; * {@link Object#hashCode()} specification guarantees that two objects with&#10; * unequal hash codes cannot be equal.)  More generally, implementations of&#10; * the various Collections Framework interfaces are free to take advantage of&#10; * the specified behavior of underlying {@link Object} methods wherever the&#10; * implementor deems it appropriate.&#10; *&#10; * <p>Some map operations which perform recursive traversal of the map may fail&#10; * with an exception for self-referential instances where the map directly or&#10; * indirectly contains itself. This includes the {@code clone()},&#10; * {@code equals()}, {@code hashCode()} and {@code toString()} methods.&#10; * Implementations may optionally handle the self-referential scenario, however&#10; * most current implementations do not do so.&#10; *&#10; * <h2><a id=&#34;unmodifiable&#34;>Unmodifiable Maps</a></h2>&#10; * <p>The {@link Map#of() Map.of},&#10; * {@link Map#ofEntries(Map.Entry...) Map.ofEntries}, and&#10; * {@link Map#copyOf Map.copyOf}&#10; * static factory methods provide a convenient way to create unmodifiable maps.&#10; * The {@code Map}&#10; * instances created by these methods have the following characteristics:&#10; *&#10; * <ul>&#10; * <li>They are <a href=&#34;Collection.html#unmodifiable&#34;><i>unmodifiable</i></a>. Keys and values&#10; * cannot be added, removed, or updated. Calling any mutator method on the Map&#10; * will always cause {@code UnsupportedOperationException} to be thrown.&#10; * However, if the contained keys or values are themselves mutable, this may cause the&#10; * Map to behave inconsistently or its contents to appear to change.&#10; * <li>They disallow {@code null} keys and values. Attempts to create them with&#10; * {@code null} keys or values result in {@code NullPointerException}.&#10; * <li>They are serializable if all keys and values are serializable.&#10; * <li>They reject duplicate keys at creation time. Duplicate keys&#10; * passed to a static factory method result in {@code IllegalArgumentException}.&#10; * <li>The iteration order of mappings is unspecified and is subject to change.&#10; * <li>They are <a href=&#34;../lang/doc-files/ValueBased.html&#34;>value-based</a>.&#10; * Programmers should treat instances that are {@linkplain #equals(Object) equal}&#10; * as interchangeable and should not use them for synchronization, or&#10; * unpredictable behavior may occur. For example, in a future release,&#10; * synchronization may fail. Callers should make no assumptions&#10; * about the identity of the returned instances. Factories are free to&#10; * create new instances or reuse existing ones.&#10; * <li>They are serialized as specified on the&#10; * <a href=&#34;{@docRoot}/serialized-form.html#java.util.CollSer&#34;>Serialized Form</a>&#10; * page.&#10; * </ul>&#10; *&#10; * <p>This interface is a member of the&#10; * <a href=&#34;{@docRoot}/java.base/java/util/package-summary.html#CollectionsFramework&#34;>&#10; * Java Collections Framework</a>.&#10; *&#10; * @param <K> the type of keys maintained by this map&#10; * @param <V> the type of mapped values&#10; *&#10; * @author  Josh Bloch&#10; * @see HashMap&#10; * @see TreeMap&#10; * @see Hashtable&#10; * @see SortedMap&#10; * @see Collection&#10; * @see Set&#10; * @since 1.2&#10; "
  ]
  node [
    id 17
    label " int size()"
    type "method"
    comment "&#10;     * Returns the number of key-value mappings in this map.  If the&#10;     * map contains more than {@code Integer.MAX_VALUE} elements, returns&#10;     * {@code Integer.MAX_VALUE}.&#10;     *&#10;     * @return the number of key-value mappings in this map&#10;     "
  ]
  node [
    id 18
    label " boolean isEmpty()"
    type "method"
    comment "&#10;     * Returns {@code true} if this map contains no key-value mappings.&#10;     *&#10;     * @return {@code true} if this map contains no key-value mappings&#10;     "
  ]
  node [
    id 19
    label " boolean containsKey(Object key)"
    type "method"
    comment "&#10;     * Returns {@code true} if this map contains a mapping for the specified&#10;     * key.  More formally, returns {@code true} if and only if&#10;     * this map contains a mapping for a key {@code k} such that&#10;     * {@code Objects.equals(key, k)}.  (There can be&#10;     * at most one such mapping.)&#10;     *&#10;     * @param key key whose presence in this map is to be tested&#10;     * @return {@code true} if this map contains a mapping for the specified&#10;     *         key&#10;     * @throws ClassCastException if the key is of an inappropriate type for&#10;     *         this map&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified key is null and this map&#10;     *         does not permit null keys&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 20
    label " boolean containsValue(Object value)"
    type "method"
    comment "&#10;     * Returns {@code true} if this map maps one or more keys to the&#10;     * specified value.  More formally, returns {@code true} if and only if&#10;     * this map contains at least one mapping to a value {@code v} such that&#10;     * {@code Objects.equals(value, v)}.  This operation&#10;     * will probably require time linear in the map size for most&#10;     * implementations of the {@code Map} interface.&#10;     *&#10;     * @param value value whose presence in this map is to be tested&#10;     * @return {@code true} if this map maps one or more keys to the&#10;     *         specified value&#10;     * @throws ClassCastException if the value is of an inappropriate type for&#10;     *         this map&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified value is null and this&#10;     *         map does not permit null values&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 21
    label " V get(Object key)"
    type "method"
    comment "&#10;     * Returns the value to which the specified key is mapped,&#10;     * or {@code null} if this map contains no mapping for the key.&#10;     *&#10;     * <p>More formally, if this map contains a mapping from a key&#10;     * {@code k} to a value {@code v} such that&#10;     * {@code Objects.equals(key, k)},&#10;     * then this method returns {@code v}; otherwise&#10;     * it returns {@code null}.  (There can be at most one such mapping.)&#10;     *&#10;     * <p>If this map permits null values, then a return value of&#10;     * {@code null} does not <i>necessarily</i> indicate that the map&#10;     * contains no mapping for the key; it's also possible that the map&#10;     * explicitly maps the key to {@code null}.  The {@link #containsKey&#10;     * containsKey} operation may be used to distinguish these two cases.&#10;     *&#10;     * @param key the key whose associated value is to be returned&#10;     * @return the value to which the specified key is mapped, or&#10;     *         {@code null} if this map contains no mapping for the key&#10;     * @throws ClassCastException if the key is of an inappropriate type for&#10;     *         this map&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified key is null and this map&#10;     *         does not permit null keys&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 22
    label "containsKeycontainsKey"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 23
    label " V put(K key, V value)"
    type "method"
    comment "&#10;     * Associates the specified value with the specified key in this map&#10;     * (optional operation).  If the map previously contained a mapping for&#10;     * the key, the old value is replaced by the specified value.  (A map&#10;     * {@code m} is said to contain a mapping for a key {@code k} if and only&#10;     * if {@link #containsKey(Object) m.containsKey(k)} would return&#10;     * {@code true}.)&#10;     *&#10;     * @param key key with which the specified value is to be associated&#10;     * @param value value to be associated with the specified key&#10;     * @return the previous value associated with {@code key}, or&#10;     *         {@code null} if there was no mapping for {@code key}.&#10;     *         (A {@code null} return can also indicate that the map&#10;     *         previously associated {@code null} with {@code key},&#10;     *         if the implementation supports {@code null} values.)&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     * @throws NullPointerException if the specified key or value is null&#10;     *         and this map does not permit null keys or values&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     "
  ]
  node [
    id 24
    label "containsKey(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 25
    label " V remove(Object key)"
    type "method"
    comment "&#10;     * Removes the mapping for a key from this map if it is present&#10;     * (optional operation).   More formally, if this map contains a mapping&#10;     * from key {@code k} to value {@code v} such that&#10;     * {@code Objects.equals(key, k)}, that mapping&#10;     * is removed.  (The map can contain at most one such mapping.)&#10;     *&#10;     * <p>Returns the value to which this map previously associated the key,&#10;     * or {@code null} if the map contained no mapping for the key.&#10;     *&#10;     * <p>If this map permits null values, then a return value of&#10;     * {@code null} does not <i>necessarily</i> indicate that the map&#10;     * contained no mapping for the key; it's also possible that the map&#10;     * explicitly mapped the key to {@code null}.&#10;     *&#10;     * <p>The map will not contain a mapping for the specified key once the&#10;     * call returns.&#10;     *&#10;     * @param key key whose mapping is to be removed from the map&#10;     * @return the previous value associated with {@code key}, or&#10;     *         {@code null} if there was no mapping for {@code key}.&#10;     * @throws UnsupportedOperationException if the {@code remove} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the key is of an inappropriate type for&#10;     *         this map&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified key is null and this&#10;     *         map does not permit null keys&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 26
    label " void putAll(Map<? extends K, ? extends V> m)"
    type "method"
    comment "&#10;     * Copies all of the mappings from the specified map to this map&#10;     * (optional operation).  The effect of this call is equivalent to that&#10;     * of calling {@link #put(Object,Object) put(k, v)} on this map once&#10;     * for each mapping from key {@code k} to value {@code v} in the&#10;     * specified map.  The behavior of this operation is undefined if the&#10;     * specified map is modified while the operation is in progress.&#10;     *&#10;     * @param m mappings to be stored in this map&#10;     * @throws UnsupportedOperationException if the {@code putAll} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the class of a key or value in the&#10;     *         specified map prevents it from being stored in this map&#10;     * @throws NullPointerException if the specified map is null, or if&#10;     *         this map does not permit null keys or values, and the&#10;     *         specified map contains null keys or values&#10;     * @throws IllegalArgumentException if some property of a key or value in&#10;     *         the specified map prevents it from being stored in this map&#10;     "
  ]
  node [
    id 27
    label "put(Object"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 28
    label " void clear()"
    type "method"
    comment "&#10;     * Removes all of the mappings from this map (optional operation).&#10;     * The map will be empty after this call returns.&#10;     *&#10;     * @throws UnsupportedOperationException if the {@code clear} operation&#10;     *         is not supported by this map&#10;     "
  ]
  node [
    id 29
    label " Set<K> keySet()"
    type "method"
    comment "&#10;     * Returns a {@link Set} view of the keys contained in this map.&#10;     * The set is backed by the map, so changes to the map are&#10;     * reflected in the set, and vice-versa.  If the map is modified&#10;     * while an iteration over the set is in progress (except through&#10;     * the iterator's own {@code remove} operation), the results of&#10;     * the iteration are undefined.  The set supports element removal,&#10;     * which removes the corresponding mapping from the map, via the&#10;     * {@code Iterator.remove}, {@code Set.remove},&#10;     * {@code removeAll}, {@code retainAll}, and {@code clear}&#10;     * operations.  It does not support the {@code add} or {@code addAll}&#10;     * operations.&#10;     *&#10;     * @return a set view of the keys contained in this map&#10;     "
  ]
  node [
    id 30
    label "Set"
  ]
  node [
    id 31
    label " Collection<V> values()"
    type "method"
    comment "&#10;     * Returns a {@link Collection} view of the values contained in this map.&#10;     * The collection is backed by the map, so changes to the map are&#10;     * reflected in the collection, and vice-versa.  If the map is&#10;     * modified while an iteration over the collection is in progress&#10;     * (except through the iterator's own {@code remove} operation),&#10;     * the results of the iteration are undefined.  The collection&#10;     * supports element removal, which removes the corresponding&#10;     * mapping from the map, via the {@code Iterator.remove},&#10;     * {@code Collection.remove}, {@code removeAll},&#10;     * {@code retainAll} and {@code clear} operations.  It does not&#10;     * support the {@code add} or {@code addAll} operations.&#10;     *&#10;     * @return a collection view of the values contained in this map&#10;     "
  ]
  node [
    id 32
    label "Collection"
  ]
  node [
    id 33
    label " Set<Map.Entry<K, V>> entrySet()"
    type "method"
    comment "&#10;     * Returns a {@link Set} view of the mappings contained in this map.&#10;     * The set is backed by the map, so changes to the map are&#10;     * reflected in the set, and vice-versa.  If the map is modified&#10;     * while an iteration over the set is in progress (except through&#10;     * the iterator's own {@code remove} operation, or through the&#10;     * {@code setValue} operation on a map entry returned by the&#10;     * iterator) the results of the iteration are undefined.  The set&#10;     * supports element removal, which removes the corresponding&#10;     * mapping from the map, via the {@code Iterator.remove},&#10;     * {@code Set.remove}, {@code removeAll}, {@code retainAll} and&#10;     * {@code clear} operations.  It does not support the&#10;     * {@code add} or {@code addAll} operations.&#10;     *&#10;     * @return a set view of the mappings contained in this map&#10;     "
  ]
  node [
    id 34
    label " boolean equals(Object o)"
    type "method"
    comment "&#10;     * Compares the specified object with this map for equality.  Returns&#10;     * {@code true} if the given object is also a map and the two maps&#10;     * represent the same mappings.  More formally, two maps {@code m1} and&#10;     * {@code m2} represent the same mappings if&#10;     * {@code m1.entrySet().equals(m2.entrySet())}.  This ensures that the&#10;     * {@code equals} method works properly across different implementations&#10;     * of the {@code Map} interface.&#10;     *&#10;     * @param o object to be compared for equality with this map&#10;     * @return {@code true} if the specified object is equal to this map&#10;     "
  ]
  node [
    id 35
    label " int hashCode()"
    type "method"
    comment "&#10;     * Returns the hash code value for this map.  The hash code of a map is&#10;     * defined to be the sum of the hash codes of each entry in the map's&#10;     * {@code entrySet()} view.  This ensures that {@code m1.equals(m2)}&#10;     * implies that {@code m1.hashCode()==m2.hashCode()} for any two maps&#10;     * {@code m1} and {@code m2}, as required by the general contract of&#10;     * {@link Object#hashCode}.&#10;     *&#10;     * @return the hash code value for this map&#10;     * @see Map.Entry#hashCode()&#10;     * @see Object#equals(Object)&#10;     * @see #equals(Object)&#10;     "
  ]
  node [
    id 36
    label "hashCode"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 37
    label " V getOrDefault(Object key, V defaultValue)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implNote This implementation assumes that the ConcurrentMap cannot&#10;     * contain null values and {@code get()} returning null unambiguously means&#10;     * the key is absent. Implementations which support null values&#10;     * <strong>must</strong> override this default implementation.&#10;     *&#10;     * @throws ClassCastException {@inheritDoc}&#10;     * @throws NullPointerException {@inheritDoc}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 38
    label " void forEach(BiConsumer<? super K, ? super V> action)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec The default implementation is equivalent to, for this&#10;     * {@code map}:&#10;     * <pre> {@code&#10;     * for (Map.Entry<K,V> entry : map.entrySet()) {&#10;     *   action.accept(entry.getKey(), entry.getValue());&#10;     * }}</pre>&#10;     *&#10;     * @implNote The default implementation assumes that&#10;     * {@code IllegalStateException} thrown by {@code getKey()} or&#10;     * {@code getValue()} indicates that the entry has been removed and cannot&#10;     * be processed. Operation continues for subsequent entries.&#10;     *&#10;     * @throws NullPointerException {@inheritDoc}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 39
    label " void replaceAll(BiFunction<? super K, ? super V, ? extends V> function)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * <p>The default implementation is equivalent to, for this {@code map}:&#10;     * <pre> {@code&#10;     * for (Map.Entry<K,V> entry : map.entrySet()) {&#10;     *   K k;&#10;     *   V v;&#10;     *   do {&#10;     *     k = entry.getKey();&#10;     *     v = entry.getValue();&#10;     *   } while (!map.replace(k, v, function.apply(k, v)));&#10;     * }}</pre>&#10;     *&#10;     * The default implementation may retry these steps when multiple&#10;     * threads attempt updates including potentially calling the function&#10;     * repeatedly for a given key.&#10;     *&#10;     * <p>This implementation assumes that the ConcurrentMap cannot contain null&#10;     * values and {@code get()} returning null unambiguously means the key is&#10;     * absent. Implementations which support null values <strong>must</strong>&#10;     * override this default implementation.&#10;     *&#10;     * @throws UnsupportedOperationException {@inheritDoc}&#10;     * @throws NullPointerException {@inheritDoc}&#10;     * @throws ClassCastException {@inheritDoc}&#10;     * @throws IllegalArgumentException {@inheritDoc}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 40
    label " V putIfAbsent(K key, V value)"
    type "method"
    comment "&#10;     * If the specified key is not already associated&#10;     * with a value, associates it with the given value.&#10;     * This is equivalent to, for this {@code map}:&#10;     * <pre> {@code&#10;     * if (!map.containsKey(key))&#10;     *   return map.put(key, value);&#10;     * else&#10;     *   return map.get(key);}</pre>&#10;     *&#10;     * except that the action is performed atomically.&#10;     *&#10;     * @implNote This implementation intentionally re-abstracts the&#10;     * inappropriate default provided in {@code Map}.&#10;     *&#10;     * @param key key with which the specified value is to be associated&#10;     * @param value value to be associated with the specified key&#10;     * @return the previous value associated with the specified key, or&#10;     *         {@code null} if there was no mapping for the key.&#10;     *         (A {@code null} return can also indicate that the map&#10;     *         previously associated {@code null} with the key,&#10;     *         if the implementation supports null values.)&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     * @throws NullPointerException if the specified key or value is null,&#10;     *         and this map does not permit null keys or values&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     "
  ]
  node [
    id 41
    label " boolean remove(Object key, Object value)"
    type "method"
    comment "&#10;     * Removes the entry for a key only if currently mapped to a given value.&#10;     * This is equivalent to, for this {@code map}:&#10;     * <pre> {@code&#10;     * if (map.containsKey(key)&#10;     *     &#38;&#38; Objects.equals(map.get(key), value)) {&#10;     *   map.remove(key);&#10;     *   return true;&#10;     * } else {&#10;     *   return false;&#10;     * }}</pre>&#10;     *&#10;     * except that the action is performed atomically.&#10;     *&#10;     * @implNote This implementation intentionally re-abstracts the&#10;     * inappropriate default provided in {@code Map}.&#10;     *&#10;     * @param key key with which the specified value is associated&#10;     * @param value value expected to be associated with the specified key&#10;     * @return {@code true} if the value was removed&#10;     * @throws UnsupportedOperationException if the {@code remove} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the key or value is of an inappropriate&#10;     *         type for this map&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified key or value is null,&#10;     *         and this map does not permit null keys or values&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 42
    label " boolean replace(K key, V oldValue, V newValue)"
    type "method"
    comment "&#10;     * Replaces the entry for a key only if currently mapped to a given value.&#10;     * This is equivalent to, for this {@code map}:&#10;     * <pre> {@code&#10;     * if (map.containsKey(key)&#10;     *     &#38;&#38; Objects.equals(map.get(key), oldValue)) {&#10;     *   map.put(key, newValue);&#10;     *   return true;&#10;     * } else {&#10;     *   return false;&#10;     * }}</pre>&#10;     *&#10;     * except that the action is performed atomically.&#10;     *&#10;     * @implNote This implementation intentionally re-abstracts the&#10;     * inappropriate default provided in {@code Map}.&#10;     *&#10;     * @param key key with which the specified value is associated&#10;     * @param oldValue value expected to be associated with the specified key&#10;     * @param newValue value to be associated with the specified key&#10;     * @return {@code true} if the value was replaced&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the class of a specified key or value&#10;     *         prevents it from being stored in this map&#10;     * @throws NullPointerException if a specified key or value is null,&#10;     *         and this map does not permit null keys or values&#10;     * @throws IllegalArgumentException if some property of a specified key&#10;     *         or value prevents it from being stored in this map&#10;     "
  ]
  node [
    id 43
    label " V replace(K key, V value)"
    type "method"
    comment "&#10;     * Replaces the entry for a key only if currently mapped to some value.&#10;     * This is equivalent to, for this {@code map}:&#10;     * <pre> {@code&#10;     * if (map.containsKey(key))&#10;     *   return map.put(key, value);&#10;     * else&#10;     *   return null;}</pre>&#10;     *&#10;     * except that the action is performed atomically.&#10;     *&#10;     * @implNote This implementation intentionally re-abstracts the&#10;     * inappropriate default provided in {@code Map}.&#10;     *&#10;     * @param key key with which the specified value is associated&#10;     * @param value value to be associated with the specified key&#10;     * @return the previous value associated with the specified key, or&#10;     *         {@code null} if there was no mapping for the key.&#10;     *         (A {@code null} return can also indicate that the map&#10;     *         previously associated {@code null} with the key,&#10;     *         if the implementation supports null values.)&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     * @throws NullPointerException if the specified key or value is null,&#10;     *         and this map does not permit null keys or values&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     "
  ]
  node [
    id 44
    label " V computeIfAbsent(K key, Function<? super K, ? extends V> mappingFunction)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * The default implementation is equivalent to the following steps for this&#10;     * {@code map}:&#10;     *&#10;     * <pre> {@code&#10;     * V oldValue, newValue;&#10;     * return ((oldValue = map.get(key)) == null&#10;     *         &#38;&#38; (newValue = mappingFunction.apply(key)) != null&#10;     *         &#38;&#38; (oldValue = map.putIfAbsent(key, newValue)) == null)&#10;     *   ? newValue&#10;     *   : oldValue;}</pre>&#10;     *&#10;     * <p>This implementation assumes that the ConcurrentMap cannot contain null&#10;     * values and {@code get()} returning null unambiguously means the key is&#10;     * absent. Implementations which support null values <strong>must</strong>&#10;     * override this default implementation.&#10;     *&#10;     * @throws UnsupportedOperationException {@inheritDoc}&#10;     * @throws ClassCastException {@inheritDoc}&#10;     * @throws NullPointerException {@inheritDoc}&#10;     * @throws IllegalArgumentException {@inheritDoc}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 45
    label "java.util.concurrent.ConcurrentMap"
    type "class"
    comment "&#10; * A {@link Map} providing thread safety and atomicity guarantees.&#10; *&#10; * <p>To maintain the specified guarantees, default implementations of&#10; * methods including {@link #putIfAbsent} inherited from {@link Map}&#10; * must be overridden by implementations of this interface. Similarly,&#10; * implementations of the collections returned by methods {@link&#10; * #keySet}, {@link #values}, and {@link #entrySet} must override&#10; * methods such as {@code removeIf} when necessary to&#10; * preserve atomicity guarantees.&#10; *&#10; * <p>Memory consistency effects: As with other concurrent&#10; * collections, actions in a thread prior to placing an object into a&#10; * {@code ConcurrentMap} as a key or value&#10; * <a href=&#34;package-summary.html#MemoryVisibility&#34;><i>happen-before</i></a>&#10; * actions subsequent to the access or removal of that object from&#10; * the {@code ConcurrentMap} in another thread.&#10; *&#10; * <p>This interface is a member of the&#10; * <a href=&#34;{@docRoot}/java.base/java/util/package-summary.html#CollectionsFramework&#34;>&#10; * Java Collections Framework</a>.&#10; *&#10; * @since 1.5&#10; * @author Doug Lea&#10; * @param <K> the type of keys maintained by this map&#10; * @param <V> the type of mapped values&#10; "
  ]
  node [
    id 46
    label " V computeIfPresent(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction)"
    type "method"
    comment "&#10;     * If the value for the specified key is present and non-null, attempts to&#10;     * compute a new mapping given the key and its current mapped value.&#10;     *&#10;     * <p>If the remapping function returns {@code null}, the mapping is removed.&#10;     * If the remapping function itself throws an (unchecked) exception, the&#10;     * exception is rethrown, and the current mapping is left unchanged.&#10;     *&#10;     * <p>The remapping function should not modify this map during computation.&#10;     *&#10;     * @implSpec&#10;     * The default implementation is equivalent to performing the following&#10;     * steps for this {@code map}, then returning the current value or&#10;     * {@code null} if now absent:&#10;     *&#10;     * <pre> {@code&#10;     * if (map.get(key) != null) {&#10;     *     V oldValue = map.get(key);&#10;     *     V newValue = remappingFunction.apply(key, oldValue);&#10;     *     if (newValue != null)&#10;     *         map.put(key, newValue);&#10;     *     else&#10;     *         map.remove(key);&#10;     * }&#10;     * }</pre>&#10;     *&#10;     * <p>The default implementation makes no guarantees about detecting if the&#10;     * remapping function modifies this map during computation and, if&#10;     * appropriate, reporting an error. Non-concurrent implementations should&#10;     * override this method and, on a best-effort basis, throw a&#10;     * {@code ConcurrentModificationException} if it is detected that the&#10;     * remapping function modifies this map during computation. Concurrent&#10;     * implementations should override this method and, on a best-effort basis,&#10;     * throw an {@code IllegalStateException} if it is detected that the&#10;     * remapping function modifies this map during computation and as a result&#10;     * computation would never complete.&#10;     *&#10;     * <p>The default implementation makes no guarantees about synchronization&#10;     * or atomicity properties of this method. Any implementation providing&#10;     * atomicity guarantees must override this method and document its&#10;     * concurrency properties. In particular, all implementations of&#10;     * subinterface {@link java.util.concurrent.ConcurrentMap} must document&#10;     * whether the remapping function is applied once atomically only if the&#10;     * value is not present.&#10;     *&#10;     * @param key key with which the specified value is to be associated&#10;     * @param remappingFunction the remapping function to compute a value&#10;     * @return the new value associated with the specified key, or null if none&#10;     * @throws NullPointerException if the specified key is null and&#10;     *         this map does not support null keys, or the&#10;     *         remappingFunction is null&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 47
    label " V compute(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction)"
    type "method"
    comment "&#10;     * Attempts to compute a mapping for the specified key and its current&#10;     * mapped value (or {@code null} if there is no current mapping). For&#10;     * example, to either create or append a {@code String} msg to a value&#10;     * mapping:&#10;     *&#10;     * <pre> {@code&#10;     * map.compute(key, (k, v) -> (v == null) ? msg : v.concat(msg))}</pre>&#10;     * (Method {@link #merge merge()} is often simpler to use for such purposes.)&#10;     *&#10;     * <p>If the remapping function returns {@code null}, the mapping is removed&#10;     * (or remains absent if initially absent).  If the remapping function&#10;     * itself throws an (unchecked) exception, the exception is rethrown, and&#10;     * the current mapping is left unchanged.&#10;     *&#10;     * <p>The remapping function should not modify this map during computation.&#10;     *&#10;     * @implSpec&#10;     * The default implementation is equivalent to performing the following&#10;     * steps for this {@code map}:&#10;     *&#10;     * <pre> {@code&#10;     * V oldValue = map.get(key);&#10;     * V newValue = remappingFunction.apply(key, oldValue);&#10;     * if (newValue != null) {&#10;     *     map.put(key, newValue);&#10;     * } else if (oldValue != null || map.containsKey(key)) {&#10;     *     map.remove(key);&#10;     * }&#10;     * return newValue;&#10;     * }</pre>&#10;     *&#10;     * <p>The default implementation makes no guarantees about detecting if the&#10;     * remapping function modifies this map during computation and, if&#10;     * appropriate, reporting an error. Non-concurrent implementations should&#10;     * override this method and, on a best-effort basis, throw a&#10;     * {@code ConcurrentModificationException} if it is detected that the&#10;     * remapping function modifies this map during computation. Concurrent&#10;     * implementations should override this method and, on a best-effort basis,&#10;     * throw an {@code IllegalStateException} if it is detected that the&#10;     * remapping function modifies this map during computation and as a result&#10;     * computation would never complete.&#10;     *&#10;     * <p>The default implementation makes no guarantees about synchronization&#10;     * or atomicity properties of this method. Any implementation providing&#10;     * atomicity guarantees must override this method and document its&#10;     * concurrency properties. In particular, all implementations of&#10;     * subinterface {@link java.util.concurrent.ConcurrentMap} must document&#10;     * whether the remapping function is applied once atomically only if the&#10;     * value is not present.&#10;     *&#10;     * @param key key with which the specified value is to be associated&#10;     * @param remappingFunction the remapping function to compute a value&#10;     * @return the new value associated with the specified key, or null if none&#10;     * @throws NullPointerException if the specified key is null and&#10;     *         this map does not support null keys, or the&#10;     *         remappingFunction is null&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 48
    label " V merge(K key, V value, BiFunction<? super V, ? super V, ? extends V> remappingFunction)"
    type "method"
    comment "&#10;     * If the specified key is not already associated with a value or is&#10;     * associated with null, associates it with the given non-null value.&#10;     * Otherwise, replaces the associated value with the results of the given&#10;     * remapping function, or removes if the result is {@code null}. This&#10;     * method may be of use when combining multiple mapped values for a key.&#10;     * For example, to either create or append a {@code String msg} to a&#10;     * value mapping:&#10;     *&#10;     * <pre> {@code&#10;     * map.merge(key, msg, String::concat)&#10;     * }</pre>&#10;     *&#10;     * <p>If the remapping function returns {@code null}, the mapping is removed.&#10;     * If the remapping function itself throws an (unchecked) exception, the&#10;     * exception is rethrown, and the current mapping is left unchanged.&#10;     *&#10;     * <p>The remapping function should not modify this map during computation.&#10;     *&#10;     * @implSpec&#10;     * The default implementation is equivalent to performing the following&#10;     * steps for this {@code map}, then returning the current value or&#10;     * {@code null} if absent:&#10;     *&#10;     * <pre> {@code&#10;     * V oldValue = map.get(key);&#10;     * V newValue = (oldValue == null) ? value :&#10;     *              remappingFunction.apply(oldValue, value);&#10;     * if (newValue == null)&#10;     *     map.remove(key);&#10;     * else&#10;     *     map.put(key, newValue);&#10;     * }</pre>&#10;     *&#10;     * <p>The default implementation makes no guarantees about detecting if the&#10;     * remapping function modifies this map during computation and, if&#10;     * appropriate, reporting an error. Non-concurrent implementations should&#10;     * override this method and, on a best-effort basis, throw a&#10;     * {@code ConcurrentModificationException} if it is detected that the&#10;     * remapping function modifies this map during computation. Concurrent&#10;     * implementations should override this method and, on a best-effort basis,&#10;     * throw an {@code IllegalStateException} if it is detected that the&#10;     * remapping function modifies this map during computation and as a result&#10;     * computation would never complete.&#10;     *&#10;     * <p>The default implementation makes no guarantees about synchronization&#10;     * or atomicity properties of this method. Any implementation providing&#10;     * atomicity guarantees must override this method and document its&#10;     * concurrency properties. In particular, all implementations of&#10;     * subinterface {@link java.util.concurrent.ConcurrentMap} must document&#10;     * whether the remapping function is applied once atomically only if the&#10;     * value is not present.&#10;     *&#10;     * @param key key with which the resulting value is to be associated&#10;     * @param value the non-null value to be merged with the existing value&#10;     *        associated with the key or, if no existing value or a null value&#10;     *        is associated with the key, to be associated with the key&#10;     * @param remappingFunction the remapping function to recompute a value if&#10;     *        present&#10;     * @return the new value associated with the specified key, or null if no&#10;     *         value is associated with the key&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified key is null and this map&#10;     *         does not support null keys or the value or remappingFunction is&#10;     *         null&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 49
    label "merge"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 50
    label " static Map<K, V> of()"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing zero mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @return an empty {@code Map}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 51
    label " static Map<K, V> of(K k1, V v1)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing a single mapping.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the mapping's key&#10;     * @param v1 the mapping's value&#10;     * @return a {@code Map} containing the specified mapping&#10;     * @throws NullPointerException if the key or the value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 52
    label " static Map<K, V> of(K k1, V v1, K k2, V v2)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing two mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if the keys are duplicates&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 53
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing three mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 54
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing four mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 55
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing five mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 56
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing six mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @param k6 the sixth mapping's key&#10;     * @param v6 the sixth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 57
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing seven mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @param k6 the sixth mapping's key&#10;     * @param v6 the sixth mapping's value&#10;     * @param k7 the seventh mapping's key&#10;     * @param v7 the seventh mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 58
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing eight mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @param k6 the sixth mapping's key&#10;     * @param v6 the sixth mapping's value&#10;     * @param k7 the seventh mapping's key&#10;     * @param v7 the seventh mapping's value&#10;     * @param k8 the eighth mapping's key&#10;     * @param v8 the eighth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 59
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing nine mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @param k6 the sixth mapping's key&#10;     * @param v6 the sixth mapping's value&#10;     * @param k7 the seventh mapping's key&#10;     * @param v7 the seventh mapping's value&#10;     * @param k8 the eighth mapping's key&#10;     * @param v8 the eighth mapping's value&#10;     * @param k9 the ninth mapping's key&#10;     * @param v9 the ninth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 60
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9, K k10, V v10)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing ten mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @param k6 the sixth mapping's key&#10;     * @param v6 the sixth mapping's value&#10;     * @param k7 the seventh mapping's key&#10;     * @param v7 the seventh mapping's value&#10;     * @param k8 the eighth mapping's key&#10;     * @param v8 the eighth mapping's value&#10;     * @param k9 the ninth mapping's key&#10;     * @param v9 the ninth mapping's value&#10;     * @param k10 the tenth mapping's key&#10;     * @param v10 the tenth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 61
    label " static Map<K, V> ofEntries(Entry<? extends K, ? extends V>... entries)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing keys and values extracted from the given entries.&#10;     * The entries themselves are not stored in the map.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @apiNote&#10;     * It is convenient to create the map entries using the {@link Map#entry Map.entry()} method.&#10;     * For example,&#10;     *&#10;     * <pre>{@code&#10;     *     import static java.util.Map.entry;&#10;     *&#10;     *     Map<Integer,String> map = Map.ofEntries(&#10;     *         entry(1, &#34;a&#34;),&#10;     *         entry(2, &#34;b&#34;),&#10;     *         entry(3, &#34;c&#34;),&#10;     *         ...&#10;     *         entry(26, &#34;z&#34;));&#10;     * }</pre>&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param entries {@code Map.Entry}s containing the keys and values from which the map is populated&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any entry, key, or value is {@code null}, or if&#10;     *         the {@code entries} array is {@code null}&#10;     *&#10;     * @see Map#entry Map.entry()&#10;     * @since 9&#10;     "
  ]
  node [
    id 62
    label "entry"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 63
    label " static Entry<K, V> entry(K k, V v)"
    type "method"
    comment "&#10;     * Returns an unmodifiable {@link Entry} containing the given key and value.&#10;     * These entries are suitable for populating {@code Map} instances using the&#10;     * {@link Map#ofEntries Map.ofEntries()} method.&#10;     * The {@code Entry} instances created by this method have the following characteristics:&#10;     *&#10;     * <ul>&#10;     * <li>They disallow {@code null} keys and values. Attempts to create them using a {@code null}&#10;     * key or value result in {@code NullPointerException}.&#10;     * <li>They are unmodifiable. Calls to {@link Entry#setValue Entry.setValue()}&#10;     * on a returned {@code Entry} result in {@code UnsupportedOperationException}.&#10;     * <li>They are not serializable.&#10;     * <li>They are <a href=&#34;../lang/doc-files/ValueBased.html&#34;>value-based</a>.&#10;     * Programmers should treat instances that are {@linkplain #equals(Object) equal}&#10;     * as interchangeable and should not use them for synchronization, or&#10;     * unpredictable behavior may occur. For example, in a future release,&#10;     * synchronization may fail. Callers should make no assumptions&#10;     * about the identity of the returned instances. This method is free to&#10;     * create new instances or reuse existing ones.&#10;     * </ul>&#10;     *&#10;     * @apiNote&#10;     * For a serializable {@code Entry}, see {@link AbstractMap.SimpleEntry} or&#10;     * {@link AbstractMap.SimpleImmutableEntry}.&#10;     *&#10;     * @param <K> the key's type&#10;     * @param <V> the value's type&#10;     * @param k the key&#10;     * @param v the value&#10;     * @return an {@code Entry} containing the specified key and value&#10;     * @throws NullPointerException if the key or value is {@code null}&#10;     *&#10;     * @see Map#ofEntries Map.ofEntries()&#10;     * @since 9&#10;     "
  ]
  node [
    id 64
    label "setValue"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 65
    label "Entry"
  ]
  node [
    id 66
    label "AbstractMap.SimpleImmutableEntry"
  ]
  node [
    id 67
    label "AbstractMap.SimpleEntry"
  ]
  node [
    id 68
    label "ofEntries"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 69
    label " static Map<K, V> copyOf(Map<? extends K, ? extends V> map)"
    type "method"
    comment "&#10;     * Returns an <a href=&#34;#unmodifiable&#34;>unmodifiable Map</a> containing the entries&#10;     * of the given Map. The given Map must not be null, and it must not contain any&#10;     * null keys or values. If the given Map is subsequently modified, the returned&#10;     * Map will not reflect such modifications.&#10;     *&#10;     * @implNote&#10;     * If the given Map is an <a href=&#34;#unmodifiable&#34;>unmodifiable Map</a>,&#10;     * calling copyOf will generally not create a copy.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param map a {@code Map} from which entries are drawn, must be non-null&#10;     * @return a {@code Map} containing the entries of the given {@code Map}&#10;     * @throws NullPointerException if map is null, or if it contains any null keys or values&#10;     * @since 10&#10;     "
  ]
  node [
    id 70
    label "java.util.SetSet"
  ]
  node [
    id 71
    label "public synchronized int hashCode()"
    type "method"
    comment "&#10;     * Creates an integer suitable for hash table indexing.<p>&#10;     *&#10;     * The hash code is based upon all the URL components relevant for URL&#10;     * comparison. As such, this operation is a blocking operation.<p>&#10;     *&#10;     * @return  a hash code for this {@code URL}.&#10;     "
  ]
  node [
    id 72
    label "public boolean sameFile(URL other)"
    type "method"
    comment "&#10;     * Compares two URLs, excluding the fragment component.<p>&#10;     *&#10;     * Returns {@code true} if this {@code URL} and the&#10;     * {@code other} argument are equal without taking the&#10;     * fragment component into consideration.&#10;     *&#10;     * @param   other   the {@code URL} to compare against.&#10;     * @return  {@code true} if they reference the same remote object;&#10;     *          {@code false} otherwise.&#10;     "
  ]
  node [
    id 73
    label "public String toString()"
    type "method"
    comment "&#10;     * Returns a {@code String} representation of this URL connection.&#10;     *&#10;     * @return  a string representation of this {@code URLConnection}.&#10;     "
  ]
  node [
    id 74
    label "public String toExternalForm()"
    type "method"
    comment "&#10;     * Constructs a string representation of this {@code URL}. The&#10;     * string is created by calling the {@code toExternalForm}&#10;     * method of the stream protocol handler for this object.&#10;     *&#10;     * @return  a string representation of this object.&#10;     * @see     java.net.URL#URL(java.lang.String, java.lang.String,&#10;     *                  int, java.lang.String)&#10;     * @see     java.net.URLStreamHandler#toExternalForm(java.net.URL)&#10;     "
  ]
  node [
    id 75
    label "public URI toURI() throws URISyntaxException"
    type "method"
    comment "&#10;     * Returns a {@link java.net.URI} equivalent to this URL.&#10;     * This method functions in the same way as {@code new URI (this.toString())}.&#10;     * <p>Note, any URL instance that complies with RFC 2396 can be converted&#10;     * to a URI. However, some URLs that are not strictly in compliance&#10;     * can not be converted to a URI.&#10;     *&#10;     * @exception URISyntaxException if this URL is not formatted strictly according to&#10;     *            to RFC2396 and cannot be converted to a URI.&#10;     *&#10;     * @return    a URI instance equivalent to this URL.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 76
    label "java.net.URI"
    type "class"
    comment ""
  ]
  node [
    id 77
    label "public static URI create(String str)"
    type "method"
    comment "&#10;     * Creates a URI by parsing the given string.&#10;     *&#10;     * <p> This convenience factory method works as if by invoking the {@link&#10;     * #URI(String)} constructor; any {@link URISyntaxException} thrown by the&#10;     * constructor is caught and wrapped in a new {@link&#10;     * IllegalArgumentException} object, which is then thrown.&#10;     *&#10;     * <p> This method is provided for use in situations where it is known that&#10;     * the given string is a legal URI, for example for URI constants declared&#10;     * within in a program, and so it would be considered a programming error&#10;     * for the string not to parse as such.  The constructors, which throw&#10;     * {@link URISyntaxException} directly, should be used situations where a&#10;     * URI is being constructed from user input or from some other source that&#10;     * may be prone to errors.  </p>&#10;     *&#10;     * @param  str   The string to be parsed into a URI&#10;     * @return The new URI&#10;     *&#10;     * @throws  NullPointerException&#10;     *          If {@code str} is {@code null}&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the given string violates RFC&#38;nbsp;2396&#10;     "
  ]
  node [
    id 78
    label "URI(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 79
    label "URISyntaxException"
  ]
  node [
    id 80
    label "IllegalArgumentException"
  ]
  node [
    id 81
    label "public URI parseServerAuthority() throws URISyntaxException"
    type "method"
    comment "&#10;     * Attempts to parse this URI's authority component, if defined, into&#10;     * user-information, host, and port components.&#10;     *&#10;     * <p> If this URI's authority component has already been recognized as&#10;     * being server-based then it will already have been parsed into&#10;     * user-information, host, and port components.  In this case, or if this&#10;     * URI has no authority component, this method simply returns this URI.&#10;     *&#10;     * <p> Otherwise this method attempts once more to parse the authority&#10;     * component into user-information, host, and port components, and throws&#10;     * an exception describing why the authority component could not be parsed&#10;     * in that way.&#10;     *&#10;     * <p> This method is provided because the generic URI syntax specified in&#10;     * <a href=&#34;http://www.ietf.org/rfc/rfc2396.txt&#34;>RFC&#38;nbsp;2396</a>&#10;     * cannot always distinguish a malformed server-based authority from a&#10;     * legitimate registry-based authority.  It must therefore treat some&#10;     * instances of the former as instances of the latter.  The authority&#10;     * component in the URI string {@code &#34;//foo:bar&#34;}, for example, is not a&#10;     * legal server-based authority but it is legal as a registry-based&#10;     * authority.&#10;     *&#10;     * <p> In many common situations, for example when working URIs that are&#10;     * known to be either URNs or URLs, the hierarchical URIs being used will&#10;     * always be server-based.  They therefore must either be parsed as such or&#10;     * treated as an error.  In these cases a statement such as&#10;     *&#10;     * <blockquote>&#10;     * {@code URI }<i>u</i>{@code  = new URI(str).parseServerAuthority();}&#10;     * </blockquote>&#10;     *&#10;     * <p> can be used to ensure that <i>u</i> always refers to a URI that, if&#10;     * it has an authority component, has a server-based authority with proper&#10;     * user-information, host, and port components.  Invoking this method also&#10;     * ensures that if the authority could not be parsed in that way then an&#10;     * appropriate diagnostic message can be issued based upon the exception&#10;     * that is thrown. </p>&#10;     *&#10;     * @return  A URI whose authority field has been parsed&#10;     *          as a server-based authority&#10;     *&#10;     * @throws  URISyntaxException&#10;     *          If the authority component of this URI is defined&#10;     *          but cannot be parsed as a server-based authority&#10;     *          according to RFC&#38;nbsp;2396&#10;     "
  ]
  node [
    id 82
    label "public URI normalize()"
    type "method"
    comment "&#10;     * Normalizes this URI's path.&#10;     *&#10;     * <p> If this URI is opaque, or if its path is already in normal form,&#10;     * then this URI is returned.  Otherwise a new URI is constructed that is&#10;     * identical to this URI except that its path is computed by normalizing&#10;     * this URI's path in a manner consistent with <a&#10;     * href=&#34;http://www.ietf.org/rfc/rfc2396.txt&#34;>RFC&#38;nbsp;2396</a>,&#10;     * section&#38;nbsp;5.2, step&#38;nbsp;6, sub-steps&#38;nbsp;c through&#38;nbsp;f; that is:&#10;     * </p>&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> All {@code &#34;.&#34;} segments are removed. </p></li>&#10;     *&#10;     *   <li><p> If a {@code &#34;..&#34;} segment is preceded by a non-{@code &#34;..&#34;}&#10;     *   segment then both of these segments are removed.  This step is&#10;     *   repeated until it is no longer applicable. </p></li>&#10;     *&#10;     *   <li><p> If the path is relative, and if its first segment contains a&#10;     *   colon character ({@code ':'}), then a {@code &#34;.&#34;} segment is&#10;     *   prepended.  This prevents a relative URI with a path such as&#10;     *   {@code &#34;a:b/c/d&#34;} from later being re-parsed as an opaque URI with a&#10;     *   scheme of {@code &#34;a&#34;} and a scheme-specific part of {@code &#34;b/c/d&#34;}.&#10;     *   <b><i>(Deviation from RFC&#38;nbsp;2396)</i></b> </p></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * <p> A normalized path will begin with one or more {@code &#34;..&#34;} segments&#10;     * if there were insufficient non-{@code &#34;..&#34;} segments preceding them to&#10;     * allow their removal.  A normalized path will begin with a {@code &#34;.&#34;}&#10;     * segment if one was inserted by step 3 above.  Otherwise, a normalized&#10;     * path will not contain any {@code &#34;.&#34;} or {@code &#34;..&#34;} segments. </p>&#10;     *&#10;     * @return  A URI equivalent to this URI,&#10;     *          but whose path is in normal form&#10;     "
  ]
  node [
    id 83
    label "public URI resolve(URI uri)"
    type "method"
    comment "&#10;     * Resolves the given URI against this URI.&#10;     *&#10;     * <p> If the given URI is already absolute, or if this URI is opaque, then&#10;     * the given URI is returned.&#10;     *&#10;     * <p><a name=&#34;resolve-frag&#34;></a> If the given URI's fragment component is&#10;     * defined, its path component is empty, and its scheme, authority, and&#10;     * query components are undefined, then a URI with the given fragment but&#10;     * with all other components equal to those of this URI is returned.  This&#10;     * allows a URI representing a standalone fragment reference, such as&#10;     * {@code &#34;#foo&#34;}, to be usefully resolved against a base URI.&#10;     *&#10;     * <p> Otherwise this method constructs a new hierarchical URI in a manner&#10;     * consistent with <a&#10;     * href=&#34;http://www.ietf.org/rfc/rfc2396.txt&#34;>RFC&#38;nbsp;2396</a>,&#10;     * section&#38;nbsp;5.2; that is: </p>&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> A new URI is constructed with this URI's scheme and the given&#10;     *   URI's query and fragment components. </p></li>&#10;     *&#10;     *   <li><p> If the given URI has an authority component then the new URI's&#10;     *   authority and path are taken from the given URI. </p></li>&#10;     *&#10;     *   <li><p> Otherwise the new URI's authority component is copied from&#10;     *   this URI, and its path is computed as follows: </p>&#10;     *&#10;     *   <ol>&#10;     *&#10;     *     <li><p> If the given URI's path is absolute then the new URI's path&#10;     *     is taken from the given URI. </p></li>&#10;     *&#10;     *     <li><p> Otherwise the given URI's path is relative, and so the new&#10;     *     URI's path is computed by resolving the path of the given URI&#10;     *     against the path of this URI.  This is done by concatenating all but&#10;     *     the last segment of this URI's path, if any, with the given URI's&#10;     *     path and then normalizing the result as if by invoking the {@link&#10;     *     #normalize() normalize} method. </p></li>&#10;     *&#10;     *   </ol></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * <p> The result of this method is absolute if, and only if, either this&#10;     * URI is absolute or the given URI is absolute.  </p>&#10;     *&#10;     * @param  uri  The URI to be resolved against this URI&#10;     * @return The resulting URI&#10;     *&#10;     * @throws  NullPointerException&#10;     *          If {@code uri} is {@code null}&#10;     "
  ]
  node [
    id 84
    label "normalize()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 85
    label "public URI resolve(String str)"
    type "method"
    comment "&#10;     * Constructs a new URI by parsing the given string and then resolving it&#10;     * against this URI.&#10;     *&#10;     * <p> This convenience method works as if invoking it were equivalent to&#10;     * evaluating the expression {@link #resolve(java.net.URI)&#10;     * resolve}{@code (URI.}{@link #create(String) create}{@code (str))}. </p>&#10;     *&#10;     * @param  str   The string to be parsed into a URI&#10;     * @return The resulting URI&#10;     *&#10;     * @throws  NullPointerException&#10;     *          If {@code str} is {@code null}&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the given string violates RFC&#38;nbsp;2396&#10;     "
  ]
  node [
    id 86
    label "resolve(java.net.URI)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 87
    label "create(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 88
    label "public URI relativize(URI uri)"
    type "method"
    comment "&#10;     * Relativizes the given URI against this URI.&#10;     *&#10;     * <p> The relativization of the given URI against this URI is computed as&#10;     * follows: </p>&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> If either this URI or the given URI are opaque, or if the&#10;     *   scheme and authority components of the two URIs are not identical, or&#10;     *   if the path of this URI is not a prefix of the path of the given URI,&#10;     *   then the given URI is returned. </p></li>&#10;     *&#10;     *   <li><p> Otherwise a new relative hierarchical URI is constructed with&#10;     *   query and fragment components taken from the given URI and with a path&#10;     *   component computed by removing this URI's path from the beginning of&#10;     *   the given URI's path. </p></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * @param  uri  The URI to be relativized against this URI&#10;     * @return The resulting URI&#10;     *&#10;     * @throws  NullPointerException&#10;     *          If {@code uri} is {@code null}&#10;     "
  ]
  node [
    id 89
    label "public URL toURL() throws MalformedURLException"
    type "method"
    comment "&#10;     * Constructs a URL from this URI.&#10;     *&#10;     * <p> This convenience method works as if invoking it were equivalent to&#10;     * evaluating the expression {@code new URL(this.toString())} after&#10;     * first checking that this URI is absolute. </p>&#10;     *&#10;     * @return  A URL constructed from this URI&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If this URL is not absolute&#10;     *&#10;     * @throws  MalformedURLException&#10;     *          If a protocol handler for the URL could not be found,&#10;     *          or if some other error occurred while constructing the URL&#10;     "
  ]
  node [
    id 90
    label "public String getScheme()"
    type "method"
    comment "&#10;     * Returns the scheme component of this URI.&#10;     *&#10;     * <p> The scheme component of a URI, if defined, only contains characters&#10;     * in the <i>alphanum</i> category and in the string {@code &#34;-.+&#34;}.  A&#10;     * scheme always starts with an <i>alpha</i> character. <p>&#10;     *&#10;     * The scheme component of a URI cannot contain escaped octets, hence this&#10;     * method does not perform any decoding.&#10;     *&#10;     * @return  The scheme component of this URI,&#10;     *          or {@code null} if the scheme is undefined&#10;     "
  ]
  node [
    id 91
    label "public boolean isAbsolute()"
    type "method"
    comment "&#10;     * Tells whether or not this URI is absolute.&#10;     *&#10;     * <p> A URI is absolute if, and only if, it has a scheme component. </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this URI is absolute&#10;     "
  ]
  node [
    id 92
    label "public boolean isOpaque()"
    type "method"
    comment "&#10;     * Tells whether or not this URI is opaque.&#10;     *&#10;     * <p> A URI is opaque if, and only if, it is absolute and its&#10;     * scheme-specific part does not begin with a slash character ('/').&#10;     * An opaque URI has a scheme, a scheme-specific part, and possibly&#10;     * a fragment; all other components are undefined. </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this URI is opaque&#10;     "
  ]
  node [
    id 93
    label "public String getRawSchemeSpecificPart()"
    type "method"
    comment "&#10;     * Returns the raw scheme-specific part of this URI.  The scheme-specific&#10;     * part is never undefined, though it may be empty.&#10;     *&#10;     * <p> The scheme-specific part of a URI only contains legal URI&#10;     * characters. </p>&#10;     *&#10;     * @return  The raw scheme-specific part of this URI&#10;     *          (never {@code null})&#10;     "
  ]
  node [
    id 94
    label "public String getSchemeSpecificPart()"
    type "method"
    comment "&#10;     * Returns the decoded scheme-specific part of this URI.&#10;     *&#10;     * <p> The string returned by this method is equal to that returned by the&#10;     * {@link #getRawSchemeSpecificPart() getRawSchemeSpecificPart} method&#10;     * except that all sequences of escaped octets are <a&#10;     * href=&#34;#decode&#34;>decoded</a>.  </p>&#10;     *&#10;     * @return  The decoded scheme-specific part of this URI&#10;     *          (never {@code null})&#10;     "
  ]
  node [
    id 95
    label "getRawSchemeSpecificPart()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 96
    label "public String getRawAuthority()"
    type "method"
    comment "&#10;     * Returns the raw authority component of this URI.&#10;     *&#10;     * <p> The authority component of a URI, if defined, only contains the&#10;     * commercial-at character ({@code '@'}) and characters in the&#10;     * <i>unreserved</i>, <i>punct</i>, <i>escaped</i>, and <i>other</i>&#10;     * categories.  If the authority is server-based then it is further&#10;     * constrained to have valid user-information, host, and port&#10;     * components. </p>&#10;     *&#10;     * @return  The raw authority component of this URI,&#10;     *          or {@code null} if the authority is undefined&#10;     "
  ]
  node [
    id 97
    label "getRawAuthority()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 98
    label "public String getRawUserInfo()"
    type "method"
    comment "&#10;     * Returns the raw user-information component of this URI.&#10;     *&#10;     * <p> The user-information component of a URI, if defined, only contains&#10;     * characters in the <i>unreserved</i>, <i>punct</i>, <i>escaped</i>, and&#10;     * <i>other</i> categories. </p>&#10;     *&#10;     * @return  The raw user-information component of this URI,&#10;     *          or {@code null} if the user information is undefined&#10;     "
  ]
  node [
    id 99
    label "getRawUserInfo()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 100
    label "public String getRawPath()"
    type "method"
    comment "&#10;     * Returns the raw path component of this URI.&#10;     *&#10;     * <p> The path component of a URI, if defined, only contains the slash&#10;     * character ({@code '/'}), the commercial-at character ({@code '@'}),&#10;     * and characters in the <i>unreserved</i>, <i>punct</i>, <i>escaped</i>,&#10;     * and <i>other</i> categories. </p>&#10;     *&#10;     * @return  The path component of this URI,&#10;     *          or {@code null} if the path is undefined&#10;     "
  ]
  node [
    id 101
    label "getRawPath()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 102
    label "public String getRawQuery()"
    type "method"
    comment "&#10;     * Returns the raw query component of this URI.&#10;     *&#10;     * <p> The query component of a URI, if defined, only contains legal URI&#10;     * characters. </p>&#10;     *&#10;     * @return  The raw query component of this URI,&#10;     *          or {@code null} if the query is undefined&#10;     "
  ]
  node [
    id 103
    label "getRawQuery()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 104
    label "public String getRawFragment()"
    type "method"
    comment "&#10;     * Returns the raw fragment component of this URI.&#10;     *&#10;     * <p> The fragment component of a URI, if defined, only contains legal URI&#10;     * characters. </p>&#10;     *&#10;     * @return  The raw fragment component of this URI,&#10;     *          or {@code null} if the fragment is undefined&#10;     "
  ]
  node [
    id 105
    label "public String getFragment()"
    type "method"
    comment "&#10;     * Returns the decoded fragment component of this URI.&#10;     *&#10;     * <p> The string returned by this method is equal to that returned by the&#10;     * {@link #getRawFragment() getRawFragment} method except that all&#10;     * sequences of escaped octets are <a href=&#34;#decode&#34;>decoded</a>.  </p>&#10;     *&#10;     * @return  The decoded fragment component of this URI,&#10;     *          or {@code null} if the fragment is undefined&#10;     "
  ]
  node [
    id 106
    label "getRawFragment()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 107
    label "public boolean equals(Object ob)"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is equal to another object.&#10;     *&#10;     * <p> Two byte buffers are equal if, and only if,&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> They have the same element type,  </p></li>&#10;     *&#10;     *   <li><p> They have the same number of remaining elements, and&#10;     *   </p></li>&#10;     *&#10;     *   <li><p> The two sequences of remaining elements, considered&#10;     *   independently of their starting positions, are pointwise equal.&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;     *   </p></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * <p> A byte buffer is not equal to any other type of object.  </p>&#10;     *&#10;     * @param  ob  The object to which this buffer is to be compared&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is equal to the&#10;     *           given object&#10;     "
  ]
  node [
    id 108
    label "equals(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 109
    label "java.lang.Object"
    type "class"
    comment "&#10; * Class {@code Object} is the root of the class hierarchy.&#10; * Every class has {@code Object} as a superclass. All objects,&#10; * including arrays, implement the methods of this class.&#10; *&#10; * @see     java.lang.Class&#10; * @since   1.0&#10; "
  ]
  node [
    id 110
    label "public final Class<?> getClass()"
    type "method"
    comment "&#10;     * Returns the runtime class of this {@code Object}. The returned&#10;     * {@code Class} object is the object that is locked by {@code&#10;     * static synchronized} methods of the represented class.&#10;     *&#10;     * <p><b>The actual result type is {@code Class<? extends |X|>}&#10;     * where {@code |X|} is the erasure of the static type of the&#10;     * expression on which {@code getClass} is called.</b> For&#10;     * example, no cast is required in this code fragment:</p>&#10;     *&#10;     * <p>&#10;     * {@code Number n = 0;                             }<br>&#10;     * {@code Class<? extends Number> c = n.getClass(); }&#10;     * </p>&#10;     *&#10;     * @return The {@code Class} object that represents the runtime&#10;     *         class of this object.&#10;     * @jls 15.8.2 Class Literals&#10;     "
  ]
  node [
    id 111
    label "public int hashCode()"
    type "method"
    comment "&#10;     * Returns a hash code for this {@code Character}; equal to the result&#10;     * of invoking {@code charValue()}.&#10;     *&#10;     * @return a hash code value for this {@code Character}&#10;     "
  ]
  node [
    id 112
    label "java.util.HashMap"
  ]
  node [
    id 113
    label " static int identityHashCode(Object obj)"
    type "method"
    comment " package-private "
  ]
  node [
    id 114
    label "private static native int identityHashCodeNative(Object obj)"
    type "method"
    comment "&#10;     * Return the identity hash code when the information in the monitor field&#10;     * is not sufficient.&#10;     "
  ]
  node [
    id 115
    label "protected Object clone() throws CloneNotSupportedException"
    type "method"
    comment "&#10;     * Creates and returns a copy of this object.  The precise meaning&#10;     * of &#34;copy&#34; may depend on the class of the object. The general&#10;     * intent is that, for any object {@code x}, the expression:&#10;     * <blockquote>&#10;     * <pre>&#10;     * x.clone() != x</pre></blockquote>&#10;     * will be true, and that the expression:&#10;     * <blockquote>&#10;     * <pre>&#10;     * x.clone().getClass() == x.getClass()</pre></blockquote>&#10;     * will be {@code true}, but these are not absolute requirements.&#10;     * While it is typically the case that:&#10;     * <blockquote>&#10;     * <pre>&#10;     * x.clone().equals(x)</pre></blockquote>&#10;     * will be {@code true}, this is not an absolute requirement.&#10;     * <p>&#10;     * By convention, the returned object should be obtained by calling&#10;     * {@code super.clone}.  If a class and all of its superclasses (except&#10;     * {@code Object}) obey this convention, it will be the case that&#10;     * {@code x.clone().getClass() == x.getClass()}.&#10;     * <p>&#10;     * By convention, the object returned by this method should be independent&#10;     * of this object (which is being cloned).  To achieve this independence,&#10;     * it may be necessary to modify one or more fields of the object returned&#10;     * by {@code super.clone} before returning it.  Typically, this means&#10;     * copying any mutable objects that comprise the internal &#34;deep structure&#34;&#10;     * of the object being cloned and replacing the references to these&#10;     * objects with references to the copies.  If a class contains only&#10;     * primitive fields or references to immutable objects, then it is usually&#10;     * the case that no fields in the object returned by {@code super.clone}&#10;     * need to be modified.&#10;     *&#10;     * @implSpec&#10;     * The method {@code clone} for class {@code Object} performs a&#10;     * specific cloning operation. First, if the class of this object does&#10;     * not implement the interface {@code Cloneable}, then a&#10;     * {@code CloneNotSupportedException} is thrown. Note that all arrays&#10;     * are considered to implement the interface {@code Cloneable} and that&#10;     * the return type of the {@code clone} method of an array type {@code T[]}&#10;     * is {@code T[]} where T is any reference or primitive type.&#10;     * Otherwise, this method creates a new instance of the class of this&#10;     * object and initializes all its fields with exactly the contents of&#10;     * the corresponding fields of this object, as if by assignment; the&#10;     * contents of the fields are not themselves cloned. Thus, this method&#10;     * performs a &#34;shallow copy&#34; of this object, not a &#34;deep copy&#34; operation.&#10;     * <p>&#10;     * The class {@code Object} does not itself implement the interface&#10;     * {@code Cloneable}, so calling the {@code clone} method on an object&#10;     * whose class is {@code Object} will result in throwing an&#10;     * exception at run time.&#10;     *&#10;     * @return     a clone of this instance.&#10;     * @throws  CloneNotSupportedException  if the object's class does not&#10;     *               support the {@code Cloneable} interface. Subclasses&#10;     *               that override the {@code clone} method can also&#10;     *               throw this exception to indicate that an instance cannot&#10;     *               be cloned.&#10;     * @see java.lang.Cloneable&#10;     "
  ]
  node [
    id 116
    label "private native Object internalClone()"
    type "method"
    comment "&#10;     * Native helper method for cloning.&#10;     "
  ]
  node [
    id 117
    label "public final native void notify()"
    type "method"
    comment "&#10;     * Wakes up a single thread that is waiting on this object's&#10;     * monitor. If any threads are waiting on this object, one of them&#10;     * is chosen to be awakened. The choice is arbitrary and occurs at&#10;     * the discretion of the implementation. A thread waits on an object's&#10;     * monitor by calling one of the {@code wait} methods.&#10;     * <p>&#10;     * The awakened thread will not be able to proceed until the current&#10;     * thread relinquishes the lock on this object. The awakened thread will&#10;     * compete in the usual manner with any other threads that might be&#10;     * actively competing to synchronize on this object; for example, the&#10;     * awakened thread enjoys no reliable privilege or disadvantage in being&#10;     * the next thread to lock this object.&#10;     * <p>&#10;     * This method should only be called by a thread that is the owner&#10;     * of this object's monitor. A thread becomes the owner of the&#10;     * object's monitor in one of three ways:&#10;     * <ul>&#10;     * <li>By executing a synchronized instance method of that object.&#10;     * <li>By executing the body of a {@code synchronized} statement&#10;     *     that synchronizes on the object.&#10;     * <li>For objects of type {@code Class,} by executing a&#10;     *     synchronized static method of that class.&#10;     * </ul>&#10;     * <p>&#10;     * Only one thread at a time can own an object's monitor.&#10;     *&#10;     * @throws  IllegalMonitorStateException  if the current thread is not&#10;     *               the owner of this object's monitor.&#10;     * @see        java.lang.Object#notifyAll()&#10;     * @see        java.lang.Object#wait()&#10;     "
  ]
  node [
    id 118
    label "public final native void notifyAll()"
    type "method"
    comment "&#10;     * Wakes up all threads that are waiting on this object's monitor. A&#10;     * thread waits on an object's monitor by calling one of the&#10;     * {@code wait} methods.&#10;     * <p>&#10;     * The awakened threads will not be able to proceed until the current&#10;     * thread relinquishes the lock on this object. The awakened threads&#10;     * will compete in the usual manner with any other threads that might&#10;     * be actively competing to synchronize on this object; for example,&#10;     * the awakened threads enjoy no reliable privilege or disadvantage in&#10;     * being the next thread to lock this object.&#10;     * <p>&#10;     * This method should only be called by a thread that is the owner&#10;     * of this object's monitor. See the {@code notify} method for a&#10;     * description of the ways in which a thread can become the owner of&#10;     * a monitor.&#10;     *&#10;     * @throws  IllegalMonitorStateException  if the current thread is not&#10;     *               the owner of this object's monitor.&#10;     * @see        java.lang.Object#notify()&#10;     * @see        java.lang.Object#wait()&#10;     "
  ]
  node [
    id 119
    label "public final void wait(long timeoutMillis) throws InterruptedException"
    type "method"
    comment " public final native void wait(long timeoutMillis) throws InterruptedException;"
  ]
  node [
    id 120
    label "public final native void wait(long timeoutMillis, int nanos) throws InterruptedException"
    type "method"
    comment "&#10;    public final void wait(long timeoutMillis, int nanos) throws InterruptedException {&#10;        if (timeoutMillis < 0) {&#10;            throw new IllegalArgumentException(&#34;timeoutMillis value is negative&#34;);&#10;        }&#10;&#10;        if (nanos < 0 || nanos > 999999) {&#10;            throw new IllegalArgumentException(&#10;                                &#34;nanosecond timeout value out of range&#34;);&#10;        }&#10;&#10;        if (nanos > 0 &#38;&#38; timeoutMillis < Long.MAX_VALUE) {&#10;            timeoutMillis++;&#10;        }&#10;&#10;        wait(timeoutMillis);&#10;    }&#10;    "
  ]
  node [
    id 121
    label "public final void wait() throws InterruptedException"
    type "method"
    comment "&#10;     * Causes the current thread to wait until it is awakened, typically&#10;     * by being <em>notified</em> or <em>interrupted</em>.&#10;     * <p>&#10;     * In all respects, this method behaves as if {@code wait(0L, 0)}&#10;     * had been called. See the specification of the {@link #wait(long, int)} method&#10;     * for details.&#10;     *&#10;     * @throws IllegalMonitorStateException if the current thread is not&#10;     *         the owner of the object's monitor&#10;     * @throws InterruptedException if any thread interrupted the current thread before or&#10;     *         while the current thread was waiting. The <em>interrupted status</em> of the&#10;     *         current thread is cleared when this exception is thrown.&#10;     * @see    #notify()&#10;     * @see    #notifyAll()&#10;     * @see    #wait(long)&#10;     * @see    #wait(long, int)&#10;     "
  ]
  node [
    id 122
    label "wait(long"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 123
    label "protected void finalize() throws Throwable"
    type "method"
    comment " @Deprecated(since=&#34;9&#34;)"
  ]
  node [
    id 124
    label "public int compareTo(URI that)"
    type "method"
    comment "&#10;     * Compares this URI to another object, which must be a URI.&#10;     *&#10;     * <p> When comparing corresponding components of two URIs, if one&#10;     * component is undefined but the other is defined then the first is&#10;     * considered to be less than the second.  Unless otherwise noted, string&#10;     * components are ordered according to their natural, case-sensitive&#10;     * ordering as defined by the {@link java.lang.String#compareTo(Object)&#10;     * String.compareTo} method.  String components that are subject to&#10;     * encoding are compared by comparing their raw forms rather than their&#10;     * encoded forms.&#10;     *&#10;     * <p> The ordering of URIs is defined as follows: </p>&#10;     *&#10;     * <ul>&#10;     *&#10;     *   <li><p> Two URIs with different schemes are ordered according the&#10;     *   ordering of their schemes, without regard to case. </p></li>&#10;     *&#10;     *   <li><p> A hierarchical URI is considered to be less than an opaque URI&#10;     *   with an identical scheme. </p></li>&#10;     *&#10;     *   <li><p> Two opaque URIs with identical schemes are ordered according&#10;     *   to the ordering of their scheme-specific parts. </p></li>&#10;     *&#10;     *   <li><p> Two opaque URIs with identical schemes and scheme-specific&#10;     *   parts are ordered according to the ordering of their&#10;     *   fragments. </p></li>&#10;     *&#10;     *   <li><p> Two hierarchical URIs with identical schemes are ordered&#10;     *   according to the ordering of their authority components: </p>&#10;     *&#10;     *   <ul>&#10;     *&#10;     *     <li><p> If both authority components are server-based then the URIs&#10;     *     are ordered according to their user-information components; if these&#10;     *     components are identical then the URIs are ordered according to the&#10;     *     ordering of their hosts, without regard to case; if the hosts are&#10;     *     identical then the URIs are ordered according to the ordering of&#10;     *     their ports. </p></li>&#10;     *&#10;     *     <li><p> If one or both authority components are registry-based then&#10;     *     the URIs are ordered according to the ordering of their authority&#10;     *     components. </p></li>&#10;     *&#10;     *   </ul></li>&#10;     *&#10;     *   <li><p> Finally, two hierarchical URIs with identical schemes and&#10;     *   authority components are ordered according to the ordering of their&#10;     *   paths; if their paths are identical then they are ordered according to&#10;     *   the ordering of their queries; if the queries are identical then they&#10;     *   are ordered according to the order of their fragments. </p></li>&#10;     *&#10;     * </ul>&#10;     *&#10;     * <p> This method satisfies the general contract of the {@link&#10;     * java.lang.Comparable#compareTo(Object) Comparable.compareTo}&#10;     * method. </p>&#10;     *&#10;     * @param   that&#10;     *          The object to which this URI is to be compared&#10;     *&#10;     * @return  A negative integer, zero, or a positive integer as this URI is&#10;     *          less than, equal to, or greater than the given URI&#10;     *&#10;     * @throws  ClassCastException&#10;     *          If the given object is not a URI&#10;     "
  ]
  node [
    id 125
    label "compareTo(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 126
    label "java.lang.String"
    type "class"
    comment ""
  ]
  node [
    id 127
    label "public int length()"
    type "method"
    comment "&#10;     * Returns the length of this string.&#10;     * The length is equal to the number of <a href=&#34;Character.html#unicode&#34;>Unicode&#10;     * code units</a> in the string.&#10;     *&#10;     * @return  the length of the sequence of characters represented by this&#10;     *          object.&#10;     "
  ]
  node [
    id 128
    label "public boolean isEmpty()"
    type "method"
    comment "&#10;     * Returns {@code true} if, and only if, {@link #length()} is {@code 0}.&#10;     *&#10;     * @return {@code true} if {@link #length()} is {@code 0}, otherwise&#10;     * {@code false}&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 129
    label "length()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 130
    label "public native char charAt(int index)"
    type "method"
    comment "&#10;    public char charAt(int index) {&#10;        if (isLatin1()) {&#10;            return StringLatin1.charAt(value, index);&#10;        } else {&#10;            return StringUTF16.charAt(value, index);&#10;        }&#10;    }&#10;    "
  ]
  node [
    id 131
    label "public int codePointAt(int index)"
    type "method"
    comment "&#10;     * Returns the character (Unicode code point) at the specified&#10;     * index. The index refers to {@code char} values&#10;     * (Unicode code units) and ranges from {@code 0} to&#10;     * {@link #length()}{@code  - 1}.&#10;     *&#10;     * <p> If the {@code char} value specified at the given index&#10;     * is in the high-surrogate range, the following index is less&#10;     * than the length of this {@code String}, and the&#10;     * {@code char} value at the following index is in the&#10;     * low-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at the given index is returned.&#10;     *&#10;     * @param      index the index to the {@code char} values&#10;     * @return     the code point value of the character at the&#10;     *             {@code index}&#10;     * @exception  IndexOutOfBoundsException  if the {@code index}&#10;     *             argument is negative or not less than the length of this&#10;     *             string.&#10;     * @since      1.5&#10;     "
  ]
  node [
    id 132
    label "public int codePointBefore(int index)"
    type "method"
    comment "&#10;     * Returns the character (Unicode code point) before the specified&#10;     * index. The index refers to {@code char} values&#10;     * (Unicode code units) and ranges from {@code 1} to {@link&#10;     * CharSequence#length() length}.&#10;     *&#10;     * <p> If the {@code char} value at {@code (index - 1)}&#10;     * is in the low-surrogate range, {@code (index - 2)} is not&#10;     * negative, and the {@code char} value at {@code (index -&#10;     * 2)} is in the high-surrogate range, then the&#10;     * supplementary code point value of the surrogate pair is&#10;     * returned. If the {@code char} value at {@code index -&#10;     * 1} is an unpaired low-surrogate or a high-surrogate, the&#10;     * surrogate value is returned.&#10;     *&#10;     * @param     index the index following the code point that should be returned&#10;     * @return    the Unicode code point value before the given index.&#10;     * @exception IndexOutOfBoundsException if the {@code index}&#10;     *            argument is less than 1 or greater than the length&#10;     *            of this string.&#10;     * @since     1.5&#10;     "
  ]
  node [
    id 133
    label "public int codePointCount(int beginIndex, int endIndex)"
    type "method"
    comment "&#10;     * Returns the number of Unicode code points in the specified text&#10;     * range of this {@code String}. The text range begins at the&#10;     * specified {@code beginIndex} and extends to the&#10;     * {@code char} at index {@code endIndex - 1}. Thus the&#10;     * length (in {@code char}s) of the text range is&#10;     * {@code endIndex-beginIndex}. Unpaired surrogates within&#10;     * the text range count as one code point each.&#10;     *&#10;     * @param beginIndex the index to the first {@code char} of&#10;     * the text range.&#10;     * @param endIndex the index after the last {@code char} of&#10;     * the text range.&#10;     * @return the number of Unicode code points in the specified text&#10;     * range&#10;     * @exception IndexOutOfBoundsException if the&#10;     * {@code beginIndex} is negative, or {@code endIndex}&#10;     * is larger than the length of this {@code String}, or&#10;     * {@code beginIndex} is larger than {@code endIndex}.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 134
    label "public int offsetByCodePoints(int index, int codePointOffset)"
    type "method"
    comment "&#10;     * Returns the index within this {@code String} that is&#10;     * offset from the given {@code index} by&#10;     * {@code codePointOffset} code points. Unpaired surrogates&#10;     * within the text range given by {@code index} and&#10;     * {@code codePointOffset} count as one code point each.&#10;     *&#10;     * @param index the index to be offset&#10;     * @param codePointOffset the offset in code points&#10;     * @return the index within this {@code String}&#10;     * @exception IndexOutOfBoundsException if {@code index}&#10;     *   is negative or larger then the length of this&#10;     *   {@code String}, or if {@code codePointOffset} is positive&#10;     *   and the substring starting with {@code index} has fewer&#10;     *   than {@code codePointOffset} code points,&#10;     *   or if {@code codePointOffset} is negative and the substring&#10;     *   before {@code index} has fewer than the absolute value&#10;     *   of {@code codePointOffset} code points.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 135
    label " void getChars(char[] dst, int dstBegin)"
    type "method"
    comment "&#10;     * Copy characters from this string into dst starting at dstBegin.&#10;     * This method doesn't perform any range checking.&#10;     "
  ]
  node [
    id 136
    label "public void getChars(int srcBegin, int srcEnd, char[] dst, int dstBegin)"
    type "method"
    comment "&#10;     * Copies characters from this string into the destination character&#10;     * array.&#10;     * <p>&#10;     * The first character to be copied is at index {@code srcBegin};&#10;     * the last character to be copied is at index {@code srcEnd-1}&#10;     * (thus the total number of characters to be copied is&#10;     * {@code srcEnd-srcBegin}). The characters are copied into the&#10;     * subarray of {@code dst} starting at index {@code dstBegin}&#10;     * and ending at index:&#10;     * <blockquote><pre>&#10;     *     dstBegin + (srcEnd-srcBegin) - 1&#10;     * </pre></blockquote>&#10;     *&#10;     * @param      srcBegin   index of the first character in the string&#10;     *                        to copy.&#10;     * @param      srcEnd     index after the last character in the string&#10;     *                        to copy.&#10;     * @param      dst        the destination array.&#10;     * @param      dstBegin   the start offset in the destination array.&#10;     * @exception IndexOutOfBoundsException If any of the following&#10;     *            is true:&#10;     *            <ul><li>{@code srcBegin} is negative.&#10;     *            <li>{@code srcBegin} is greater than {@code srcEnd}&#10;     *            <li>{@code srcEnd} is greater than the length of this&#10;     *                string&#10;     *            <li>{@code dstBegin} is negative&#10;     *            <li>{@code dstBegin+(srcEnd-srcBegin)} is larger than&#10;     *                {@code dst.length}</ul>&#10;     "
  ]
  node [
    id 137
    label " native void getCharsNoCheck(int start, int end, char[] buffer, int index)"
    type "method"
    comment "&#10;     * getChars without bounds checks, for use by other classes&#10;     * within the java.lang package only.  The caller is responsible for&#10;     * ensuring that start >= 0 &#38;&#38; start <= end &#38;&#38; end <= count.&#10;     "
  ]
  node [
    id 138
    label "public byte[] getBytes(String charsetName) throws UnsupportedEncodingException"
    type "method"
    comment "&#10;     * Encodes this {@code String} into a sequence of bytes using the named&#10;     * charset, storing the result into a new byte array.&#10;     *&#10;     * <p> The behavior of this method when this string cannot be encoded in&#10;     * the given charset is unspecified.  The {@link&#10;     * java.nio.charset.CharsetEncoder} class should be used when more control&#10;     * over the encoding process is required.&#10;     *&#10;     * @param  charsetName&#10;     *         The name of a supported {@linkplain java.nio.charset.Charset&#10;     *         charset}&#10;     *&#10;     * @return  The resultant byte array&#10;     *&#10;     * @throws  UnsupportedEncodingException&#10;     *          If the named charset is not supported&#10;     *&#10;     * @since  1.1&#10;     "
  ]
  node [
    id 139
    label "java.nio.charset.CharsetEncoder"
    type "class"
    comment ""
  ]
  node [
    id 140
    label "public final Charset charset()"
    type "method"
    comment "&#10;     * Returns the charset that created this encoder.&#10;     *&#10;     * @return  This encoder's charset&#10;     "
  ]
  node [
    id 141
    label "public final byte[] replacement()"
    type "method"
    comment "&#10;     * Returns this encoder's replacement value.&#10;     *&#10;     * @return  This encoder's current replacement,&#10;     *          which is never {@code null} and is never empty&#10;     "
  ]
  node [
    id 142
    label "public final CharsetEncoder replaceWith(byte[] newReplacement)"
    type "method"
    comment "&#10;     * Changes this encoder's replacement value.&#10;     *&#10;     * <p> This method invokes the {@link #implReplaceWith implReplaceWith}&#10;     * method, passing the new replacement, after checking that the new&#10;     * replacement is acceptable.  </p>&#10;     *&#10;     * @param  newReplacement  The new replacement; must not be&#10;     *         {@code null}, must have non-zero length,&#10;&#10;&#10;&#10;&#10;&#10;     *         must not be longer than the value returned by the&#10;     *         {@link #maxBytesPerChar() maxBytesPerChar} method, and&#10;     *         must be {@link #isLegalReplacement legal}&#10;&#10;     *&#10;     * @return  This encoder&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the preconditions on the parameter do not hold&#10;     "
  ]
  node [
    id 143
    label "implReplaceWith"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 144
    label "maxBytesPerChar()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 145
    label "isLegalReplacement"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 146
    label "protected void implReplaceWith(byte[] newReplacement)"
    type "method"
    comment "&#10;     * Reports a change to this encoder's replacement value.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by encoders that require notification of changes to&#10;     * the replacement.  </p>&#10;     *&#10;     * @param  newReplacement    The replacement value&#10;     "
  ]
  node [
    id 147
    label "public boolean isLegalReplacement(byte[] repl)"
    type "method"
    comment "&#10;     * Tells whether or not the given byte array is a legal replacement value&#10;     * for this encoder.&#10;     *&#10;     * <p> A replacement is legal if, and only if, it is a legal sequence of&#10;     * bytes in this encoder's charset; that is, it must be possible to decode&#10;     * the replacement into one or more sixteen-bit Unicode characters.&#10;     *&#10;     * <p> The default implementation of this method is not very efficient; it&#10;     * should generally be overridden to improve performance.  </p>&#10;     *&#10;     * @param  repl  The byte array to be tested&#10;     *&#10;     * @return  {@code true} if, and only if, the given byte array&#10;     *          is a legal replacement value for this encoder&#10;     "
  ]
  node [
    id 148
    label "public CodingErrorAction malformedInputAction()"
    type "method"
    comment "&#10;     * Returns this encoder's current action for malformed-input errors.&#10;     *&#10;     * @return The current malformed-input action, which is never {@code null}&#10;     "
  ]
  node [
    id 149
    label "public final CharsetEncoder onMalformedInput(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Changes this encoder's action for malformed-input errors.&#10;     *&#10;     * <p> This method invokes the {@link #implOnMalformedInput&#10;     * implOnMalformedInput} method, passing the new action.  </p>&#10;     *&#10;     * @param  newAction  The new action; must not be {@code null}&#10;     *&#10;     * @return  This encoder&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the precondition on the parameter does not hold&#10;     "
  ]
  node [
    id 150
    label "implOnMalformedInputimplOnMalformedInput"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 151
    label "protected void implOnMalformedInput(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Reports a change to this encoder's malformed-input action.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by encoders that require notification of changes to&#10;     * the malformed-input action.  </p>&#10;     *&#10;     * @param  newAction  The new action&#10;     "
  ]
  node [
    id 152
    label "public CodingErrorAction unmappableCharacterAction()"
    type "method"
    comment "&#10;     * Returns this encoder's current action for unmappable-character errors.&#10;     *&#10;     * @return The current unmappable-character action, which is never&#10;     *         {@code null}&#10;     "
  ]
  node [
    id 153
    label "public final CharsetEncoder onUnmappableCharacter(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Changes this encoder's action for unmappable-character errors.&#10;     *&#10;     * <p> This method invokes the {@link #implOnUnmappableCharacter&#10;     * implOnUnmappableCharacter} method, passing the new action.  </p>&#10;     *&#10;     * @param  newAction  The new action; must not be {@code null}&#10;     *&#10;     * @return  This encoder&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the precondition on the parameter does not hold&#10;     "
  ]
  node [
    id 154
    label "implOnUnmappableCharacterimplOnUnmappableCharacter"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 155
    label "protected void implOnUnmappableCharacter(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Reports a change to this encoder's unmappable-character action.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by encoders that require notification of changes to&#10;     * the unmappable-character action.  </p>&#10;     *&#10;     * @param  newAction  The new action&#10;     "
  ]
  node [
    id 156
    label "public final float averageBytesPerChar()"
    type "method"
    comment "&#10;     * Returns the average number of bytes that will be produced for each&#10;     * character of input.  This heuristic value may be used to estimate the size&#10;     * of the output buffer required for a given input sequence.&#10;     *&#10;     * @return  The average number of bytes produced&#10;     *          per character of input&#10;     "
  ]
  node [
    id 157
    label "public final float maxBytesPerChar()"
    type "method"
    comment "&#10;     * Returns the maximum number of bytes that will be produced for each&#10;     * character of input.  This value may be used to compute the worst-case size&#10;     * of the output buffer required for a given input sequence. This value&#10;     * accounts for any necessary content-independent prefix or suffix&#10;&#10;     * bytes, such as byte-order marks.&#10;&#10;&#10;&#10;&#10;     *&#10;     * @return  The maximum number of bytes that will be produced per&#10;     *          character of input&#10;     "
  ]
  node [
    id 158
    label "public final CoderResult encode(CharBuffer in, ByteBuffer out, boolean endOfInput)"
    type "method"
    comment "&#10;     * Encodes as many characters as possible from the given input buffer,&#10;     * writing the results to the given output buffer.&#10;     *&#10;     * <p> The buffers are read from, and written to, starting at their current&#10;     * positions.  At most {@link Buffer#remaining in.remaining()} characters&#10;     * will be read and at most {@link Buffer#remaining out.remaining()}&#10;     * bytes will be written.  The buffers' positions will be advanced to&#10;     * reflect the characters read and the bytes written, but their marks and&#10;     * limits will not be modified.&#10;     *&#10;     * <p> In addition to reading characters from the input buffer and writing&#10;     * bytes to the output buffer, this method returns a {@link CoderResult}&#10;     * object to describe its reason for termination:&#10;     *&#10;     * <ul>&#10;     *&#10;     *   <li><p> {@link CoderResult#UNDERFLOW} indicates that as much of the&#10;     *   input buffer as possible has been encoded.  If there is no further&#10;     *   input then the invoker can proceed to the next step of the&#10;     *   <a href=&#34;#steps&#34;>encoding operation</a>.  Otherwise this method&#10;     *   should be invoked again with further input.  </p></li>&#10;     *&#10;     *   <li><p> {@link CoderResult#OVERFLOW} indicates that there is&#10;     *   insufficient space in the output buffer to encode any more characters.&#10;     *   This method should be invoked again with an output buffer that has&#10;     *   more {@linkplain Buffer#remaining remaining} bytes. This is&#10;     *   typically done by draining any encoded bytes from the output&#10;     *   buffer.  </p></li>&#10;     *&#10;     *   <li><p> A {@linkplain CoderResult#malformedForLength&#10;     *   malformed-input} result indicates that a malformed-input&#10;     *   error has been detected.  The malformed characters begin at the input&#10;     *   buffer's (possibly incremented) position; the number of malformed&#10;     *   characters may be determined by invoking the result object's {@link&#10;     *   CoderResult#length() length} method.  This case applies only if the&#10;     *   {@linkplain #onMalformedInput malformed action} of this encoder&#10;     *   is {@link CodingErrorAction#REPORT}; otherwise the malformed input&#10;     *   will be ignored or replaced, as requested.  </p></li>&#10;     *&#10;     *   <li><p> An {@linkplain CoderResult#unmappableForLength&#10;     *   unmappable-character} result indicates that an&#10;     *   unmappable-character error has been detected.  The characters that&#10;     *   encode the unmappable character begin at the input buffer's (possibly&#10;     *   incremented) position; the number of such characters may be determined&#10;     *   by invoking the result object's {@link CoderResult#length() length}&#10;     *   method.  This case applies only if the {@linkplain #onUnmappableCharacter&#10;     *   unmappable action} of this encoder is {@link&#10;     *   CodingErrorAction#REPORT}; otherwise the unmappable character will be&#10;     *   ignored or replaced, as requested.  </p></li>&#10;     *&#10;     * </ul>&#10;     *&#10;     * In any case, if this method is to be reinvoked in the same encoding&#10;     * operation then care should be taken to preserve any characters remaining&#10;     * in the input buffer so that they are available to the next invocation.&#10;     *&#10;     * <p> The {@code endOfInput} parameter advises this method as to whether&#10;     * the invoker can provide further input beyond that contained in the given&#10;     * input buffer.  If there is a possibility of providing additional input&#10;     * then the invoker should pass {@code false} for this parameter; if there&#10;     * is no possibility of providing further input then the invoker should&#10;     * pass {@code true}.  It is not erroneous, and in fact it is quite&#10;     * common, to pass {@code false} in one invocation and later discover that&#10;     * no further input was actually available.  It is critical, however, that&#10;     * the final invocation of this method in a sequence of invocations always&#10;     * pass {@code true} so that any remaining unencoded input will be treated&#10;     * as being malformed.&#10;     *&#10;     * <p> This method works by invoking the {@link #encodeLoop encodeLoop}&#10;     * method, interpreting its results, handling error conditions, and&#10;     * reinvoking it as necessary.  </p>&#10;     *&#10;     *&#10;     * @param  in&#10;     *         The input character buffer&#10;     *&#10;     * @param  out&#10;     *         The output byte buffer&#10;     *&#10;     * @param  endOfInput&#10;     *         {@code true} if, and only if, the invoker can provide no&#10;     *         additional input characters beyond those in the given buffer&#10;     *&#10;     * @return  A coder-result object describing the reason for termination&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If an encoding operation is already in progress and the previous&#10;     *          step was an invocation neither of the {@link #reset reset}&#10;     *          method, nor of this method with a value of {@code false} for&#10;     *          the {@code endOfInput} parameter, nor of this method with a&#10;     *          value of {@code true} for the {@code endOfInput} parameter&#10;     *          but a return value indicating an incomplete encoding operation&#10;     *&#10;     * @throws  CoderMalfunctionError&#10;     *          If an invocation of the encodeLoop method threw&#10;     *          an unexpected exception&#10;     *&#10;     * @throws  NullPointerException if input or output buffer is null&#10;     "
  ]
  node [
    id 159
    label "reset"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 160
    label "OVERFLOW"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 161
    label "encodeLoop"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 162
    label "UNDERFLOW"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 163
    label "remaining"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 164
    label "java.nio.Buffer"
    type "class"
    comment ""
  ]
  node [
    id 165
    label " static IllegalArgumentException createSameBufferException()"
    type "method"
    comment "&#10;     * Returns an {@code IllegalArgumentException} indicating that the source&#10;     * and target are the same {@code Buffer}.  Intended for use in&#10;     * {@code put(src)} when the parameter is the {@code Buffer} on which the&#10;     * method is being invoked.&#10;     *&#10;     * @return  IllegalArgumentException&#10;     *          With a message indicating equal source and target buffers&#10;     "
  ]
  node [
    id 166
    label " static IllegalArgumentException createCapacityException(int capacity)"
    type "method"
    comment "&#10;     * Verify that the capacity is nonnegative.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in $type$s&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 167
    label "public final int capacity()"
    type "method"
    comment "&#10;     * Returns this buffer's capacity.&#10;     *&#10;     * @return  The capacity of this buffer&#10;     "
  ]
  node [
    id 168
    label "public final int position()"
    type "method"
    comment "&#10;     * Returns this buffer's position.&#10;     *&#10;     * @return  The position of this buffer&#10;     "
  ]
  node [
    id 169
    label "public Buffer position(int newPosition)"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 170
    label "private IllegalArgumentException createPositionException(int newPosition)"
    type "method"
    comment "&#10;     * Verify that {@code 0 < newPosition <= limit}&#10;     *&#10;     * @param newPosition&#10;     *        The new position value&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the specified position is out of bounds.&#10;     "
  ]
  node [
    id 171
    label "public final int limit()"
    type "method"
    comment "&#10;     * Returns this buffer's limit.&#10;     *&#10;     * @return  The limit of this buffer&#10;     "
  ]
  node [
    id 172
    label "public Buffer limit(int newLimit)"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 173
    label "private IllegalArgumentException createLimitException(int newLimit)"
    type "method"
    comment "&#10;     * Verify that {@code 0 < newLimit <= capacity}&#10;     *&#10;     * @param newLimit&#10;     *        The new limit value&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the specified limit is out of bounds.&#10;     "
  ]
  node [
    id 174
    label "public Buffer mark()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 175
    label "public Buffer reset()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 176
    label "public Buffer clear()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 177
    label "public Buffer flip()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 178
    label "compact"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 179
    label "java.nio.ByteBuffer"
    type "class"
    comment ""
  ]
  node [
    id 180
    label "public static ByteBuffer allocateDirect(int capacity)"
    type "method"
    comment "&#10;     * Allocates a new direct byte buffer.&#10;     *&#10;     * <p> The new buffer's position will be zero, its limit will be its&#10;     * capacity, its mark will be undefined, each of its elements will be&#10;     * initialized to zero, and its byte order will be&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.  Whether or not it has a&#10;     * {@link #hasArray backing array} is unspecified.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in bytes&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 181
    label "BIG_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 182
    label "hasArray"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 183
    label "public static ByteBuffer allocate(int capacity)"
    type "method"
    comment "&#10;     * Allocates a new byte buffer.&#10;     *&#10;     * <p> The new buffer's position will be zero, its limit will be its&#10;     * capacity, its mark will be undefined, each of its elements will be&#10;     * initialized to zero, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * It will have a {@link #array backing array}, and its&#10;     * {@link #arrayOffset array offset} will be zero.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in bytes&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 184
    label "array"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 185
    label "arrayOffset"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 186
    label "public static ByteBuffer wrap(byte[] array, int offset, int length)"
    type "method"
    comment "&#10;     * Wraps a byte array into a buffer.&#10;     *&#10;     * <p> The new buffer will be backed by the given byte array;&#10;     * that is, modifications to the buffer will cause the array to be modified&#10;     * and vice versa.  The new buffer's capacity will be&#10;     * {@code array.length}, its position will be {@code offset}, its limit&#10;     * will be {@code offset + length}, its mark will be undefined, and its&#10;     * byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * Its {@link #array backing array} will be the given array, and&#10;     * its {@link #arrayOffset array offset} will be zero.  </p>&#10;     *&#10;     * @param  array&#10;     *         The array that will back the new buffer&#10;     *&#10;     * @param  offset&#10;     *         The offset of the subarray to be used; must be non-negative and&#10;     *         no larger than {@code array.length}.  The new buffer's position&#10;     *         will be set to this value.&#10;     *&#10;     * @param  length&#10;     *         The length of the subarray to be used;&#10;     *         must be non-negative and no larger than&#10;     *         {@code array.length - offset}.&#10;     *         The new buffer's limit will be set to {@code offset + length}.&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     "
  ]
  node [
    id 187
    label "public static ByteBuffer wrap(byte[] array)"
    type "method"
    comment "&#10;     * Wraps a byte array into a buffer.&#10;     *&#10;     * <p> The new buffer will be backed by the given byte array;&#10;     * that is, modifications to the buffer will cause the array to be modified&#10;     * and vice versa.  The new buffer's capacity and limit will be&#10;     * {@code array.length}, its position will be zero, its mark will be&#10;     * undefined, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * Its {@link #array backing array} will be the given array, and its&#10;     * {@link #arrayOffset array offset} will be zero.  </p>&#10;     *&#10;     * @param  array&#10;     *         The array that will back this buffer&#10;     *&#10;     * @return  The new byte buffer&#10;     "
  ]
  node [
    id 188
    label "public abstract ByteBuffer slice()"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer, its mark will be&#10;     * undefined, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new byte buffer&#10;&#10;     *&#10;     * @see #alignedSlice(int)&#10;&#10;     "
  ]
  node [
    id 189
    label "public abstract ByteBuffer slice(int index, int length)"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at position {@code index}&#10;     * in this buffer, and will contain {@code length} elements. Changes to&#10;     * this buffer's content will be visible in the new buffer, and vice versa;&#10;     * the two buffers' position, limit, and mark values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be {@code length}, its mark will be undefined, and its byte order&#10;     * will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct,&#10;     * and it will be read-only if, and only if, this buffer is read-only. </p>&#10;     *&#10;     * @param   index&#10;     *          The position in this buffer at which the content of the new&#10;     *          buffer will start; must be non-negative and no larger than&#10;     *          {@link #limit() limit()}&#10;     *&#10;     * @param   length&#10;     *          The number of elements the new buffer will contain; must be&#10;     *          non-negative and no larger than {@code limit() - index}&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative or greater than {@code limit()},&#10;     *          {@code length} is negative, or {@code length > limit() - index}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 190
    label "limit()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 191
    label "public abstract ByteBuffer duplicate()"
    type "method"
    comment "&#10;     * Creates a new byte buffer that shares this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer, and vice&#10;     * versa; the two buffers' position, limit, and mark values will be&#10;     * independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position,&#10;&#10;     * and mark values will be identical to those of this buffer, and its byte&#10;     * order will be {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new byte buffer&#10;     "
  ]
  node [
    id 192
    label "public abstract ByteBuffer asReadOnlyBuffer()"
    type "method"
    comment "&#10;     * Creates a new, read-only byte buffer that shares this buffer's&#10;     * content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer; the new&#10;     * buffer itself, however, will be read-only and will not allow the shared&#10;     * content to be modified.  The two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position,&#10;&#10;     * and mark values will be identical to those of this buffer, and its byte&#10;     * order will be {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     *&#10;     * <p> If this buffer is itself read-only then this method behaves in&#10;     * exactly the same way as the {@link #duplicate duplicate} method.  </p>&#10;     *&#10;     * @return  The new, read-only byte buffer&#10;     "
  ]
  node [
    id 193
    label "duplicate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 194
    label "public abstract byte get()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method.  Reads the byte at this buffer's&#10;     * current position, and then increments the position.&#10;     *&#10;     * @return  The byte at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If the buffer's current position is not smaller than its limit&#10;     "
  ]
  node [
    id 195
    label "public abstract ByteBuffer put(byte b)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes the given byte into this buffer at the current&#10;     * position, and then increments the position. </p>&#10;     *&#10;     * @param  b&#10;     *         The byte to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If this buffer's current position is not smaller than its limit&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 196
    label "public abstract byte get(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method.  Reads the byte at the given&#10;     * index.&#10;     *&#10;     * @param  index&#10;     *         The index from which the byte will be read&#10;     *&#10;     * @return  The byte at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit&#10;     "
  ]
  node [
    id 197
    label "public abstract ByteBuffer put(int index, byte b)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes the given byte into this buffer at the given&#10;     * index. </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the byte will be written&#10;     *&#10;     * @param  b&#10;     *         The byte value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 198
    label "public ByteBuffer get(byte[] dst, int offset, int length)"
    type "method"
    comment "&#10;     * Relative bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  If there are fewer bytes remaining in the&#10;     * buffer than are required to satisfy the request, that is, if&#10;     * {@code length}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()}, then no&#10;     * bytes are transferred and a {@link BufferUnderflowException} is&#10;     * thrown.&#10;     *&#10;     * <p> Otherwise, this method copies {@code length} bytes from this&#10;     * buffer into the given array, starting at the current position of this&#10;     * buffer and at the given offset in the array.  The position of this&#10;     * buffer is then incremented by {@code length}.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>src.get(dst,&#38;nbsp;off,&#38;nbsp;len)</code> has exactly the same effect as&#10;     * the loop&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = off; i < off + len; i++)&#10;     *         dst[i] = src.get();&#10;     * }</pre>&#10;     *&#10;     * except that it first checks that there are sufficient bytes in&#10;     * this buffer and it is potentially much more efficient.&#10;     *&#10;     * @param  dst&#10;     *         The array into which bytes are to be written&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be&#10;     *         written; must be non-negative and no larger than&#10;     *         {@code dst.length}&#10;     *&#10;     * @param  length&#10;     *         The maximum number of bytes to be written to the given&#10;     *         array; must be non-negative and no larger than&#10;     *         {@code dst.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than {@code length} bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     "
  ]
  node [
    id 199
    label "BufferUnderflowException"
  ]
  node [
    id 200
    label "public ByteBuffer get(byte[] dst)"
    type "method"
    comment "&#10;     * Relative bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  An invocation of this method of the form&#10;     * {@code src.get(a)} behaves in exactly the same way as the invocation&#10;     *&#10;     * <pre>&#10;     *     src.get(a, 0, a.length) </pre>&#10;     *&#10;     * @param   dst&#10;     *          The destination array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than {@code length} bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 201
    label "public ByteBuffer get(int index, byte[] dst, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers {@code length} bytes from this&#10;     * buffer into the given array, starting at the given index in this&#10;     * buffer and at the given offset in the array.  The position of this&#10;     * buffer is unchanged.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <code>src.get(index,&#38;nbsp;dst,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the following loop except that it first&#10;     * checks the consistency of the supplied parameters and it is potentially&#10;     * much more efficient:&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *         dst[i] = src.get(j);&#10;     * }</pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer from which the first byte will be&#10;     *         read; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  dst&#10;     *         The destination array&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be&#10;     *         written; must be non-negative and less than&#10;     *         {@code dst.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be written to the given array;&#10;     *         must be non-negative and no larger than the smaller of&#10;     *         {@code limit() - index} and {@code dst.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code index}, {@code offset}, and&#10;     *          {@code length} parameters do not hold&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 202
    label "public ByteBuffer get(int index, byte[] dst)"
    type "method"
    comment "&#10;     * Absolute bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  The position of this buffer is unchanged.  An&#10;     * invocation of this method of the form&#10;     * <code>src.get(index,&#38;nbsp;dst)</code> behaves in exactly the same&#10;     * way as the invocation:&#10;     *&#10;     * <pre>&#10;     *     src.get(index, dst, 0, dst.length) </pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer from which the first byte will be&#10;     *         read; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  dst&#10;     *         The destination array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative, not smaller than {@code limit()},&#10;     *          or {@code limit() - index < dst.length}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 203
    label "public ByteBuffer put(ByteBuffer src)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers the bytes remaining in the given source&#10;     * buffer into this buffer.  If there are more bytes remaining in the&#10;     * source buffer than in this buffer, that is, if&#10;     * {@code src.remaining()}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()},&#10;     * then no bytes are transferred and a {@link&#10;     * BufferOverflowException} is thrown.&#10;     *&#10;     * <p> Otherwise, this method copies&#10;     * <i>n</i>&#38;nbsp;=&#38;nbsp;{@code src.remaining()} bytes from the given&#10;     * buffer into this buffer, starting at each buffer's current position.&#10;     * The positions of both buffers are then incremented by <i>n</i>.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * {@code dst.put(src)} has exactly the same effect as the loop&#10;     *&#10;     * <pre>&#10;     *     while (src.hasRemaining())&#10;     *         dst.put(src.get()); </pre>&#10;     *&#10;     * except that it first checks that there is sufficient space in this&#10;     * buffer and it is potentially much more efficient.  If this buffer and&#10;     * the source buffer share the same backing array or memory, then the&#10;     * result will be as if the source elements were first copied to an&#10;     * intermediate location before being written into this buffer.&#10;     *&#10;     * @param  src&#10;     *         The source buffer from which bytes are to be read;&#10;     *         must not be this buffer&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *          for the remaining bytes in the source buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the source buffer is this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 204
    label "BufferOverflowException"
  ]
  node [
    id 205
    label "public ByteBuffer put(int index, ByteBuffer src, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers {@code length} bytes into this buffer from&#10;     * the given source buffer, starting at the given {@code offset} in the&#10;     * source buffer and the given {@code index} in this buffer. The positions&#10;     * of both buffers are unchanged.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>dst.put(index,&#38;nbsp;src,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the loop&#10;     *&#10;     * <pre>{@code&#10;     * for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *     dst.put(j, src.get(i));&#10;     * }</pre>&#10;     *&#10;     * except that it first checks the consistency of the supplied parameters&#10;     * and it is potentially much more efficient.  If this buffer and&#10;     * the source buffer share the same backing array or memory, then the&#10;     * result will be as if the source elements were first copied to an&#10;     * intermediate location before being written into this buffer.&#10;     *&#10;     * @param index&#10;     *        The index in this buffer at which the first byte will be&#10;     *        written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param src&#10;     *        The buffer from which bytes are to be read&#10;     *&#10;     * @param offset&#10;     *        The index within the source buffer of the first byte to be&#10;     *        read; must be non-negative and less than {@code src.limit()}&#10;     *&#10;     * @param length&#10;     *        The number of bytes to be read from the given buffer;&#10;     *        must be non-negative and no larger than the smaller of&#10;     *        {@code limit() - index} and {@code src.limit() - offset}&#10;     *&#10;     * @return This buffer&#10;     *&#10;     * @throws IndexOutOfBoundsException&#10;     *         If the preconditions on the {@code index}, {@code offset}, and&#10;     *         {@code length} parameters do not hold&#10;     *&#10;     * @throws ReadOnlyBufferException&#10;     *         If this buffer is read-only&#10;     *&#10;     * @since 16&#10;     "
  ]
  node [
    id 206
    label "public ByteBuffer put(byte[] src, int offset, int length)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers bytes into this buffer from the given&#10;     * source array.  If there are more bytes to be copied from the array&#10;     * than remain in this buffer, that is, if&#10;     * {@code length}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()}, then no&#10;     * bytes are transferred and a {@link BufferOverflowException} is&#10;     * thrown.&#10;     *&#10;     * <p> Otherwise, this method copies {@code length} bytes from the&#10;     * given array into this buffer, starting at the given offset in the array&#10;     * and at the current position of this buffer.  The position of this buffer&#10;     * is then incremented by {@code length}.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>dst.put(src,&#38;nbsp;off,&#38;nbsp;len)</code> has exactly the same effect as&#10;     * the loop&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = off; i < off + len; i++)&#10;     *         dst.put(src[i]);&#10;     * }</pre>&#10;     *&#10;     * except that it first checks that there is sufficient space in this&#10;     * buffer and it is potentially much more efficient.&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be read;&#10;     *         must be non-negative and no larger than {@code src.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be read from the given array;&#10;     *         must be non-negative and no larger than&#10;     *         {@code src.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 207
    label "public final ByteBuffer put(byte[] src)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers the entire content of the given source&#10;     * byte array into this buffer.  An invocation of this method of the&#10;     * form {@code dst.put(a)} behaves in exactly the same way as the&#10;     * invocation&#10;     *&#10;     * <pre>&#10;     *     dst.put(a, 0, a.length) </pre>&#10;     *&#10;     * @param   src&#10;     *          The source array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 208
    label "public ByteBuffer put(int index, byte[] src, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers {@code length} bytes from the given&#10;     * array, starting at the given offset in the array and at the given index&#10;     * in this buffer.  The position of this buffer is unchanged.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <code>dst.put(index,&#38;nbsp;src,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the following loop except that it first&#10;     * checks the consistency of the supplied parameters and it is potentially&#10;     * much more efficient:&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *         dst.put(j, src[i]);&#10;     * }</pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer at which the first byte will be&#10;     *         written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be read;&#10;     *         must be non-negative and less than {@code src.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be read from the given array;&#10;     *         must be non-negative and no larger than the smaller of&#10;     *         {@code limit() - index} and {@code src.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code index}, {@code offset}, and&#10;     *          {@code length} parameters do not hold&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 209
    label "public ByteBuffer put(int index, byte[] src)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method copies bytes into this buffer from the given source&#10;     * array.  The position of this buffer is unchanged.  An invocation of this&#10;     * method of the form <code>dst.put(index,&#38;nbsp;src)</code>&#10;     * behaves in exactly the same way as the invocation:&#10;     *&#10;     * <pre>&#10;     *     dst.put(index, src, 0, src.length); </pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer at which the first byte will be&#10;     *         written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative, not smaller than {@code limit()},&#10;     *          or {@code limit() - index < src.length}&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 210
    label "public final boolean hasArray()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is backed by an accessible byte&#10;     * array.&#10;     *&#10;     * <p> If this method returns {@code true} then the {@link #array() array}&#10;     * and {@link #arrayOffset() arrayOffset} methods may safely be invoked.&#10;     * </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer&#10;     *          is backed by an array and is not read-only&#10;     "
  ]
  node [
    id 211
    label "array()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 212
    label "arrayOffset()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 213
    label "public final byte[] array()"
    type "method"
    comment "&#10;     * Returns the byte array that backs this&#10;     * buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Modifications to this buffer's content will cause the returned&#10;     * array's content to be modified, and vice versa.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The array that backs this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     "
  ]
  node [
    id 214
    label "public final int arrayOffset()"
    type "method"
    comment "&#10;     * Returns the offset within this buffer's backing array of the first&#10;     * element of the buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> If this buffer is backed by an array then buffer position <i>p</i>&#10;     * corresponds to array index <i>p</i>&#38;nbsp;+&#38;nbsp;{@code arrayOffset()}.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The offset within this buffer's array&#10;     *          of the first element of the buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     "
  ]
  node [
    id 215
    label "public Buffer rewind()"
    type "method"
    comment "&#10;     * Rewinds this buffer.  The position is set to zero and the mark is&#10;     * discarded.&#10;     *&#10;     * <p> Invoke this method before a sequence of channel-write or <i>get</i>&#10;     * operations, assuming that the limit has already been set&#10;     * appropriately.  For example:&#10;     *&#10;     * <blockquote><pre>&#10;     * out.write(buf);    // Write remaining data&#10;     * buf.rewind();      // Rewind buffer&#10;     * buf.get(array);    // Copy data into array</pre></blockquote>&#10;     *&#10;     * @return  This buffer&#10;     "
  ]
  node [
    id 216
    label "public abstract ByteBuffer compact()"
    type "method"
    comment "&#10;     * Compacts this buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> The bytes between the buffer's current position and its limit,&#10;     * if any, are copied to the beginning of the buffer.  That is, the&#10;     * byte at index <i>p</i>&#38;nbsp;=&#38;nbsp;{@code position()} is copied&#10;     * to index zero, the byte at index <i>p</i>&#38;nbsp;+&#38;nbsp;1 is copied&#10;     * to index one, and so forth until the byte at index&#10;     * {@code limit()}&#38;nbsp;-&#38;nbsp;1 is copied to index&#10;     * <i>n</i>&#38;nbsp;=&#38;nbsp;{@code limit()}&#38;nbsp;-&#38;nbsp;{@code 1}&#38;nbsp;-&#38;nbsp;<i>p</i>.&#10;     * The buffer's position is then set to <i>n+1</i> and its limit is set to&#10;     * its capacity.  The mark, if defined, is discarded.&#10;     *&#10;     * <p> The buffer's position is set to the number of bytes copied,&#10;     * rather than to zero, so that an invocation of this method can be&#10;     * followed immediately by an invocation of another relative <i>put</i>&#10;     * method. </p>&#10;     *&#10;&#10;     *&#10;     * <p> Invoke this method after writing data from a buffer in case the&#10;     * write was incomplete.  The following loop, for example, copies bytes&#10;     * from one channel to another via the buffer {@code buf}:&#10;     *&#10;     * <blockquote><pre>{@code&#10;     *   buf.clear();          // Prepare buffer for use&#10;     *   while (in.read(buf) >= 0 || buf.position != 0) {&#10;     *       buf.flip();&#10;     *       out.write(buf);&#10;     *       buf.compact();    // In case of partial write&#10;     *   }&#10;     * }</pre></blockquote>&#10;     *&#10;&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 217
    label "public abstract boolean isDirect()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is&#10;     * <a href=&#34;ByteBuffer.html#direct&#34;><i>direct</i></a>.&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is direct&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 218
    label "public int compareTo(ByteBuffer that)"
    type "method"
    comment "&#10;     * Compares this buffer to another.&#10;     *&#10;     * <p> Two byte buffers are compared by comparing their sequences of&#10;     * remaining elements lexicographically, without regard to the starting&#10;     * position of each sequence within its corresponding buffer.&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;     * Pairs of {@code byte} elements are compared as if by invoking&#10;     * {@link Byte#compare(byte,byte)}.&#10;&#10;     *&#10;     * <p> A byte buffer is not comparable to any other type of object.&#10;     *&#10;     * @return  A negative integer, zero, or a positive integer as this buffer&#10;     *          is less than, equal to, or greater than the given buffer&#10;     "
  ]
  node [
    id 219
    label "compare(byte"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 220
    label "public int mismatch(ByteBuffer that)"
    type "method"
    comment "&#10;     * Finds and returns the relative index of the first mismatch between this&#10;     * buffer and a given buffer.  The index is relative to the&#10;     * {@link #position() position} of each buffer and will be in the range of&#10;     * 0 (inclusive) up to the smaller of the {@link #remaining() remaining}&#10;     * elements in each buffer (exclusive).&#10;     *&#10;     * <p> If the two buffers share a common prefix then the returned index is&#10;     * the length of the common prefix and it follows that there is a mismatch&#10;     * between the two buffers at that index within the respective buffers.&#10;     * If one buffer is a proper prefix of the other then the returned index is&#10;     * the smaller of the remaining elements in each buffer, and it follows that&#10;     * the index is only valid for the buffer with the larger number of&#10;     * remaining elements.&#10;     * Otherwise, there is no mismatch.&#10;     *&#10;     * @param  that&#10;     *         The byte buffer to be tested for a mismatch with this buffer&#10;     *&#10;     * @return  The relative index of the first mismatch between this and the&#10;     *          given buffer, otherwise -1 if no mismatch.&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 221
    label "position()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 222
    label "remaining()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 223
    label "public final ByteOrder order()"
    type "method"
    comment "&#10;     * Retrieves this buffer's byte order.&#10;     *&#10;     * <p> The byte order is used when reading or writing multibyte values, and&#10;     * when creating buffers that are views of this byte buffer.  The order of&#10;     * a newly-created byte buffer is always {@link ByteOrder#BIG_ENDIAN&#10;     * BIG_ENDIAN}.  </p>&#10;     *&#10;     * @return  This buffer's byte order&#10;     "
  ]
  node [
    id 224
    label "BIG_ENDIANBIG_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 225
    label "public final ByteBuffer order(ByteOrder bo)"
    type "method"
    comment "&#10;     * Modifies this buffer's byte order.&#10;     *&#10;     * @param  bo&#10;     *         The new byte order,&#10;     *         either {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}&#10;     *         or {@link ByteOrder#LITTLE_ENDIAN LITTLE_ENDIAN}&#10;     *&#10;     * @return  This buffer&#10;     "
  ]
  node [
    id 226
    label "LITTLE_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 227
    label "public final int alignmentOffset(int index, int unitSize)"
    type "method"
    comment "&#10;     * Returns the memory address, pointing to the byte at the given index,&#10;     * modulo the given unit size.&#10;     *&#10;     * <p> The return value is non-negative in the range of {@code 0}&#10;     * (inclusive) up to {@code unitSize} (exclusive), with zero indicating&#10;     * that the address of the byte at the index is aligned for the unit size,&#10;     * and a positive value that the address is misaligned for the unit size.&#10;     * If the address of the byte at the index is misaligned, the return value&#10;     * represents how much the index should be adjusted to locate a byte at an&#10;     * aligned address.  Specifically, the index should either be decremented by&#10;     * the return value if the latter is not greater than {@code index}, or be&#10;     * incremented by the unit size minus the return value.  Therefore given&#10;     * <blockquote><pre>&#10;     * int value = alignmentOffset(index, unitSize)</pre></blockquote>&#10;     * then the identities&#10;     * <blockquote><pre>&#10;     * alignmentOffset(index - value, unitSize) == 0, value &#38;le; index</pre></blockquote>&#10;     * and&#10;     * <blockquote><pre>&#10;     * alignmentOffset(index + (unitSize - value), unitSize) == 0</pre></blockquote>&#10;     * must hold.&#10;     *&#10;     * @apiNote&#10;     * This method may be utilized to determine if unit size bytes from an&#10;     * index can be accessed atomically, if supported by the native platform.&#10;     *&#10;     * @implNote&#10;     * This implementation throws {@code UnsupportedOperationException} for&#10;     * non-direct buffers when the given unit size is greater than {@code 8}.&#10;     *&#10;     * @param  index&#10;     *         The index to query for alignment offset, must be non-negative, no&#10;     *         upper bounds check is performed&#10;     *&#10;     * @param  unitSize&#10;     *         The unit size in bytes, must be a power of {@code 2}&#10;     *&#10;     * @return  The indexed byte's memory address modulo the unit size&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the index is negative or the unit size is not a power of&#10;     *         {@code 2}&#10;     *&#10;     * @throws UnsupportedOperationException&#10;     *         If the native platform does not guarantee stable alignment offset&#10;     *         values for the given unit size when managing the memory regions&#10;     *         of buffers of the same kind as this buffer (direct or&#10;     *         non-direct).  For example, if garbage collection would result&#10;     *         in the moving of a memory region covered by a non-direct buffer&#10;     *         from one location to another and both locations have different&#10;     *         alignment characteristics.&#10;     *&#10;     * @see #alignedSlice(int)&#10;     * @since 9&#10;     "
  ]
  node [
    id 228
    label "public final ByteBuffer alignedSlice(int unitSize)"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared and aligned&#10;     * subsequence of this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position rounded up to the index of the nearest aligned byte for the&#10;     * given unit size, and end at this buffer's limit rounded down to the index&#10;     * of the nearest aligned byte for the given unit size.&#10;     * If rounding results in out-of-bound values then the new buffer's capacity&#10;     * and limit will be zero.  If rounding is within bounds the following&#10;     * expressions will be true for a new buffer {@code nb} and unit size&#10;     * {@code unitSize}:&#10;     * <pre>{@code&#10;     * nb.alignmentOffset(0, unitSize) == 0&#10;     * nb.alignmentOffset(nb.limit(), unitSize) == 0&#10;     * }</pre>&#10;     *&#10;     * <p> Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer or fewer subject to&#10;     * alignment, its mark will be undefined, and its byte order will be&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;     *&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @apiNote&#10;     * This method may be utilized to create a new buffer where unit size bytes&#10;     * from index, that is a multiple of the unit size, may be accessed&#10;     * atomically, if supported by the native platform.&#10;     *&#10;     * @implNote&#10;     * This implementation throws {@code UnsupportedOperationException} for&#10;     * non-direct buffers when the given unit size is greater than {@code 8}.&#10;     *&#10;     * @param  unitSize&#10;     *         The unit size in bytes, must be a power of {@code 2}&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the unit size not a power of {@code 2}&#10;     *&#10;     * @throws UnsupportedOperationException&#10;     *         If the native platform does not guarantee stable aligned slices&#10;     *         for the given unit size when managing the memory regions&#10;     *         of buffers of the same kind as this buffer (direct or&#10;     *         non-direct).  For example, if garbage collection would result&#10;     *         in the moving of a memory region covered by a non-direct buffer&#10;     *         from one location to another and both locations have different&#10;     *         alignment characteristics.&#10;     *&#10;     * @see #alignmentOffset(int, int)&#10;     * @see #slice()&#10;     * @since 9&#10;     "
  ]
  node [
    id 229
    label " abstract byte _get(int i)"
    type "method"
    comment " package-private"
  ]
  node [
    id 230
    label " abstract void _put(int i, byte b)"
    type "method"
    comment " package-private"
  ]
  node [
    id 231
    label "public abstract char getChar()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a char value.&#10;     *&#10;     * <p> Reads the next two bytes at this buffer's current position,&#10;     * composing them into a char value according to the current byte order,&#10;     * and then increments the position by two.  </p>&#10;     *&#10;     * @return  The char value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 232
    label "public abstract ByteBuffer putChar(char value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a char&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given char value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by two.  </p>&#10;     *&#10;     * @param  value&#10;     *         The char value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 233
    label "public abstract char getChar(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a char value.&#10;     *&#10;     * <p> Reads two bytes at the given index, composing them into a&#10;     * char value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The char value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     "
  ]
  node [
    id 234
    label " abstract char getCharUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 235
    label "public abstract ByteBuffer putChar(int index, char value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a char&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given char value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The char value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 236
    label " abstract void putCharUnchecked(int index, char value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 237
    label "public abstract CharBuffer asCharBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a char buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * two, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new char buffer&#10;     "
  ]
  node [
    id 238
    label "public abstract short getShort()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a short value.&#10;     *&#10;     * <p> Reads the next two bytes at this buffer's current position,&#10;     * composing them into a short value according to the current byte order,&#10;     * and then increments the position by two.  </p>&#10;     *&#10;     * @return  The short value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 239
    label "public abstract ByteBuffer putShort(short value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a short&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given short value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by two.  </p>&#10;     *&#10;     * @param  value&#10;     *         The short value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 240
    label "public abstract short getShort(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a short value.&#10;     *&#10;     * <p> Reads two bytes at the given index, composing them into a&#10;     * short value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The short value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     "
  ]
  node [
    id 241
    label " abstract short getShortUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 242
    label "public abstract ByteBuffer putShort(int index, short value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a short&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given short value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The short value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 243
    label " abstract void putShortUnchecked(int index, short value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 244
    label "public abstract ShortBuffer asShortBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a short buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * two, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new short buffer&#10;     "
  ]
  node [
    id 245
    label "public abstract int getInt()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading an int value.&#10;     *&#10;     * <p> Reads the next four bytes at this buffer's current position,&#10;     * composing them into an int value according to the current byte order,&#10;     * and then increments the position by four.  </p>&#10;     *&#10;     * @return  The int value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 246
    label "public abstract ByteBuffer putInt(int value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing an int&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given int value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by four.  </p>&#10;     *&#10;     * @param  value&#10;     *         The int value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 247
    label "public abstract int getInt(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading an int value.&#10;     *&#10;     * <p> Reads four bytes at the given index, composing them into a&#10;     * int value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The int value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     "
  ]
  node [
    id 248
    label " abstract int getIntUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 249
    label "public abstract ByteBuffer putInt(int index, int value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing an int&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given int value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The int value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 250
    label " abstract void putIntUnchecked(int index, int value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 251
    label "public abstract IntBuffer asIntBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as an int buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * four, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new int buffer&#10;     "
  ]
  node [
    id 252
    label "public abstract long getLong()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a long value.&#10;     *&#10;     * <p> Reads the next eight bytes at this buffer's current position,&#10;     * composing them into a long value according to the current byte order,&#10;     * and then increments the position by eight.  </p>&#10;     *&#10;     * @return  The long value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 253
    label "public abstract ByteBuffer putLong(long value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a long&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given long value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by eight.  </p>&#10;     *&#10;     * @param  value&#10;     *         The long value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 254
    label "public abstract long getLong(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a long value.&#10;     *&#10;     * <p> Reads eight bytes at the given index, composing them into a&#10;     * long value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The long value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     "
  ]
  node [
    id 255
    label " abstract long getLongUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 256
    label "public abstract ByteBuffer putLong(int index, long value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a long&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given long value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The long value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 257
    label " abstract void putLongUnchecked(int index, long value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 258
    label "public abstract LongBuffer asLongBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a long buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * eight, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new long buffer&#10;     "
  ]
  node [
    id 259
    label "public abstract float getFloat()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a float value.&#10;     *&#10;     * <p> Reads the next four bytes at this buffer's current position,&#10;     * composing them into a float value according to the current byte order,&#10;     * and then increments the position by four.  </p>&#10;     *&#10;     * @return  The float value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 260
    label "public abstract ByteBuffer putFloat(float value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a float&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given float value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by four.  </p>&#10;     *&#10;     * @param  value&#10;     *         The float value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 261
    label "public abstract float getFloat(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a float value.&#10;     *&#10;     * <p> Reads four bytes at the given index, composing them into a&#10;     * float value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The float value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     "
  ]
  node [
    id 262
    label " abstract float getFloatUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 263
    label "public abstract ByteBuffer putFloat(int index, float value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a float&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given float value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The float value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 264
    label " abstract void putFloatUnchecked(int index, float value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 265
    label "public abstract FloatBuffer asFloatBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a float buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * four, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new float buffer&#10;     "
  ]
  node [
    id 266
    label "public abstract double getDouble()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a double value.&#10;     *&#10;     * <p> Reads the next eight bytes at this buffer's current position,&#10;     * composing them into a double value according to the current byte order,&#10;     * and then increments the position by eight.  </p>&#10;     *&#10;     * @return  The double value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 267
    label "public abstract ByteBuffer putDouble(double value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a double&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given double value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by eight.  </p>&#10;     *&#10;     * @param  value&#10;     *         The double value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 268
    label "public abstract double getDouble(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a double value.&#10;     *&#10;     * <p> Reads eight bytes at the given index, composing them into a&#10;     * double value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The double value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     "
  ]
  node [
    id 269
    label " abstract double getDoubleUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 270
    label "public abstract ByteBuffer putDouble(int index, double value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a double&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given double value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The double value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 271
    label " abstract void putDoubleUnchecked(int index, double value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 272
    label "public abstract DoubleBuffer asDoubleBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a double buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * eight, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new double buffer&#10;     "
  ]
  node [
    id 273
    label "public final int remaining()"
    type "method"
    comment "&#10;     * Returns the number of elements between the current position and the&#10;     * limit.&#10;     *&#10;     * @return  The number of elements remaining in this buffer&#10;     "
  ]
  node [
    id 274
    label "public final boolean hasRemaining()"
    type "method"
    comment "&#10;     * Tells whether there are any elements between the current position and&#10;     * the limit.&#10;     *&#10;     * @return  {@code true} if, and only if, there is at least one element&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 275
    label "public abstract boolean isReadOnly()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is read-only.&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is read-only&#10;     "
  ]
  node [
    id 276
    label "public abstract boolean hasArray()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is backed by an accessible&#10;     * array.&#10;     *&#10;     * <p> If this method returns {@code true} then the {@link #array() array}&#10;     * and {@link #arrayOffset() arrayOffset} methods may safely be invoked.&#10;     * </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer&#10;     *          is backed by an array and is not read-only&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 277
    label "public abstract Object array()"
    type "method"
    comment "&#10;     * Returns the array that backs this&#10;     * buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method is intended to allow array-backed buffers to be&#10;     * passed to native code more efficiently. Concrete subclasses&#10;     * provide more strongly-typed return values for this method.&#10;     *&#10;     * <p> Modifications to this buffer's content will cause the returned&#10;     * array's content to be modified, and vice versa.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The array that backs this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 278
    label "public abstract int arrayOffset()"
    type "method"
    comment "&#10;     * Returns the offset within this buffer's backing array of the first&#10;     * element of the buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> If this buffer is backed by an array then buffer position <i>p</i>&#10;     * corresponds to array index <i>p</i>&#38;nbsp;+&#38;nbsp;{@code arrayOffset()}.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The offset within this buffer's array&#10;     *          of the first element of the buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 279
    label "public abstract Buffer slice()"
    type "method"
    comment "&#10;     * Creates a new buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of elements remaining in this buffer, its mark will be&#10;     * undefined. The new buffer will be direct if, and only if, this buffer is&#10;     * direct, and it will be read-only if, and only if, this buffer is&#10;     * read-only.  </p>&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 280
    label "public abstract Buffer slice(int index, int length)"
    type "method"
    comment "&#10;     * Creates a new buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at position {@code index}&#10;     * in this buffer, and will contain {@code length} elements. Changes to&#10;     * this buffer's content will be visible in the new buffer, and vice versa;&#10;     * the two buffers' position, limit, and mark values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be {@code length}, its mark will be undefined. The new buffer will&#10;     * be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @param   index&#10;     *          The position in this buffer at which the content of the new&#10;     *          buffer will start; must be non-negative and no larger than&#10;     *          {@link #limit() limit()}&#10;     *&#10;     * @param   length&#10;     *          The number of elements the new buffer will contain; must be&#10;     *          non-negative and no larger than {@code limit() - index}&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative or greater than {@code limit()},&#10;     *          {@code length} is negative, or {@code length > limit() - index}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 281
    label "public abstract Buffer duplicate()"
    type "method"
    comment "&#10;     * Creates a new buffer that shares this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer, and vice&#10;     * versa; the two buffers' position, limit, and mark values will be&#10;     * independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position and mark values will be&#10;     * identical to those of this buffer. The new buffer will be direct if, and&#10;     * only if, this buffer is direct, and it will be read-only if, and only if,&#10;     * this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 282
    label " abstract Object base()"
    type "method"
    comment "&#10;     *&#10;     * @return the base reference, paired with the address&#10;     * field, which in combination can be used for unsafe access into a heap&#10;     * buffer or direct byte buffer (and views of).&#10;     "
  ]
  node [
    id 283
    label " final int nextGetIndex()"
    type "method"
    comment "&#10;     * Checks the current position against the limit, throwing a {@link&#10;     * BufferUnderflowException} if it is not smaller than the limit, and then&#10;     * increments the position.&#10;     *&#10;     * @return  The current position value, before it is incremented&#10;     "
  ]
  node [
    id 284
    label " final int nextPutIndex()"
    type "method"
    comment "&#10;     * Checks the current position against the limit, throwing a {@link&#10;     * BufferOverflowException} if it is not smaller than the limit, and then&#10;     * increments the position.&#10;     *&#10;     * @return  The current position value, before it is incremented&#10;     "
  ]
  node [
    id 285
    label " final int checkIndex(int i)"
    type "method"
    comment "&#10;     * Checks the given index against the limit, throwing an {@link&#10;     * IndexOutOfBoundsException} if it is not smaller than the limit&#10;     * or is smaller than zero.&#10;     "
  ]
  node [
    id 286
    label "IndexOutOfBoundsException"
  ]
  node [
    id 287
    label "REPORT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 288
    label "CoderResult"
  ]
  node [
    id 289
    label "public final CoderResult flush(ByteBuffer out)"
    type "method"
    comment "&#10;     * Flushes this encoder.&#10;     *&#10;     * <p> Some encoders maintain internal state and may need to write some&#10;     * final bytes to the output buffer once the overall input sequence has&#10;     * been read.&#10;     *&#10;     * <p> Any additional output is written to the output buffer beginning at&#10;     * its current position.  At most {@link Buffer#remaining out.remaining()}&#10;     * bytes will be written.  The buffer's position will be advanced&#10;     * appropriately, but its mark and limit will not be modified.&#10;     *&#10;     * <p> If this method completes successfully then it returns {@link&#10;     * CoderResult#UNDERFLOW}.  If there is insufficient room in the output&#10;     * buffer then it returns {@link CoderResult#OVERFLOW}.  If this happens&#10;     * then this method must be invoked again, with an output buffer that has&#10;     * more room, in order to complete the current <a href=&#34;#steps&#34;>encoding&#10;     * operation</a>.&#10;     *&#10;     * <p> If this encoder has already been flushed then invoking this method&#10;     * has no effect.&#10;     *&#10;     * <p> This method invokes the {@link #implFlush implFlush} method to&#10;     * perform the actual flushing operation.  </p>&#10;     *&#10;     * @param  out&#10;     *         The output byte buffer&#10;     *&#10;     * @return  A coder-result object, either {@link CoderResult#UNDERFLOW} or&#10;     *          {@link CoderResult#OVERFLOW}&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If the previous step of the current encoding operation was an&#10;     *          invocation neither of the {@link #flush flush} method nor of&#10;     *          the three-argument {@link&#10;     *          #encode(CharBuffer,ByteBuffer,boolean) encode} method&#10;     *          with a value of {@code true} for the {@code endOfInput}&#10;     *          parameter&#10;     "
  ]
  node [
    id 290
    label "encode(CharBuffer"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 291
    label "flush"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 292
    label "implFlush"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 293
    label "protected CoderResult implFlush(ByteBuffer out)"
    type "method"
    comment "&#10;     * Flushes this encoder.&#10;     *&#10;     * <p> The default implementation of this method does nothing, and always&#10;     * returns {@link CoderResult#UNDERFLOW}.  This method should be overridden&#10;     * by encoders that may need to write final bytes to the output buffer&#10;     * once the entire input sequence has been read. </p>&#10;     *&#10;     * @param  out&#10;     *         The output byte buffer&#10;     *&#10;     * @return  A coder-result object, either {@link CoderResult#UNDERFLOW} or&#10;     *          {@link CoderResult#OVERFLOW}&#10;     "
  ]
  node [
    id 294
    label "public final CharsetEncoder reset()"
    type "method"
    comment "&#10;     * Resets this encoder, clearing any internal state.&#10;     *&#10;     * <p> This method resets charset-independent state and also invokes the&#10;     * {@link #implReset() implReset} method in order to perform any&#10;     * charset-specific reset actions.  </p>&#10;     *&#10;     * @return  This encoder&#10;     *&#10;     "
  ]
  node [
    id 295
    label "implReset()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 296
    label "protected void implReset()"
    type "method"
    comment "&#10;     * Resets this encoder, clearing any charset-specific internal state.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by encoders that maintain internal state.  </p>&#10;     "
  ]
  node [
    id 297
    label "protected abstract CoderResult encodeLoop(CharBuffer in, ByteBuffer out)"
    type "method"
    comment "&#10;     * Encodes one or more characters into one or more bytes.&#10;     *&#10;     * <p> This method encapsulates the basic encoding loop, encoding as many&#10;     * characters as possible until it either runs out of input, runs out of room&#10;     * in the output buffer, or encounters an encoding error.  This method is&#10;     * invoked by the {@link #encode encode} method, which handles result&#10;     * interpretation and error recovery.&#10;     *&#10;     * <p> The buffers are read from, and written to, starting at their current&#10;     * positions.  At most {@link Buffer#remaining in.remaining()} characters&#10;     * will be read, and at most {@link Buffer#remaining out.remaining()}&#10;     * bytes will be written.  The buffers' positions will be advanced to&#10;     * reflect the characters read and the bytes written, but their marks and&#10;     * limits will not be modified.&#10;     *&#10;     * <p> This method returns a {@link CoderResult} object to describe its&#10;     * reason for termination, in the same manner as the {@link #encode encode}&#10;     * method.  Most implementations of this method will handle encoding errors&#10;     * by returning an appropriate result object for interpretation by the&#10;     * {@link #encode encode} method.  An optimized implementation may instead&#10;     * examine the relevant error action and implement that action itself.&#10;     *&#10;     * <p> An implementation of this method may perform arbitrary lookahead by&#10;     * returning {@link CoderResult#UNDERFLOW} until it receives sufficient&#10;     * input.  </p>&#10;     *&#10;     * @param  in&#10;     *         The input character buffer&#10;     *&#10;     * @param  out&#10;     *         The output byte buffer&#10;     *&#10;     * @return  A coder-result object describing the reason for termination&#10;     "
  ]
  node [
    id 298
    label "encode"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 299
    label "public final ByteBuffer encode(CharBuffer in) throws CharacterCodingException"
    type "method"
    comment "&#10;     * Convenience method that encodes the remaining content of a single input&#10;     * character buffer into a newly-allocated byte buffer.&#10;     *&#10;     * <p> This method implements an entire <a href=&#34;#steps&#34;>encoding&#10;     * operation</a>; that is, it resets this encoder, then it encodes the&#10;     * characters in the given character buffer, and finally it flushes this&#10;     * encoder.  This method should therefore not be invoked if an encoding&#10;     * operation is already in progress.  </p>&#10;     *&#10;     * @param  in&#10;     *         The input character buffer&#10;     *&#10;     * @return A newly-allocated byte buffer containing the result of the&#10;     *         encoding operation.  The buffer's position will be zero and its&#10;     *         limit will follow the last byte written.&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If an encoding operation is already in progress&#10;     *&#10;     * @throws  MalformedInputException&#10;     *          If the character sequence starting at the input buffer's current&#10;     *          position is not a legal sixteen-bit Unicode sequence and the current malformed-input action&#10;     *          is {@link CodingErrorAction#REPORT}&#10;     *&#10;     * @throws  UnmappableCharacterException&#10;     *          If the character sequence starting at the input buffer's current&#10;     *          position cannot be mapped to an equivalent byte sequence and&#10;     *          the current unmappable-character action is {@link&#10;     *          CodingErrorAction#REPORT}&#10;     *&#10;     * @throws  CoderMalfunctionError&#10;     *          If an invocation of the encodeLoop method threw&#10;     *          an unexpected exception&#10;     *&#10;     * @throws  NullPointerException if input buffer is null&#10;     "
  ]
  node [
    id 300
    label "public boolean canEncode(char c)"
    type "method"
    comment "&#10;     * Tells whether or not this encoder can encode the given character.&#10;     *&#10;     * <p> This method returns {@code false} if the given character is a&#10;     * surrogate character; such characters can be interpreted only when they&#10;     * are members of a pair consisting of a high surrogate followed by a low&#10;     * surrogate.  The {@link #canEncode(java.lang.CharSequence)&#10;     * canEncode(CharSequence)} method may be used to test whether or not a&#10;     * character sequence can be encoded.&#10;     *&#10;     * <p> This method may modify this encoder's state; it should therefore not&#10;     * be invoked if an <a href=&#34;#steps&#34;>encoding operation</a> is already in&#10;     * progress.&#10;     *&#10;     * <p> The default implementation of this method is not very efficient; it&#10;     * should generally be overridden to improve performance.  </p>&#10;     *&#10;     * @param   c&#10;     *          The given character&#10;     *&#10;     * @return  {@code true} if, and only if, this encoder can encode&#10;     *          the given character&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If an encoding operation is already in progress&#10;     "
  ]
  node [
    id 301
    label "canEncode(java.lang.CharSequence)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 302
    label "public boolean canEncode(CharSequence cs)"
    type "method"
    comment "&#10;     * Tells whether or not this encoder can encode the given character&#10;     * sequence.&#10;     *&#10;     * <p> If this method returns {@code false} for a particular character&#10;     * sequence then more information about why the sequence cannot be encoded&#10;     * may be obtained by performing a full <a href=&#34;#steps&#34;>encoding&#10;     * operation</a>.&#10;     *&#10;     * <p> This method may modify this encoder's state; it should therefore not&#10;     * be invoked if an encoding operation is already in progress.&#10;     *&#10;     * <p> The default implementation of this method is not very efficient; it&#10;     * should generally be overridden to improve performance.  </p>&#10;     *&#10;     * @param   cs&#10;     *          The given character sequence&#10;     *&#10;     * @return  {@code true} if, and only if, this encoder can encode&#10;     *          the given character without throwing any exceptions and without&#10;     *          performing any replacements&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If an encoding operation is already in progress&#10;     "
  ]
  node [
    id 303
    label "public byte[] getBytes(Charset charset)"
    type "method"
    comment "&#10;     * Encodes this {@code String} into a sequence of bytes using the given&#10;     * {@linkplain java.nio.charset.Charset charset}, storing the result into a&#10;     * new byte array.&#10;     *&#10;     * <p> This method always replaces malformed-input and unmappable-character&#10;     * sequences with this charset's default replacement byte array.  The&#10;     * {@link java.nio.charset.CharsetEncoder} class should be used when more&#10;     * control over the encoding process is required.&#10;     *&#10;     * @param  charset&#10;     *         The {@linkplain java.nio.charset.Charset} to be used to encode&#10;     *         the {@code String}&#10;     *&#10;     * @return  The resultant byte array&#10;     *&#10;     * @since  1.6&#10;     "
  ]
  node [
    id 304
    label "public byte[] getBytes()"
    type "method"
    comment "&#10;     * Encodes this {@code String} into a sequence of bytes using the&#10;     * platform's default charset, storing the result into a new byte array.&#10;     *&#10;     * <p> The behavior of this method when this string cannot be encoded in&#10;     * the default charset is unspecified.  The {@link&#10;     * java.nio.charset.CharsetEncoder} class should be used when more control&#10;     * over the encoding process is required.&#10;     *&#10;     * @return  The resultant byte array&#10;     *&#10;     * @since      1.1&#10;     "
  ]
  node [
    id 305
    label "public boolean equals(Object anObject)"
    type "method"
    comment "&#10;     * Compares this string to the specified object.  The result is {@code&#10;     * true} if and only if the argument is not {@code null} and is a {@code&#10;     * String} object that represents the same sequence of characters as this&#10;     * object.&#10;     *&#10;     * <p>For finer-grained String comparison, refer to&#10;     * {@link java.text.Collator}.&#10;     *&#10;     * @param  anObject&#10;     *         The object to compare this {@code String} against&#10;     *&#10;     * @return  {@code true} if the given object represents a {@code String}&#10;     *          equivalent to this string, {@code false} otherwise&#10;     *&#10;     * @see  #compareTo(String)&#10;     * @see  #equalsIgnoreCase(String)&#10;     "
  ]
  node [
    id 306
    label "java.text.Collator"
    type "class"
    comment ""
  ]
  node [
    id 307
    label "public static synchronized Collator getInstance()"
    type "method"
    comment "&#10;     * Gets the Collator for the current default locale.&#10;     * The default locale is determined by java.util.Locale.getDefault.&#10;     * @return the Collator for the default locale.(for example, en_US)&#10;     * @see java.util.Locale#getDefault&#10;     "
  ]
  node [
    id 308
    label "public static Collator getInstance(Locale desiredLocale)"
    type "method"
    comment "&#10;     * Gets the Collator for the desired locale.&#10;     * @param desiredLocale the desired locale.&#10;     * @return the Collator for the desired locale.&#10;     * @see java.util.Locale&#10;     * @see java.util.ResourceBundle&#10;     "
  ]
  node [
    id 309
    label "public abstract int compare(String source, String target)"
    type "method"
    comment "&#10;     * Compares the source string to the target string according to the&#10;     * collation rules for this Collator.  Returns an integer less than,&#10;     * equal to or greater than zero depending on whether the source String is&#10;     * less than, equal to or greater than the target string.  See the Collator&#10;     * class description for an example of use.&#10;     * <p>&#10;     * For a one time comparison, this method has the best performance. If a&#10;     * given String will be involved in multiple comparisons, CollationKey.compareTo&#10;     * has the best performance. See the Collator class description for an example&#10;     * using CollationKeys.&#10;     * @param source the source string.&#10;     * @param target the target string.&#10;     * @return Returns an integer value. Value is less than zero if source is less than&#10;     * target, value is zero if source and target are equal, value is greater than zero&#10;     * if source is greater than target.&#10;     * @see java.text.CollationKey&#10;     * @see java.text.Collator#getCollationKey&#10;     "
  ]
  node [
    id 310
    label "public int compare(Object o1, Object o2)"
    type "method"
    comment "&#10;     * Compares its two arguments for order.  Returns a negative integer,&#10;     * zero, or a positive integer as the first argument is less than, equal&#10;     * to, or greater than the second.&#10;     * <p>&#10;     * This implementation merely returns&#10;     *  {@code  compare((String)o1, (String)o2) }.&#10;     *&#10;     * @return a negative integer, zero, or a positive integer as the&#10;     *         first argument is less than, equal to, or greater than the&#10;     *         second.&#10;     * @throws    ClassCastException the arguments cannot be cast to Strings.&#10;     * @see java.util.Comparator&#10;     * @since   1.2&#10;     "
  ]
  node [
    id 311
    label "public abstract CollationKey getCollationKey(String source)"
    type "method"
    comment "&#10;     * Transforms the String into a series of bits that can be compared bitwise&#10;     * to other CollationKeys. CollationKeys provide better performance than&#10;     * Collator.compare when Strings are involved in multiple comparisons.&#10;     * See the Collator class description for an example using CollationKeys.&#10;     * @param source the string to be transformed into a collation key.&#10;     * @return the CollationKey for the given String based on this Collator's collation&#10;     * rules. If the source String is null, a null CollationKey is returned.&#10;     * @see java.text.CollationKey&#10;     * @see java.text.Collator#compare&#10;     "
  ]
  node [
    id 312
    label "public boolean equals(String source, String target)"
    type "method"
    comment "&#10;     * Convenience method for comparing the equality of two strings based on&#10;     * this Collator's collation rules.&#10;     * @param source the source string to be compared with.&#10;     * @param target the target string to be compared with.&#10;     * @return true if the strings are equal according to the collation&#10;     * rules.  false, otherwise.&#10;     * @see java.text.Collator#compare&#10;     "
  ]
  node [
    id 313
    label "public synchronized int getStrength()"
    type "method"
    comment "&#10;     * Returns this Collator's strength property.  The strength property determines&#10;     * the minimum level of difference considered significant during comparison.&#10;     * See the Collator class description for an example of use.&#10;     * @return this Collator's current strength property.&#10;     * @see java.text.Collator#setStrength&#10;     * @see java.text.Collator#PRIMARY&#10;     * @see java.text.Collator#SECONDARY&#10;     * @see java.text.Collator#TERTIARY&#10;     * @see java.text.Collator#IDENTICAL&#10;     "
  ]
  node [
    id 314
    label "public synchronized void setStrength(int newStrength)"
    type "method"
    comment "&#10;     * Sets this Collator's strength property.  The strength property determines&#10;     * the minimum level of difference considered significant during comparison.&#10;     * See the Collator class description for an example of use.&#10;     * @param newStrength  the new strength value.&#10;     * @see java.text.Collator#getStrength&#10;     * @see java.text.Collator#PRIMARY&#10;     * @see java.text.Collator#SECONDARY&#10;     * @see java.text.Collator#TERTIARY&#10;     * @see java.text.Collator#IDENTICAL&#10;     * @throws     IllegalArgumentException If the new strength value is not one of&#10;     * PRIMARY, SECONDARY, TERTIARY or IDENTICAL.&#10;     "
  ]
  node [
    id 315
    label "public synchronized int getDecomposition()"
    type "method"
    comment "&#10;     * Get the decomposition mode of this Collator. Decomposition mode&#10;     * determines how Unicode composed characters are handled. Adjusting&#10;     * decomposition mode allows the user to select between faster and more&#10;     * complete collation behavior.&#10;     * <p>The three values for decomposition mode are:&#10;     * <UL>&#10;     * <LI>NO_DECOMPOSITION,&#10;     * <LI>CANONICAL_DECOMPOSITION&#10;     * <LI>FULL_DECOMPOSITION.&#10;     * </UL>&#10;     * See the documentation for these three constants for a description&#10;     * of their meaning.&#10;     * @return the decomposition mode&#10;     * @see java.text.Collator#setDecomposition&#10;     * @see java.text.Collator#NO_DECOMPOSITION&#10;     * @see java.text.Collator#CANONICAL_DECOMPOSITION&#10;     * @see java.text.Collator#FULL_DECOMPOSITION&#10;     "
  ]
  node [
    id 316
    label "public synchronized void setDecomposition(int decompositionMode)"
    type "method"
    comment "&#10;     * Set the decomposition mode of this Collator. See getDecomposition&#10;     * for a description of decomposition mode.&#10;     * @param decompositionMode  the new decomposition mode.&#10;     * @see java.text.Collator#getDecomposition&#10;     * @see java.text.Collator#NO_DECOMPOSITION&#10;     * @see java.text.Collator#CANONICAL_DECOMPOSITION&#10;     * @see java.text.Collator#FULL_DECOMPOSITION&#10;     * @throws    IllegalArgumentException If the given value is not a valid decomposition&#10;     * mode.&#10;     "
  ]
  node [
    id 317
    label "public static synchronized Locale[] getAvailableLocales()"
    type "method"
    comment "&#10;     * Returns an array of all locales for which the&#10;     * {@code getInstance} methods of this class can return&#10;     * localized instances.&#10;     *&#10;     * @return An array of locales for which localized&#10;     *         {@code Collator} instances are available.&#10;     "
  ]
  node [
    id 318
    label "private int decompositionMode_Java_ICU(int mode)"
    type "method"
    comment " BEGIN Android-added: conversion method for decompositionMode constants."
  ]
  node [
    id 319
    label "public Object clone()"
    type "method"
    comment "&#10;     * Returns a new collator with the same decomposition mode and&#10;     * strength value as this collator.&#10;     *&#10;     * @return a shallow copy of this collator.&#10;     * @see java.lang.Cloneable&#10;     "
  ]
  node [
    id 320
    label "public boolean equals(Object that)"
    type "method"
    comment "&#10;     * Compares the equality of two Collators.&#10;     * @param that the Collator to be compared with this.&#10;     * @return true if this Collator is the same as that Collator;&#10;     * false otherwise.&#10;     "
  ]
  node [
    id 321
    label "public abstract int hashCode()"
    type "method"
    comment "&#10;     * Generates the hash code for this Collator.&#10;     "
  ]
  node [
    id 322
    label "public boolean contentEquals(StringBuffer sb)"
    type "method"
    comment "&#10;     * Compares this string to the specified {@code StringBuffer}.  The result&#10;     * is {@code true} if and only if this {@code String} represents the same&#10;     * sequence of characters as the specified {@code StringBuffer}. This method&#10;     * synchronizes on the {@code StringBuffer}.&#10;     *&#10;     * <p>For finer-grained String comparison, refer to&#10;     * {@link java.text.Collator}.&#10;     *&#10;     * @param  sb&#10;     *         The {@code StringBuffer} to compare this {@code String} against&#10;     *&#10;     * @return  {@code true} if this {@code String} represents the same&#10;     *          sequence of characters as the specified {@code StringBuffer},&#10;     *          {@code false} otherwise&#10;     *&#10;     * @since  1.4&#10;     "
  ]
  node [
    id 323
    label "public boolean contentEquals(CharSequence cs)"
    type "method"
    comment "&#10;     * Compares this string to the specified {@code CharSequence}.  The&#10;     * result is {@code true} if and only if this {@code String} represents the&#10;     * same sequence of char values as the specified sequence. Note that if the&#10;     * {@code CharSequence} is a {@code StringBuffer} then the method&#10;     * synchronizes on it.&#10;     *&#10;     * <p>For finer-grained String comparison, refer to&#10;     * {@link java.text.Collator}.&#10;     *&#10;     * @param  cs&#10;     *         The sequence to compare this {@code String} against&#10;     *&#10;     * @return  {@code true} if this {@code String} represents the same&#10;     *          sequence of char values as the specified sequence, {@code&#10;     *          false} otherwise&#10;     *&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 324
    label "public boolean equalsIgnoreCase(String anotherString)"
    type "method"
    comment "&#10;     * Compares this {@code String} to another {@code String}, ignoring case&#10;     * considerations.  Two strings are considered equal ignoring case if they&#10;     * are of the same length and corresponding characters in the two strings&#10;     * are equal ignoring case.&#10;     *&#10;     * <p> Two characters {@code c1} and {@code c2} are considered the same&#10;     * ignoring case if at least one of the following is true:&#10;     * <ul>&#10;     *   <li> The two characters are the same (as compared by the&#10;     *        {@code ==} operator)&#10;     *   <li> Calling {@code Character.toLowerCase(Character.toUpperCase(char))}&#10;     *        on each character produces the same result&#10;     * </ul>&#10;     *&#10;     * <p>Note that this method does <em>not</em> take locale into account, and&#10;     * will result in unsatisfactory results for certain locales.  The&#10;     * {@link java.text.Collator} class provides locale-sensitive comparison.&#10;     *&#10;     * @param  anotherString&#10;     *         The {@code String} to compare this {@code String} against&#10;     *&#10;     * @return  {@code true} if the argument is not {@code null} and it&#10;     *          represents an equivalent {@code String} ignoring case; {@code&#10;     *          false} otherwise&#10;     *&#10;     * @see  #equals(Object)&#10;     "
  ]
  node [
    id 325
    label "public native int compareTo(String anotherString)"
    type "method"
    comment "&#10;    public int compareTo(String anotherString) {&#10;        byte v1[] = value;&#10;        byte v2[] = anotherString.value;&#10;        if (coder() == anotherString.coder()) {&#10;            return isLatin1() ? StringLatin1.compareTo(v1, v2)&#10;                              : StringUTF16.compareTo(v1, v2);&#10;        }&#10;        return isLatin1() ? StringLatin1.compareToUTF16(v1, v2)&#10;                          : StringUTF16.compareToLatin1(v1, v2);&#10;     }&#10;    "
  ]
  node [
    id 326
    label "public int compareToIgnoreCase(String str)"
    type "method"
    comment "&#10;     * Compares two strings lexicographically, ignoring case&#10;     * differences. This method returns an integer whose sign is that of&#10;     * calling {@code compareTo} with normalized versions of the strings&#10;     * where case differences have been eliminated by calling&#10;     * {@code Character.toLowerCase(Character.toUpperCase(character))} on&#10;     * each character.&#10;     * <p>&#10;     * Note that this method does <em>not</em> take locale into account,&#10;     * and will result in an unsatisfactory ordering for certain locales.&#10;     * The {@link java.text.Collator} class provides locale-sensitive comparison.&#10;     *&#10;     * @param   str   the {@code String} to be compared.&#10;     * @return  a negative integer, zero, or a positive integer as the&#10;     *          specified String is greater than, equal to, or less&#10;     *          than this String, ignoring case considerations.&#10;     * @see     java.text.Collator&#10;     * @since   1.2&#10;     "
  ]
  node [
    id 327
    label "public boolean regionMatches(int toffset, String other, int ooffset, int len)"
    type "method"
    comment "&#10;     * Tests if two string regions are equal.&#10;     * <p>&#10;     * A substring of this {@code String} object is compared to a substring&#10;     * of the argument other. The result is true if these substrings&#10;     * represent identical character sequences. The substring of this&#10;     * {@code String} object to be compared begins at index {@code toffset}&#10;     * and has length {@code len}. The substring of other to be compared&#10;     * begins at index {@code ooffset} and has length {@code len}. The&#10;     * result is {@code false} if and only if at least one of the following&#10;     * is true:&#10;     * <ul><li>{@code toffset} is negative.&#10;     * <li>{@code ooffset} is negative.&#10;     * <li>{@code toffset+len} is greater than the length of this&#10;     * {@code String} object.&#10;     * <li>{@code ooffset+len} is greater than the length of the other&#10;     * argument.&#10;     * <li>There is some nonnegative integer <i>k</i> less than {@code len}&#10;     * such that:&#10;     * {@code this.charAt(toffset + }<i>k</i>{@code ) != other.charAt(ooffset + }&#10;     * <i>k</i>{@code )}&#10;     * </ul>&#10;     *&#10;     * <p>Note that this method does <em>not</em> take locale into account.  The&#10;     * {@link java.text.Collator} class provides locale-sensitive comparison.&#10;     *&#10;     * @param   toffset   the starting offset of the subregion in this string.&#10;     * @param   other     the string argument.&#10;     * @param   ooffset   the starting offset of the subregion in the string&#10;     *                    argument.&#10;     * @param   len       the number of characters to compare.&#10;     * @return  {@code true} if the specified subregion of this string&#10;     *          exactly matches the specified subregion of the string argument;&#10;     *          {@code false} otherwise.&#10;     "
  ]
  node [
    id 328
    label "public boolean regionMatches(boolean ignoreCase, int toffset, String other, int ooffset, int len)"
    type "method"
    comment "&#10;     * Tests if two string regions are equal.&#10;     * <p>&#10;     * A substring of this {@code String} object is compared to a substring&#10;     * of the argument {@code other}. The result is {@code true} if these&#10;     * substrings represent character sequences that are the same, ignoring&#10;     * case if and only if {@code ignoreCase} is true. The substring of&#10;     * this {@code String} object to be compared begins at index&#10;     * {@code toffset} and has length {@code len}. The substring of&#10;     * {@code other} to be compared begins at index {@code ooffset} and&#10;     * has length {@code len}. The result is {@code false} if and only if&#10;     * at least one of the following is true:&#10;     * <ul><li>{@code toffset} is negative.&#10;     * <li>{@code ooffset} is negative.&#10;     * <li>{@code toffset+len} is greater than the length of this&#10;     * {@code String} object.&#10;     * <li>{@code ooffset+len} is greater than the length of the other&#10;     * argument.&#10;     * <li>{@code ignoreCase} is {@code false} and there is some nonnegative&#10;     * integer <i>k</i> less than {@code len} such that:&#10;     * <blockquote><pre>&#10;     * this.charAt(toffset+k) != other.charAt(ooffset+k)&#10;     * </pre></blockquote>&#10;     * <li>{@code ignoreCase} is {@code true} and there is some nonnegative&#10;     * integer <i>k</i> less than {@code len} such that:&#10;     * <blockquote><pre>&#10;     * Character.toLowerCase(Character.toUpperCase(this.charAt(toffset+k))) !=&#10;     Character.toLowerCase(Character.toUpperCase(other.charAt(ooffset+k)))&#10;     * </pre></blockquote>&#10;     * </ul>&#10;     *&#10;     * <p>Note that this method does <em>not</em> take locale into account,&#10;     * and will result in unsatisfactory results for certain locales when&#10;     * {@code ignoreCase} is {@code true}.  The {@link java.text.Collator} class&#10;     * provides locale-sensitive comparison.&#10;     *&#10;     * @param   ignoreCase   if {@code true}, ignore case when comparing&#10;     *                       characters.&#10;     * @param   toffset      the starting offset of the subregion in this&#10;     *                       string.&#10;     * @param   other        the string argument.&#10;     * @param   ooffset      the starting offset of the subregion in the string&#10;     *                       argument.&#10;     * @param   len          the number of characters to compare.&#10;     * @return  {@code true} if the specified subregion of this string&#10;     *          matches the specified subregion of the string argument;&#10;     *          {@code false} otherwise. Whether the matching is exact&#10;     *          or case insensitive depends on the {@code ignoreCase}&#10;     *          argument.&#10;     "
  ]
  node [
    id 329
    label "public boolean startsWith(String prefix, int toffset)"
    type "method"
    comment "&#10;     * Tests if the substring of this string beginning at the&#10;     * specified index starts with the specified prefix.&#10;     *&#10;     * @param   prefix    the prefix.&#10;     * @param   toffset   where to begin looking in this string.&#10;     * @return  {@code true} if the character sequence represented by the&#10;     *          argument is a prefix of the substring of this object starting&#10;     *          at index {@code toffset}; {@code false} otherwise.&#10;     *          The result is {@code false} if {@code toffset} is&#10;     *          negative or greater than the length of this&#10;     *          {@code String} object; otherwise the result is the same&#10;     *          as the result of the expression&#10;     *          <pre>&#10;     *          this.substring(toffset).startsWith(prefix)&#10;     *          </pre>&#10;     "
  ]
  node [
    id 330
    label "public boolean startsWith(String prefix)"
    type "method"
    comment "&#10;     * Tests if this string starts with the specified prefix.&#10;     *&#10;     * @param   prefix   the prefix.&#10;     * @return  {@code true} if the character sequence represented by the&#10;     *          argument is a prefix of the character sequence represented by&#10;     *          this string; {@code false} otherwise.&#10;     *          Note also that {@code true} will be returned if the&#10;     *          argument is an empty string or is equal to this&#10;     *          {@code String} object as determined by the&#10;     *          {@link #equals(Object)} method.&#10;     * @since   1.0&#10;     "
  ]
  node [
    id 331
    label "public boolean endsWith(String suffix)"
    type "method"
    comment "&#10;     * Tests if this string ends with the specified suffix.&#10;     *&#10;     * @param   suffix   the suffix.&#10;     * @return  {@code true} if the character sequence represented by the&#10;     *          argument is a suffix of the character sequence represented by&#10;     *          this object; {@code false} otherwise. Note that the&#10;     *          result will be {@code true} if the argument is the&#10;     *          empty string or is equal to this {@code String} object&#10;     *          as determined by the {@link #equals(Object)} method.&#10;     "
  ]
  node [
    id 332
    label "public int indexOf(int ch)"
    type "method"
    comment "&#10;     * Returns the index within this string of the first occurrence of&#10;     * the specified character. If a character with value&#10;     * {@code ch} occurs in the character sequence represented by&#10;     * this {@code String} object, then the index (in Unicode&#10;     * code units) of the first such occurrence is returned. For&#10;     * values of {@code ch} in the range from 0 to 0xFFFF&#10;     * (inclusive), this is the smallest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * this.charAt(<i>k</i>) == ch&#10;     * </pre></blockquote>&#10;     * is true. For other values of {@code ch}, it is the&#10;     * smallest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * this.codePointAt(<i>k</i>) == ch&#10;     * </pre></blockquote>&#10;     * is true. In either case, if no such character occurs in this&#10;     * string, then {@code -1} is returned.&#10;     *&#10;     * @param   ch   a character (Unicode code point).&#10;     * @return  the index of the first occurrence of the character in the&#10;     *          character sequence represented by this object, or&#10;     *          {@code -1} if the character does not occur.&#10;     "
  ]
  node [
    id 333
    label "public int indexOf(int ch, int fromIndex)"
    type "method"
    comment "&#10;     * Returns the index within this string of the first occurrence of the&#10;     * specified character, starting the search at the specified index.&#10;     * <p>&#10;     * If a character with value {@code ch} occurs in the&#10;     * character sequence represented by this {@code String}&#10;     * object at an index no smaller than {@code fromIndex}, then&#10;     * the index of the first such occurrence is returned. For values&#10;     * of {@code ch} in the range from 0 to 0xFFFF (inclusive),&#10;     * this is the smallest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * (this.charAt(<i>k</i>) == ch) {@code &#38;&#38;} (<i>k</i> &#38;gt;= fromIndex)&#10;     * </pre></blockquote>&#10;     * is true. For other values of {@code ch}, it is the&#10;     * smallest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * (this.codePointAt(<i>k</i>) == ch) {@code &#38;&#38;} (<i>k</i> &#38;gt;= fromIndex)&#10;     * </pre></blockquote>&#10;     * is true. In either case, if no such character occurs in this&#10;     * string at or after position {@code fromIndex}, then&#10;     * {@code -1} is returned.&#10;     *&#10;     * <p>&#10;     * There is no restriction on the value of {@code fromIndex}. If it&#10;     * is negative, it has the same effect as if it were zero: this entire&#10;     * string may be searched. If it is greater than the length of this&#10;     * string, it has the same effect as if it were equal to the length of&#10;     * this string: {@code -1} is returned.&#10;     *&#10;     * <p>All indices are specified in {@code char} values&#10;     * (Unicode code units).&#10;     *&#10;     * @param   ch          a character (Unicode code point).&#10;     * @param   fromIndex   the index to start the search from.&#10;     * @return  the index of the first occurrence of the character in the&#10;     *          character sequence represented by this object that is greater&#10;     *          than or equal to {@code fromIndex}, or {@code -1}&#10;     *          if the character does not occur.&#10;     "
  ]
  node [
    id 334
    label "private int indexOfSupplementary(int ch, int fromIndex)"
    type "method"
    comment "&#10;     * Handles (rare) calls of indexOf with a supplementary character.&#10;     "
  ]
  node [
    id 335
    label "public int lastIndexOf(int ch)"
    type "method"
    comment "&#10;     * Returns the index within this string of the last occurrence of&#10;     * the specified character. For values of {@code ch} in the&#10;     * range from 0 to 0xFFFF (inclusive), the index (in Unicode code&#10;     * units) returned is the largest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * this.charAt(<i>k</i>) == ch&#10;     * </pre></blockquote>&#10;     * is true. For other values of {@code ch}, it is the&#10;     * largest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * this.codePointAt(<i>k</i>) == ch&#10;     * </pre></blockquote>&#10;     * is true.  In either case, if no such character occurs in this&#10;     * string, then {@code -1} is returned.  The&#10;     * {@code String} is searched backwards starting at the last&#10;     * character.&#10;     *&#10;     * @param   ch   a character (Unicode code point).&#10;     * @return  the index of the last occurrence of the character in the&#10;     *          character sequence represented by this object, or&#10;     *          {@code -1} if the character does not occur.&#10;     "
  ]
  node [
    id 336
    label "public int lastIndexOf(int ch, int fromIndex)"
    type "method"
    comment "&#10;     * Returns the index within this string of the last occurrence of&#10;     * the specified character, searching backward starting at the&#10;     * specified index. For values of {@code ch} in the range&#10;     * from 0 to 0xFFFF (inclusive), the index returned is the largest&#10;     * value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * (this.charAt(<i>k</i>) == ch) {@code &#38;&#38;} (<i>k</i> &#38;lt;= fromIndex)&#10;     * </pre></blockquote>&#10;     * is true. For other values of {@code ch}, it is the&#10;     * largest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * (this.codePointAt(<i>k</i>) == ch) {@code &#38;&#38;} (<i>k</i> &#38;lt;= fromIndex)&#10;     * </pre></blockquote>&#10;     * is true. In either case, if no such character occurs in this&#10;     * string at or before position {@code fromIndex}, then&#10;     * {@code -1} is returned.&#10;     *&#10;     * <p>All indices are specified in {@code char} values&#10;     * (Unicode code units).&#10;     *&#10;     * @param   ch          a character (Unicode code point).&#10;     * @param   fromIndex   the index to start the search from. There is no&#10;     *          restriction on the value of {@code fromIndex}. If it is&#10;     *          greater than or equal to the length of this string, it has&#10;     *          the same effect as if it were equal to one less than the&#10;     *          length of this string: this entire string may be searched.&#10;     *          If it is negative, it has the same effect as if it were -1:&#10;     *          -1 is returned.&#10;     * @return  the index of the last occurrence of the character in the&#10;     *          character sequence represented by this object that is less&#10;     *          than or equal to {@code fromIndex}, or {@code -1}&#10;     *          if the character does not occur before that point.&#10;     "
  ]
  node [
    id 337
    label "private int lastIndexOfSupplementary(int ch, int fromIndex)"
    type "method"
    comment "&#10;     * Handles (rare) calls of lastIndexOf with a supplementary character.&#10;     "
  ]
  node [
    id 338
    label "public int indexOf(String str)"
    type "method"
    comment "&#10;     * Returns the index within this string of the first occurrence of the&#10;     * specified substring.&#10;     *&#10;     * <p>The returned index is the smallest value {@code k} for which:&#10;     * <pre>{@code&#10;     * this.startsWith(str, k)&#10;     * }</pre>&#10;     * If no such value of {@code k} exists, then {@code -1} is returned.&#10;     *&#10;     * @param   str   the substring to search for.&#10;     * @return  the index of the first occurrence of the specified substring,&#10;     *          or {@code -1} if there is no such occurrence.&#10;     "
  ]
  node [
    id 339
    label "public int indexOf(String str, int fromIndex)"
    type "method"
    comment "&#10;     * Returns the index within this string of the first occurrence of the&#10;     * specified substring, starting at the specified index.&#10;     *&#10;     * <p>The returned index is the smallest value {@code k} for which:&#10;     * <pre>{@code&#10;     *     k >= Math.min(fromIndex, this.length()) &#38;&#38;&#10;     *                   this.startsWith(str, k)&#10;     * }</pre>&#10;     * If no such value of {@code k} exists, then {@code -1} is returned.&#10;     *&#10;     * @param   str         the substring to search for.&#10;     * @param   fromIndex   the index from which to start the search.&#10;     * @return  the index of the first occurrence of the specified substring,&#10;     *          starting at the specified index,&#10;     *          or {@code -1} if there is no such occurrence.&#10;     "
  ]
  node [
    id 340
    label "private static int indexOf(String source, String target, int fromIndex)"
    type "method"
    comment "&#10;     * The source is the string being searched, and the target is the string being searched for.&#10;     *&#10;     * @param   source       the characters being searched.&#10;     * @param   target       the characters being searched for.&#10;     * @param   fromIndex    the index to begin searching from.&#10;     "
  ]
  node [
    id 341
    label " static int indexOf(byte[] src, byte srcCoder, int srcCount, String tgtStr, int fromIndex)"
    type "method"
    comment "&#10;     * Code shared by String and AbstractStringBuilder to do searches. The&#10;     * source is the character array being searched, and the target&#10;     * is the string being searched for.&#10;     *&#10;     * @param   src       the characters being searched.&#10;     * @param   srcCoder  the coder of the source string.&#10;     * @param   srcCount  length of the source string.&#10;     * @param   tgtStr    the characters being searched for.&#10;     * @param   fromIndex the index to begin searching from.&#10;     "
  ]
  node [
    id 342
    label "public int lastIndexOf(String str)"
    type "method"
    comment "&#10;     * Returns the index within this string of the last occurrence of the&#10;     * specified substring.  The last occurrence of the empty string &#34;&#34;&#10;     * is considered to occur at the index value {@code this.length()}.&#10;     *&#10;     * <p>The returned index is the largest value {@code k} for which:&#10;     * <pre>{@code&#10;     * this.startsWith(str, k)&#10;     * }</pre>&#10;     * If no such value of {@code k} exists, then {@code -1} is returned.&#10;     *&#10;     * @param   str   the substring to search for.&#10;     * @return  the index of the last occurrence of the specified substring,&#10;     *          or {@code -1} if there is no such occurrence.&#10;     "
  ]
  node [
    id 343
    label "public int lastIndexOf(String str, int fromIndex)"
    type "method"
    comment "&#10;     * Returns the index within this string of the last occurrence of the&#10;     * specified substring, searching backward starting at the specified index.&#10;     *&#10;     * <p>The returned index is the largest value {@code k} for which:&#10;     * <pre>{@code&#10;     *     k <= Math.min(fromIndex, this.length()) &#38;&#38;&#10;     *                   this.startsWith(str, k)&#10;     * }</pre>&#10;     * If no such value of {@code k} exists, then {@code -1} is returned.&#10;     *&#10;     * @param   str         the substring to search for.&#10;     * @param   fromIndex   the index to start the search from.&#10;     * @return  the index of the last occurrence of the specified substring,&#10;     *          searching backward from the specified index,&#10;     *          or {@code -1} if there is no such occurrence.&#10;     "
  ]
  node [
    id 344
    label "private static int lastIndexOf(String source, String target, int fromIndex)"
    type "method"
    comment "&#10;     * The source is the string being searched, and the target is the string being searched for.&#10;     *&#10;     * @param   source       the characters being searched.&#10;     * @param   target       the characters being searched for.&#10;     * @param   fromIndex    the index to begin searching from.&#10;     "
  ]
  node [
    id 345
    label " static int lastIndexOf(byte[] src, byte srcCoder, int srcCount, String tgtStr, int fromIndex)"
    type "method"
    comment "&#10;     * Code shared by String and AbstractStringBuilder to do searches. The&#10;     * source is the character array being searched, and the target&#10;     * is the string being searched for.&#10;     *&#10;     * @param   src         the characters being searched.&#10;     * @param   srcCoder    coder handles the mapping between bytes/chars&#10;     * @param   srcCount    count of the source string.&#10;     * @param   tgtStr      the characters being searched for.&#10;     * @param   fromIndex   the index to begin searching from.&#10;     "
  ]
  node [
    id 346
    label " static int lastIndexOf(char[] source, int sourceOffset, int sourceCount, char[] target, int targetOffset, int targetCount, int fromIndex)"
    type "method"
    comment "&#10;     * Code shared by String and StringBuffer to do searches. The&#10;     * source is the character array being searched, and the target&#10;     * is the string being searched for.&#10;     *&#10;     * @param   source       the characters being searched.&#10;     * @param   sourceOffset offset of the source string.&#10;     * @param   sourceCount  count of the source string.&#10;     * @param   target       the characters being searched for.&#10;     * @param   targetOffset offset of the target string.&#10;     * @param   targetCount  count of the target string.&#10;     * @param   fromIndex    the index to begin searching from.&#10;     "
  ]
  node [
    id 347
    label "public String substring(int beginIndex)"
    type "method"
    comment "&#10;     * Returns a string that is a substring of this string. The&#10;     * substring begins with the character at the specified index and&#10;     * extends to the end of this string. <p>&#10;     * Examples:&#10;     * <blockquote><pre>&#10;     * &#34;unhappy&#34;.substring(2) returns &#34;happy&#34;&#10;     * &#34;Harbison&#34;.substring(3) returns &#34;bison&#34;&#10;     * &#34;emptiness&#34;.substring(9) returns &#34;&#34; (an empty string)&#10;     * </pre></blockquote>&#10;     *&#10;     * @param      beginIndex   the beginning index, inclusive.&#10;     * @return     the specified substring.&#10;     * @exception  IndexOutOfBoundsException  if&#10;     *             {@code beginIndex} is negative or larger than the&#10;     *             length of this {@code String} object.&#10;     "
  ]
  node [
    id 348
    label "public String substring(int beginIndex, int endIndex)"
    type "method"
    comment "&#10;     * Returns a string that is a substring of this string. The&#10;     * substring begins at the specified {@code beginIndex} and&#10;     * extends to the character at index {@code endIndex - 1}.&#10;     * Thus the length of the substring is {@code endIndex-beginIndex}.&#10;     * <p>&#10;     * Examples:&#10;     * <blockquote><pre>&#10;     * &#34;hamburger&#34;.substring(4, 8) returns &#34;urge&#34;&#10;     * &#34;smiles&#34;.substring(1, 5) returns &#34;mile&#34;&#10;     * </pre></blockquote>&#10;     *&#10;     * @param      beginIndex   the beginning index, inclusive.&#10;     * @param      endIndex     the ending index, exclusive.&#10;     * @return     the specified substring.&#10;     * @exception  IndexOutOfBoundsException  if the&#10;     *             {@code beginIndex} is negative, or&#10;     *             {@code endIndex} is larger than the length of&#10;     *             this {@code String} object, or&#10;     *             {@code beginIndex} is larger than&#10;     *             {@code endIndex}.&#10;     "
  ]
  node [
    id 349
    label "private native String fastSubstring(int start, int length)"
    type "method"
    comment " BEGIN Android-added: Native method to access char storage managed by runtime."
  ]
  node [
    id 350
    label "public CharSequence subSequence(int beginIndex, int endIndex)"
    type "method"
    comment "&#10;     * Returns a character sequence that is a subsequence of this sequence.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     *&#10;     * <blockquote><pre>&#10;     * str.subSequence(begin,&#38;nbsp;end)</pre></blockquote>&#10;     *&#10;     * behaves in exactly the same way as the invocation&#10;     *&#10;     * <blockquote><pre>&#10;     * str.substring(begin,&#38;nbsp;end)</pre></blockquote>&#10;     *&#10;     * @apiNote&#10;     * This method is defined so that the {@code String} class can implement&#10;     * the {@link CharSequence} interface.&#10;     *&#10;     * @param   beginIndex   the begin index, inclusive.&#10;     * @param   endIndex     the end index, exclusive.&#10;     * @return  the specified subsequence.&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          if {@code beginIndex} or {@code endIndex} is negative,&#10;     *          if {@code endIndex} is greater than {@code length()},&#10;     *          or if {@code beginIndex} is greater than {@code endIndex}&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 351
    label "CharSequence"
  ]
  node [
    id 352
    label "public native String concat(String str)"
    type "method"
    comment "&#10;    public String concat(String str) {&#10;        if (str.isEmpty()) {&#10;            return this;&#10;        }&#10;        if (coder() == str.coder()) {&#10;            byte[] val = this.value;&#10;            byte[] oval = str.value;&#10;            int len = val.length + oval.length;&#10;            byte[] buf = Arrays.copyOf(val, len);&#10;            System.arraycopy(oval, 0, buf, val.length, oval.length);&#10;            return new String(buf, coder);&#10;        }&#10;        int len = length();&#10;        int olen = str.length();&#10;        byte[] buf = StringUTF16.newBytesFor(len + olen);&#10;        getBytes(buf, 0, UTF16);&#10;        str.getBytes(buf, len, UTF16);&#10;        return new String(buf, UTF16);&#10;    }&#10;    "
  ]
  node [
    id 353
    label "public String replace(char oldChar, char newChar)"
    type "method"
    comment "&#10;     * Returns a string resulting from replacing all occurrences of&#10;     * {@code oldChar} in this string with {@code newChar}.&#10;     * <p>&#10;     * If the character {@code oldChar} does not occur in the&#10;     * character sequence represented by this {@code String} object,&#10;     * then a reference to this {@code String} object is returned.&#10;     * Otherwise, a {@code String} object is returned that&#10;     * represents a character sequence identical to the character sequence&#10;     * represented by this {@code String} object, except that every&#10;     * occurrence of {@code oldChar} is replaced by an occurrence&#10;     * of {@code newChar}.&#10;     * <p>&#10;     * Examples:&#10;     * <blockquote><pre>&#10;     * &#34;mesquite in your cellar&#34;.replace('e', 'o')&#10;     *         returns &#34;mosquito in your collar&#34;&#10;     * &#34;the war of baronets&#34;.replace('r', 'y')&#10;     *         returns &#34;the way of bayonets&#34;&#10;     * &#34;sparring with a purple porpoise&#34;.replace('p', 't')&#10;     *         returns &#34;starring with a turtle tortoise&#34;&#10;     * &#34;JonL&#34;.replace('q', 'x') returns &#34;JonL&#34; (no change)&#10;     * </pre></blockquote>&#10;     *&#10;     * @param   oldChar   the old character.&#10;     * @param   newChar   the new character.&#10;     * @return  a string derived from this string by replacing every&#10;     *          occurrence of {@code oldChar} with {@code newChar}.&#10;     "
  ]
  node [
    id 354
    label "private native String doReplace(char oldChar, char newChar)"
    type "method"
    comment " Implementation of replace(char oldChar, char newChar) called when we found a match."
  ]
  node [
    id 355
    label "public boolean matches(String regex)"
    type "method"
    comment "&#10;     * Tells whether or not this string matches the given <a&#10;     * href=&#34;../util/regex/Pattern.html#sum&#34;>regular expression</a>.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <i>str</i>{@code .matches(}<i>regex</i>{@code )} yields exactly the&#10;     * same result as the expression&#10;     *&#10;     * <blockquote>&#10;     * {@link java.util.regex.Pattern}.{@link java.util.regex.Pattern#matches(String,CharSequence)&#10;     * matches(<i>regex</i>, <i>str</i>)}&#10;     * </blockquote>&#10;     *&#10;     * @param   regex&#10;     *          the regular expression to which this string is to be matched&#10;     *&#10;     * @return  {@code true} if, and only if, this string matches the&#10;     *          given regular expression&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          if the regular expression's syntax is invalid&#10;     *&#10;     * @see java.util.regex.Pattern&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 356
    label "java.util.regex.Pattern"
    type "class"
    comment ""
  ]
  node [
    id 357
    label "public static Pattern compile(String regex)"
    type "method"
    comment "&#10;     * Compiles the given regular expression into a pattern.&#10;     *&#10;     * @param  regex&#10;     *         The expression to be compiled&#10;     * @return the given regular expression compiled into a pattern&#10;     * @throws  PatternSyntaxException&#10;     *          If the expression's syntax is invalid&#10;     "
  ]
  node [
    id 358
    label "public static Pattern compile(String regex, int flags)"
    type "method"
    comment "&#10;     * Compiles the given regular expression into a pattern with the given&#10;     * flags.&#10;     *&#10;     * @param  regex&#10;     *         The expression to be compiled&#10;     *&#10;     * @param  flags&#10;     *         Match flags, a bit mask that may include&#10;     *         {@link #CASE_INSENSITIVE}, {@link #MULTILINE}, {@link #DOTALL},&#10;     *         {@link #UNICODE_CASE}, {@link #UNIX_LINES}, {@link #LITERAL},&#10;     *         and {@link #COMMENTS}&#10;     *&#10;     * @return the given regular expression compiled into a pattern with the given flags&#10;     * @throws  IllegalArgumentException&#10;     *          If bit values other than those corresponding to the defined&#10;     *          match flags are set in {@code flags}&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          If the expression's syntax is invalid&#10;     "
  ]
  node [
    id 359
    label "UNIX_LINES"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 360
    label "MULTILINE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 361
    label "LITERAL"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 362
    label "CASE_INSENSITIVE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 363
    label "UNICODE_CASE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 364
    label "DOTALL"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 365
    label "COMMENTS"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 366
    label "public String pattern()"
    type "method"
    comment "&#10;     * Returns the regular expression from which this pattern was compiled.&#10;     *&#10;     * @return  The source of this pattern&#10;     "
  ]
  node [
    id 367
    label "public Matcher matcher(CharSequence input)"
    type "method"
    comment "&#10;     * Creates a matcher that will match the given input against this pattern.&#10;     *&#10;     * @param  input&#10;     *         The character sequence to be matched&#10;     *&#10;     * @return  A new matcher for this pattern&#10;     "
  ]
  node [
    id 368
    label "public int flags()"
    type "method"
    comment "&#10;     * Returns this pattern's match flags.&#10;     *&#10;     * @return  The match flags specified when this pattern was compiled&#10;     "
  ]
  node [
    id 369
    label "public static boolean matches(String regex, CharSequence input)"
    type "method"
    comment "&#10;     * Compiles the given regular expression and attempts to match the given&#10;     * input against it.&#10;     *&#10;     * <p> An invocation of this convenience method of the form&#10;     *&#10;     * <blockquote><pre>&#10;     * Pattern.matches(regex, input);</pre></blockquote>&#10;     *&#10;     * behaves in exactly the same way as the expression&#10;     *&#10;     * <blockquote><pre>&#10;     * Pattern.compile(regex).matcher(input).matches()</pre></blockquote>&#10;     *&#10;     * <p> If a pattern is to be used multiple times, compiling it once and reusing&#10;     * it will be more efficient than invoking this method each time.  </p>&#10;     *&#10;     * @param  regex&#10;     *         The expression to be compiled&#10;     *&#10;     * @param  input&#10;     *         The character sequence to be matched&#10;     * @return whether or not the regular expression matches on the input&#10;     * @throws  PatternSyntaxException&#10;     *          If the expression's syntax is invalid&#10;     "
  ]
  node [
    id 370
    label "public String[] split(CharSequence input, int limit)"
    type "method"
    comment "&#10;     * Splits the given input sequence around matches of this pattern.&#10;     *&#10;     * <p> The array returned by this method contains each substring of the&#10;     * input sequence that is terminated by another subsequence that matches&#10;     * this pattern or is terminated by the end of the input sequence.  The&#10;     * substrings in the array are in the order in which they occur in the&#10;     * input. If this pattern does not match any subsequence of the input then&#10;     * the resulting array has just one element, namely the input sequence in&#10;     * string form.&#10;     *&#10;     * <p> When there is a positive-width match at the beginning of the input&#10;     * sequence then an empty leading substring is included at the beginning&#10;     * of the resulting array. A zero-width match at the beginning however&#10;     * can only produce such an empty leading substring for apps running on or&#10;     * targeting API versions <= 28.&#10;     *&#10;     * <p> The {@code limit} parameter controls the number of times the&#10;     * pattern is applied and therefore affects the length of the resulting&#10;     * array.&#10;     * <ul>&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is positive then the pattern will be applied&#10;     *    at most <i>limit</i>&#38;nbsp;-&#38;nbsp;1 times, the array's length will be&#10;     *    no greater than <i>limit</i>, and the array's last entry will contain&#10;     *    all input beyond the last matched delimiter.</p></li>&#10;     *&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is zero then the pattern will be applied as&#10;     *    many times as possible, the array can have any length, and trailing&#10;     *    empty strings will be discarded.</p></li>&#10;     *&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is negative then the pattern will be applied&#10;     *    as many times as possible and the array can have any length.</p></li>&#10;     * </ul>&#10;     *&#10;     * <p> The input {@code &#34;boo:and:foo&#34;}, for example, yields the following&#10;     * results with these parameters:&#10;     *&#10;     * <table class=&#34;plain&#34; style=&#34;margin-left:2em;&#34;>&#10;     * <caption style=&#34;display:none&#34;>Split example showing regex, limit, and result</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *     <th scope=&#34;col&#34;>Regex</th>&#10;     *     <th scope=&#34;col&#34;>Limit</th>&#10;     *     <th scope=&#34;col&#34;>Result</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr><th scope=&#34;row&#34; rowspan=&#34;3&#34; style=&#34;font-weight:normal&#34;>:</th>&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>2</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and:foo&#34; }}</td></tr>&#10;     * <tr><!-- : -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>5</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><!-- : -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>-2</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><th scope=&#34;row&#34; rowspan=&#34;3&#34; style=&#34;font-weight:normal&#34;>o</th>&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>5</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34;, &#34;&#34;, &#34;&#34; }}</td></tr>&#10;     * <tr><!-- o -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>-2</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34;, &#34;&#34;, &#34;&#34; }}</td></tr>&#10;     * <tr><!-- o -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>0</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34; }}</td></tr>&#10;     * </tbody>&#10;     * </table>&#10;     *&#10;     * @param  input&#10;     *         The character sequence to be split&#10;     *&#10;     * @param  limit&#10;     *         The result threshold, as described above&#10;     *&#10;     * @return  The array of strings computed by splitting the input&#10;     *          around matches of this pattern&#10;     "
  ]
  node [
    id 371
    label "public String[] split(CharSequence input)"
    type "method"
    comment "&#10;     * Splits the given input sequence around matches of this pattern.&#10;     *&#10;     * <p> This method works as if by invoking the two-argument {@link&#10;     * #split(java.lang.CharSequence, int) split} method with the given input&#10;     * sequence and a limit argument of zero.  Trailing empty strings are&#10;     * therefore not included in the resulting array. </p>&#10;     *&#10;     * <p> The input {@code &#34;boo:and:foo&#34;}, for example, yields the following&#10;     * results with these expressions:&#10;     *&#10;     * <table class=&#34;plain&#34; style=&#34;margin-left:2em&#34;>&#10;     * <caption style=&#34;display:none&#34;>Split examples showing regex and result</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *  <th scope=&#34;col&#34;>Regex</th>&#10;     *  <th scope=&#34;col&#34;>Result</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr><th scope=&#34;row&#34; style=&#34;text-weight:normal&#34;>:</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><th scope=&#34;row&#34; style=&#34;text-weight:normal&#34;>o</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34; }}</td></tr>&#10;     * </tbody>&#10;     * </table>&#10;     *&#10;     *&#10;     * @param  input&#10;     *         The character sequence to be split&#10;     *&#10;     * @return  The array of strings computed by splitting the input&#10;     *          around matches of this pattern&#10;     "
  ]
  node [
    id 372
    label "split(java.lang.CharSequence"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 373
    label "public static String quote(String s)"
    type "method"
    comment "&#10;     * Returns a literal pattern {@code String} for the specified&#10;     * {@code String}.&#10;     *&#10;     * <p>This method produces a {@code String} that can be used to&#10;     * create a {@code Pattern} that would match the string&#10;     * {@code s} as if it were a literal pattern.</p> Metacharacters&#10;     * or escape sequences in the input sequence will be given no special&#10;     * meaning.&#10;     *&#10;     * @param  s The string to be literalized&#10;     * @return  A literal string replacement&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 374
    label "private void readObject(java.io.ObjectInputStream s) throws java.io.IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Recompile the Pattern instance from a stream.  The original pattern&#10;     * string is read in and the object tree is recompiled from it.&#10;     "
  ]
  node [
    id 375
    label "private void compile() throws PatternSyntaxException"
    type "method"
    comment " Use native implementation instead of > 3000 lines of helper methods."
  ]
  node [
    id 376
    label "public Predicate<String> asPredicate()"
    type "method"
    comment "&#10;     * Creates a predicate that tests if this pattern is found in a given input&#10;     * string.&#10;     *&#10;     * @apiNote&#10;     * This method creates a predicate that behaves as if it creates a matcher&#10;     * from the input sequence and then calls {@code find}, for example a&#10;     * predicate of the form:&#10;     * <pre>{@code&#10;     *   s -> matcher(s).find();&#10;     * }</pre>&#10;     *&#10;     * @return  The predicate which can be used for finding a match on a&#10;     *          subsequence of a string&#10;     * @since   1.8&#10;     * @see     Matcher#find&#10;     "
  ]
  node [
    id 377
    label "public Predicate<String> asMatchPredicate()"
    type "method"
    comment "&#10;     * Creates a predicate that tests if this pattern matches a given input string.&#10;     *&#10;     * @apiNote&#10;     * This method creates a predicate that behaves as if it creates a matcher&#10;     * from the input sequence and then calls {@code matches}, for example a&#10;     * predicate of the form:&#10;     * <pre>{@code&#10;     *   s -> matcher(s).matches();&#10;     * }</pre>&#10;     *&#10;     * @return  The predicate which can be used for matching an input string&#10;     *          against this pattern.&#10;     * @since   11&#10;     * @see     Matcher#matches&#10;     "
  ]
  node [
    id 378
    label "public Stream<String> splitAsStream(final CharSequence input)"
    type "method"
    comment "&#10;     * Creates a stream from the given input sequence around matches of this&#10;     * pattern.&#10;     *&#10;     * <p> The stream returned by this method contains each substring of the&#10;     * input sequence that is terminated by another subsequence that matches&#10;     * this pattern or is terminated by the end of the input sequence.  The&#10;     * substrings in the stream are in the order in which they occur in the&#10;     * input. Trailing empty strings will be discarded and not encountered in&#10;     * the stream.&#10;     *&#10;     * <p> If this pattern does not match any subsequence of the input then&#10;     * the resulting stream has just one element, namely the input sequence in&#10;     * string form.&#10;     *&#10;     * <p> When there is a positive-width match at the beginning of the input&#10;     * sequence then an empty leading substring is included at the beginning&#10;     * of the stream. A zero-width match at the beginning however never produces&#10;     * such empty leading substring.&#10;     *&#10;     * <p> If the input sequence is mutable, it must remain constant during the&#10;     * execution of the terminal stream operation.  Otherwise, the result of the&#10;     * terminal stream operation is undefined.&#10;     *&#10;     * @param   input&#10;     *          The character sequence to be split&#10;     *&#10;     * @return  The stream of strings computed by splitting the input&#10;     *          around matches of this pattern&#10;     * @see     #split(CharSequence)&#10;     * @since   1.8&#10;     "
  ]
  node [
    id 379
    label "public boolean contains(CharSequence s)"
    type "method"
    comment "&#10;     * Returns true if and only if this string contains the specified&#10;     * sequence of char values.&#10;     *&#10;     * @param s the sequence to search for&#10;     * @return true if this string contains {@code s}, false otherwise&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 380
    label "public String replaceFirst(String regex, String replacement)"
    type "method"
    comment "&#10;     * Replaces the first substring of this string that matches the given <a&#10;     * href=&#34;../util/regex/Pattern.html#sum&#34;>regular expression</a> with the&#10;     * given replacement.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <i>str</i>{@code .replaceFirst(}<i>regex</i>{@code ,} <i>repl</i>{@code )}&#10;     * yields exactly the same result as the expression&#10;     *&#10;     * <blockquote>&#10;     * <code>&#10;     * {@link java.util.regex.Pattern}.{@link&#10;     * java.util.regex.Pattern#compile compile}(<i>regex</i>).{@link&#10;     * java.util.regex.Pattern#matcher(java.lang.CharSequence) matcher}(<i>str</i>).{@link&#10;     * java.util.regex.Matcher#replaceFirst replaceFirst}(<i>repl</i>)&#10;     * </code>&#10;     * </blockquote>&#10;     *&#10;     *<p>&#10;     * Note that backslashes ({@code \}) and dollar signs ({@code $}) in the&#10;     * replacement string may cause the results to be different than if it were&#10;     * being treated as a literal replacement string; see&#10;     * {@link java.util.regex.Matcher#replaceFirst}.&#10;     * Use {@link java.util.regex.Matcher#quoteReplacement} to suppress the special&#10;     * meaning of these characters, if desired.&#10;     *&#10;     * @param   regex&#10;     *          the regular expression to which this string is to be matched&#10;     * @param   replacement&#10;     *          the string to be substituted for the first match&#10;     *&#10;     * @return  The resulting {@code String}&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          if the regular expression's syntax is invalid&#10;     *&#10;     * @see java.util.regex.Pattern&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 381
    label "replaceFirst"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 382
    label "java.util.regex.Matcher"
    type "class"
    comment ""
  ]
  node [
    id 383
    label "public Pattern pattern()"
    type "method"
    comment "&#10;     * Returns the pattern that is interpreted by this matcher.&#10;     *&#10;     * @return  The pattern for which this matcher was created&#10;     "
  ]
  node [
    id 384
    label "public MatchResult toMatchResult()"
    type "method"
    comment "&#10;     * Returns the match state of this matcher as a {@link MatchResult}.&#10;     * The result is unaffected by subsequent operations performed upon this&#10;     * matcher.&#10;     *&#10;     * @return  a {@code MatchResult} with the state of this matcher&#10;     * @throws IllegalStateException if no match is found.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 385
    label "MatchResult"
  ]
  node [
    id 386
    label "public Matcher usePattern(Pattern newPattern)"
    type "method"
    comment "&#10;     * Changes the {@code Pattern} that this {@code Matcher} uses to&#10;     * find matches with.&#10;     *&#10;     * <p> This method causes this matcher to lose information&#10;     * about the groups of the last match that occurred. The&#10;     * matcher's position in the input is maintained and its&#10;     * last append position is unaffected.</p>&#10;     *&#10;     * @param  newPattern&#10;     *         The new pattern used by this matcher&#10;     * @return  This matcher&#10;     * @throws  IllegalArgumentException&#10;     *          If newPattern is {@code null}&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 387
    label "public Matcher reset()"
    type "method"
    comment "&#10;     * Resets this matcher.&#10;     *&#10;     * <p> Resetting a matcher discards all of its explicit state information&#10;     * and sets its append position to zero. The matcher's region is set to the&#10;     * default region, which is its entire character sequence. The anchoring&#10;     * and transparency of this matcher's region boundaries are unaffected.&#10;     *&#10;     * @return  This matcher&#10;     "
  ]
  node [
    id 388
    label "public Matcher reset(CharSequence input)"
    type "method"
    comment "&#10;     * Resets this matcher with a new input sequence.&#10;     *&#10;     * <p> Resetting a matcher discards all of its explicit state information&#10;     * and sets its append position to zero.  The matcher's region is set to&#10;     * the default region, which is its entire character sequence.  The&#10;     * anchoring and transparency of this matcher's region boundaries are&#10;     * unaffected.&#10;     *&#10;     * @param  input&#10;     *         The new input character sequence&#10;     *&#10;     * @return  This matcher&#10;     "
  ]
  node [
    id 389
    label "public int start()"
    type "method"
    comment "&#10;     * Returns the start index of the previous match.&#10;     *&#10;     * @return  The index of the first character matched&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     "
  ]
  node [
    id 390
    label "public int start(int group)"
    type "method"
    comment "&#10;     * Returns the start index of the subsequence captured by the given group&#10;     * during the previous match operation.&#10;     *&#10;     * <p> <a href=&#34;Pattern.html#cg&#34;>Capturing groups</a> are indexed from left&#10;     * to right, starting at one.  Group zero denotes the entire pattern, so&#10;     * the expression <i>m.</i>{@code start(0)} is equivalent to&#10;     * <i>m.</i>{@code start()}.  </p>&#10;     *&#10;     * @param  group&#10;     *         The index of a capturing group in this matcher's pattern&#10;     *&#10;     * @return  The index of the first character captured by the group,&#10;     *          or {@code -1} if the match was successful but the group&#10;     *          itself did not match anything&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given index&#10;     "
  ]
  node [
    id 391
    label "public int start(String name)"
    type "method"
    comment "&#10;     * Returns the start index of the subsequence captured by the given&#10;     * <a href=&#34;Pattern.html#groupname&#34;>named-capturing group</a> during the&#10;     * previous match operation.&#10;     *&#10;     * @param  name&#10;     *         The name of a named-capturing group in this matcher's pattern&#10;     *&#10;     * @return  The index of the first character captured by the group,&#10;     *          or {@code -1} if the match was successful but the group&#10;     *          itself did not match anything&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given name&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 392
    label "public int end()"
    type "method"
    comment "&#10;     * Returns the offset after the last character matched.&#10;     *&#10;     * @return  The offset after the last character matched&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     "
  ]
  node [
    id 393
    label "public int end(int group)"
    type "method"
    comment "&#10;     * Returns the offset after the last character of the subsequence&#10;     * captured by the given group during the previous match operation.&#10;     *&#10;     * <p> <a href=&#34;Pattern.html#cg&#34;>Capturing groups</a> are indexed from left&#10;     * to right, starting at one.  Group zero denotes the entire pattern, so&#10;     * the expression <i>m.</i>{@code end(0)} is equivalent to&#10;     * <i>m.</i>{@code end()}.  </p>&#10;     *&#10;     * @param  group&#10;     *         The index of a capturing group in this matcher's pattern&#10;     *&#10;     * @return  The offset after the last character captured by the group,&#10;     *          or {@code -1} if the match was successful&#10;     *          but the group itself did not match anything&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given index&#10;     "
  ]
  node [
    id 394
    label "public int end(String name)"
    type "method"
    comment "&#10;     * Returns the offset after the last character of the subsequence&#10;     * captured by the given <a href=&#34;Pattern.html#groupname&#34;>named-capturing&#10;     * group</a> during the previous match operation.&#10;     *&#10;     * @param  name&#10;     *         The name of a named-capturing group in this matcher's pattern&#10;     *&#10;     * @return  The offset after the last character captured by the group,&#10;     *          or {@code -1} if the match was successful&#10;     *          but the group itself did not match anything&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given name&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 395
    label "public String group()"
    type "method"
    comment "&#10;     * Returns the input subsequence matched by the previous match.&#10;     *&#10;     * <p> For a matcher <i>m</i> with input sequence <i>s</i>,&#10;     * the expressions <i>m.</i>{@code group()} and&#10;     * <i>s.</i>{@code substring(}<i>m.</i>{@code start(),}&#38;nbsp;<i>m.</i>&#10;     * {@code end())} are equivalent.  </p>&#10;     *&#10;     * <p> Note that some patterns, for example {@code a*}, match the empty&#10;     * string.  This method will return the empty string when the pattern&#10;     * successfully matches the empty string in the input.  </p>&#10;     *&#10;     * @return The (possibly empty) subsequence matched by the previous match,&#10;     *         in string form&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     "
  ]
  node [
    id 396
    label "public String group(int group)"
    type "method"
    comment "&#10;     * Returns the input subsequence captured by the given group during the&#10;     * previous match operation.&#10;     *&#10;     * <p> For a matcher <i>m</i>, input sequence <i>s</i>, and group index&#10;     * <i>g</i>, the expressions <i>m.</i>{@code group(}<i>g</i>{@code )} and&#10;     * <i>s.</i>{@code substring(}<i>m.</i>{@code start(}<i>g</i>{@code&#10;     * ),}&#38;nbsp;<i>m.</i>{@code end(}<i>g</i>{@code ))}&#10;     * are equivalent.  </p>&#10;     *&#10;     * <p> <a href=&#34;Pattern.html#cg&#34;>Capturing groups</a> are indexed from left&#10;     * to right, starting at one.  Group zero denotes the entire pattern, so&#10;     * the expression {@code m.group(0)} is equivalent to {@code m.group()}.&#10;     * </p>&#10;     *&#10;     * <p> If the match was successful but the group specified failed to match&#10;     * any part of the input sequence, then {@code null} is returned. Note&#10;     * that some groups, for example {@code (a*)}, match the empty string.&#10;     * This method will return the empty string when such a group successfully&#10;     * matches the empty string in the input.  </p>&#10;     *&#10;     * @param  group&#10;     *         The index of a capturing group in this matcher's pattern&#10;     *&#10;     * @return  The (possibly empty) subsequence captured by the group&#10;     *          during the previous match, or {@code null} if the group&#10;     *          failed to match part of the input&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given index&#10;     "
  ]
  node [
    id 397
    label "public String group(String name)"
    type "method"
    comment "&#10;     * Returns the input subsequence captured by the given&#10;     * <a href=&#34;Pattern.html#groupname&#34;>named-capturing group</a> during the&#10;     * previous match operation.&#10;     *&#10;     * <p> If the match was successful but the group specified failed to match&#10;     * any part of the input sequence, then {@code null} is returned. Note&#10;     * that some groups, for example {@code (a*)}, match the empty string.&#10;     * This method will return the empty string when such a group successfully&#10;     * matches the empty string in the input.  </p>&#10;     *&#10;     * @param  name&#10;     *         The name of a named-capturing group in this matcher's pattern&#10;     *&#10;     * @return  The (possibly empty) subsequence captured by the named group&#10;     *          during the previous match, or {@code null} if the group&#10;     *          failed to match part of the input&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given name&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 398
    label "public int groupCount()"
    type "method"
    comment "&#10;     * Returns the number of capturing groups in this matcher's pattern.&#10;     *&#10;     * <p> Group zero denotes the entire pattern by convention. It is not&#10;     * included in this count.&#10;     *&#10;     * <p> Any non-negative integer smaller than or equal to the value&#10;     * returned by this method is guaranteed to be a valid group index for&#10;     * this matcher.  </p>&#10;     *&#10;     * @return The number of capturing groups in this matcher's pattern&#10;     "
  ]
  node [
    id 399
    label "public boolean matches()"
    type "method"
    comment "&#10;     * Attempts to match the entire region against the pattern.&#10;     *&#10;     * <p> If the match succeeds then more information can be obtained via the&#10;     * {@code start}, {@code end}, and {@code group} methods.  </p>&#10;     *&#10;     * @return  {@code true} if, and only if, the entire region sequence&#10;     *          matches this matcher's pattern&#10;     "
  ]
  node [
    id 400
    label "public boolean find()"
    type "method"
    comment "&#10;     * Attempts to find the next subsequence of the input sequence that matches&#10;     * the pattern.&#10;     *&#10;     * <p> This method starts at the beginning of this matcher's region, or, if&#10;     * a previous invocation of the method was successful and the matcher has&#10;     * not since been reset, at the first character not matched by the previous&#10;     * match.&#10;     *&#10;     * <p> If the match succeeds then more information can be obtained via the&#10;     * {@code start}, {@code end}, and {@code group} methods.  </p>&#10;     *&#10;     * @return  {@code true} if, and only if, a subsequence of the input&#10;     *          sequence matches this matcher's pattern&#10;     "
  ]
  node [
    id 401
    label "public boolean find(int start)"
    type "method"
    comment "&#10;     * Resets this matcher and then attempts to find the next subsequence of&#10;     * the input sequence that matches the pattern, starting at the specified&#10;     * index.&#10;     *&#10;     * <p> If the match succeeds then more information can be obtained via the&#10;     * {@code start}, {@code end}, and {@code group} methods, and subsequent&#10;     * invocations of the {@link #find()} method will start at the first&#10;     * character not matched by this match.  </p>&#10;     *&#10;     * @param start the index to start searching for a match&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If start is less than zero or if start is greater than the&#10;     *          length of the input sequence.&#10;     *&#10;     * @return  {@code true} if, and only if, a subsequence of the input&#10;     *          sequence starting at the given index matches this matcher's&#10;     *          pattern&#10;     "
  ]
  node [
    id 402
    label "find()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 403
    label "public boolean lookingAt()"
    type "method"
    comment "&#10;     * Attempts to match the input sequence, starting at the beginning of the&#10;     * region, against the pattern.&#10;     *&#10;     * <p> Like the {@link #matches matches} method, this method always starts&#10;     * at the beginning of the region; unlike that method, it does not&#10;     * require that the entire region be matched.&#10;     *&#10;     * <p> If the match succeeds then more information can be obtained via the&#10;     * {@code start}, {@code end}, and {@code group} methods.  </p>&#10;     *&#10;     * @return  {@code true} if, and only if, a prefix of the input&#10;     *          sequence matches this matcher's pattern&#10;     "
  ]
  node [
    id 404
    label "matches"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 405
    label "public static String quoteReplacement(String s)"
    type "method"
    comment "&#10;     * Returns a literal replacement {@code String} for the specified&#10;     * {@code String}.&#10;     *&#10;     * This method produces a {@code String} that will work&#10;     * as a literal replacement {@code s} in the&#10;     * {@code appendReplacement} method of the {@link Matcher} class.&#10;     * The {@code String} produced will match the sequence of characters&#10;     * in {@code s} treated as a literal sequence. Slashes ('\') and&#10;     * dollar signs ('$') will be given no special meaning.&#10;     *&#10;     * @param  s The string to be literalized&#10;     * @return  A literal string replacement&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 406
    label "Matcher"
  ]
  node [
    id 407
    label "public Matcher appendReplacement(StringBuffer sb, String replacement)"
    type "method"
    comment "&#10;     * Implements a non-terminal append-and-replace step.&#10;     *&#10;     * <p> This method performs the following actions: </p>&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> It reads characters from the input sequence, starting at the&#10;     *   append position, and appends them to the given string buffer.  It&#10;     *   stops after reading the last character preceding the previous match,&#10;     *   that is, the character at index {@link&#10;     *   #start()}&#38;nbsp;{@code -}&#38;nbsp;{@code 1}.  </p></li>&#10;     *&#10;     *   <li><p> It appends the given replacement string to the string buffer.&#10;     *   </p></li>&#10;     *&#10;     *   <li><p> It sets the append position of this matcher to the index of&#10;     *   the last character matched, plus one, that is, to {@link #end()}.&#10;     *   </p></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * <p> The replacement string may contain references to subsequences&#10;     * captured during the previous match: Each occurrence of&#10;     * <code>${</code><i>name</i><code>}</code> or {@code $}<i>g</i>&#10;     * will be replaced by the result of evaluating the corresponding&#10;     * {@link #group(String) group(name)} or {@link #group(int) group(g)}&#10;     * respectively. For {@code $}<i>g</i>,&#10;     * the first number after the {@code $} is always treated as part of&#10;     * the group reference. Subsequent numbers are incorporated into g if&#10;     * they would form a legal group reference. Only the numerals '0'&#10;     * through '9' are considered as potential components of the group&#10;     * reference. If the second group matched the string {@code &#34;foo&#34;}, for&#10;     * example, then passing the replacement string {@code &#34;$2bar&#34;} would&#10;     * cause {@code &#34;foobar&#34;} to be appended to the string buffer. A dollar&#10;     * sign ({@code $}) may be included as a literal in the replacement&#10;     * string by preceding it with a backslash ({@code \$}).&#10;     *&#10;     * <p> Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * the replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> This method is intended to be used in a loop together with the&#10;     * {@link #appendTail(StringBuffer) appendTail} and {@link #find() find}&#10;     * methods.  The following code, for example, writes {@code one dog two dogs&#10;     * in the yard} to the standard-output stream: </p>&#10;     *&#10;     * <blockquote><pre>&#10;     * Pattern p = Pattern.compile(&#34;cat&#34;);&#10;     * Matcher m = p.matcher(&#34;one cat two cats in the yard&#34;);&#10;     * StringBuffer sb = new StringBuffer();&#10;     * while (m.find()) {&#10;     *     m.appendReplacement(sb, &#34;dog&#34;);&#10;     * }&#10;     * m.appendTail(sb);&#10;     * System.out.println(sb.toString());</pre></blockquote>&#10;     *&#10;     * @param  sb&#10;     *         The target string buffer&#10;     *&#10;     * @param  replacement&#10;     *         The replacement string&#10;     *&#10;     * @return  This matcher&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the replacement string refers to a named-capturing&#10;     *          group that does not exist in the pattern&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the replacement string refers to a capturing group&#10;     *          that does not exist in the pattern&#10;     "
  ]
  node [
    id 408
    label "group(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 409
    label "start()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 410
    label "end()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 411
    label "appendTail(StringBuffer)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 412
    label "group(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 413
    label "public Matcher appendReplacement(StringBuilder sb, String replacement)"
    type "method"
    comment "&#10;     * Implements a non-terminal append-and-replace step.&#10;     *&#10;     * <p> This method performs the following actions: </p>&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> It reads characters from the input sequence, starting at the&#10;     *   append position, and appends them to the given string builder.  It&#10;     *   stops after reading the last character preceding the previous match,&#10;     *   that is, the character at index {@link&#10;     *   #start()}&#38;nbsp;{@code -}&#38;nbsp;{@code 1}.  </p></li>&#10;     *&#10;     *   <li><p> It appends the given replacement string to the string builder.&#10;     *   </p></li>&#10;     *&#10;     *   <li><p> It sets the append position of this matcher to the index of&#10;     *   the last character matched, plus one, that is, to {@link #end()}.&#10;     *   </p></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * <p> The replacement string may contain references to subsequences&#10;     * captured during the previous match: Each occurrence of&#10;     * {@code $}<i>g</i> will be replaced by the result of&#10;     * evaluating {@link #group(int) group}{@code (}<i>g</i>{@code )}.&#10;     * The first number after the {@code $} is always treated as part of&#10;     * the group reference. Subsequent numbers are incorporated into g if&#10;     * they would form a legal group reference. Only the numerals '0'&#10;     * through '9' are considered as potential components of the group&#10;     * reference. If the second group matched the string {@code &#34;foo&#34;}, for&#10;     * example, then passing the replacement string {@code &#34;$2bar&#34;} would&#10;     * cause {@code &#34;foobar&#34;} to be appended to the string builder. A dollar&#10;     * sign ({@code $}) may be included as a literal in the replacement&#10;     * string by preceding it with a backslash ({@code \$}).&#10;     *&#10;     * <p> Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * the replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> This method is intended to be used in a loop together with the&#10;     * {@link #appendTail(StringBuilder) appendTail} and&#10;     * {@link #find() find} methods. The following code, for example, writes&#10;     * {@code one dog two dogs in the yard} to the standard-output stream: </p>&#10;     *&#10;     * <blockquote><pre>&#10;     * Pattern p = Pattern.compile(&#34;cat&#34;);&#10;     * Matcher m = p.matcher(&#34;one cat two cats in the yard&#34;);&#10;     * StringBuilder sb = new StringBuilder();&#10;     * while (m.find()) {&#10;     *     m.appendReplacement(sb, &#34;dog&#34;);&#10;     * }&#10;     * m.appendTail(sb);&#10;     * System.out.println(sb.toString());</pre></blockquote>&#10;     *&#10;     * @param  sb&#10;     *         The target string builder&#10;     * @param  replacement&#10;     *         The replacement string&#10;     * @return  This matcher&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     * @throws  IllegalArgumentException&#10;     *          If the replacement string refers to a named-capturing&#10;     *          group that does not exist in the pattern&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the replacement string refers to a capturing group&#10;     *          that does not exist in the pattern&#10;     * @since 9&#10;     "
  ]
  node [
    id 414
    label "appendTail(StringBuilder)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 415
    label "public StringBuffer appendTail(StringBuffer sb)"
    type "method"
    comment "&#10;     * Implements a terminal append-and-replace step.&#10;     *&#10;     * <p> This method reads characters from the input sequence, starting at&#10;     * the append position, and appends them to the given string buffer.  It is&#10;     * intended to be invoked after one or more invocations of the {@link&#10;     * #appendReplacement(StringBuffer, String) appendReplacement} method in&#10;     * order to copy the remainder of the input sequence.  </p>&#10;     *&#10;     * @param  sb&#10;     *         The target string buffer&#10;     *&#10;     * @return  The target string buffer&#10;     "
  ]
  node [
    id 416
    label "appendReplacement(StringBuffer"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 417
    label "public StringBuilder appendTail(StringBuilder sb)"
    type "method"
    comment "&#10;     * Implements a terminal append-and-replace step.&#10;     *&#10;     * <p> This method reads characters from the input sequence, starting at&#10;     * the append position, and appends them to the given string builder.  It is&#10;     * intended to be invoked after one or more invocations of the {@link&#10;     * #appendReplacement(StringBuilder, String)&#10;     * appendReplacement} method in order to copy the remainder of the input&#10;     * sequence.  </p>&#10;     *&#10;     * @param  sb&#10;     *         The target string builder&#10;     *&#10;     * @return  The target string builder&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 418
    label "appendReplacement(StringBuilder"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 419
    label "public String replaceAll(String replacement)"
    type "method"
    comment "&#10;     * Replaces every subsequence of the input sequence that matches the&#10;     * pattern with the given replacement string.&#10;     *&#10;     * <p> This method first resets this matcher.  It then scans the input&#10;     * sequence looking for matches of the pattern.  Characters that are not&#10;     * part of any match are appended directly to the result string; each match&#10;     * is replaced in the result by the replacement string.  The replacement&#10;     * string may contain references to captured subsequences as in the {@link&#10;     * #appendReplacement appendReplacement} method.&#10;     *&#10;     * <p> Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * the replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> Given the regular expression {@code a*b}, the input&#10;     * {@code &#34;aabfooaabfooabfoob&#34;}, and the replacement string&#10;     * {@code &#34;-&#34;}, an invocation of this method on a matcher for that&#10;     * expression would yield the string {@code &#34;-foo-foo-foo-&#34;}.&#10;     *&#10;     * <p> Invoking this method changes this matcher's state.  If the matcher&#10;     * is to be used in further matching operations then it should first be&#10;     * reset.  </p>&#10;     *&#10;     * @param  replacement&#10;     *         The replacement string&#10;     *&#10;     * @return  The string constructed by replacing each matching subsequence&#10;     *          by the replacement string, substituting captured subsequences&#10;     *          as needed&#10;     "
  ]
  node [
    id 420
    label "appendReplacement"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 421
    label "public String replaceAll(Function<MatchResult, String> replacer)"
    type "method"
    comment "&#10;     * Replaces every subsequence of the input sequence that matches the&#10;     * pattern with the result of applying the given replacer function to the&#10;     * match result of this matcher corresponding to that subsequence.&#10;     * Exceptions thrown by the function are relayed to the caller.&#10;     *&#10;     * <p> This method first resets this matcher.  It then scans the input&#10;     * sequence looking for matches of the pattern.  Characters that are not&#10;     * part of any match are appended directly to the result string; each match&#10;     * is replaced in the result by the applying the replacer function that&#10;     * returns a replacement string.  Each replacement string may contain&#10;     * references to captured subsequences as in the {@link #appendReplacement&#10;     * appendReplacement} method.&#10;     *&#10;     * <p> Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * a replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> Given the regular expression {@code dog}, the input&#10;     * {@code &#34;zzzdogzzzdogzzz&#34;}, and the function&#10;     * {@code mr -> mr.group().toUpperCase()}, an invocation of this method on&#10;     * a matcher for that expression would yield the string&#10;     * {@code &#34;zzzDOGzzzDOGzzz&#34;}.&#10;     *&#10;     * <p> Invoking this method changes this matcher's state.  If the matcher&#10;     * is to be used in further matching operations then it should first be&#10;     * reset.  </p>&#10;     *&#10;     * <p> The replacer function should not modify this matcher's state during&#10;     * replacement.  This method will, on a best-effort basis, throw a&#10;     * {@link java.util.ConcurrentModificationException} if such modification is&#10;     * detected.&#10;     *&#10;     * <p> The state of each match result passed to the replacer function is&#10;     * guaranteed to be constant only for the duration of the replacer function&#10;     * call and only if the replacer function does not modify this matcher's&#10;     * state.&#10;     *&#10;     * @implNote&#10;     * This implementation applies the replacer function to this matcher, which&#10;     * is an instance of {@code MatchResult}.&#10;     *&#10;     * @param  replacer&#10;     *         The function to be applied to the match result of this matcher&#10;     *         that returns a replacement string.&#10;     * @return  The string constructed by replacing each matching subsequence&#10;     *          with the result of applying the replacer function to that&#10;     *          matched subsequence, substituting captured subsequences as&#10;     *          needed.&#10;     * @throws NullPointerException if the replacer function is null&#10;     * @throws ConcurrentModificationException if it is detected, on a&#10;     *         best-effort basis, that the replacer function modified this&#10;     *         matcher's state&#10;     * @since 9&#10;     "
  ]
  node [
    id 422
    label "appendReplacementappendReplacement"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 423
    label "java.util.ConcurrentModificationException"
    type "class"
    comment "&#10; * This exception may be thrown by methods that have detected concurrent&#10; * modification of an object when such modification is not permissible.&#10; * <p>&#10; * For example, it is not generally permissible for one thread to modify a Collection&#10; * while another thread is iterating over it.  In general, the results of the&#10; * iteration are undefined under these circumstances.  Some Iterator&#10; * implementations (including those of all the general purpose collection implementations&#10; * provided by the JRE) may choose to throw this exception if this behavior is&#10; * detected.  Iterators that do this are known as <i>fail-fast</i> iterators,&#10; * as they fail quickly and cleanly, rather that risking arbitrary,&#10; * non-deterministic behavior at an undetermined time in the future.&#10; * <p>&#10; * Note that this exception does not always indicate that an object has&#10; * been concurrently modified by a <i>different</i> thread.  If a single&#10; * thread issues a sequence of method invocations that violates the&#10; * contract of an object, the object may throw this exception.  For&#10; * example, if a thread modifies a collection directly while it is&#10; * iterating over the collection with a fail-fast iterator, the iterator&#10; * will throw this exception.&#10; *&#10; * <p>Note that fail-fast behavior cannot be guaranteed as it is, generally&#10; * speaking, impossible to make any hard guarantees in the presence of&#10; * unsynchronized concurrent modification.  Fail-fast operations&#10; * throw {@code ConcurrentModificationException} on a best-effort basis.&#10; * Therefore, it would be wrong to write a program that depended on this&#10; * exception for its correctness: <i>{@code ConcurrentModificationException}&#10; * should be used only to detect bugs.</i>&#10; *&#10; * @author  Josh Bloch&#10; * @see     Collection&#10; * @see     Iterator&#10; * @see     Spliterator&#10; * @see     ListIterator&#10; * @see     Vector&#10; * @see     LinkedList&#10; * @see     HashSet&#10; * @see     Hashtable&#10; * @see     TreeMap&#10; * @see     AbstractList&#10; * @since   1.2&#10; "
  ]
  node [
    id 424
    label "public Stream<MatchResult> results()"
    type "method"
    comment "&#10;     * Returns a stream of match results for each subsequence of the input&#10;     * sequence that matches the pattern.  The match results occur in the&#10;     * same order as the matching subsequences in the input sequence.&#10;     *&#10;     * <p> Each match result is produced as if by {@link #toMatchResult()}.&#10;     *&#10;     * <p> This method does not reset this matcher.  Matching starts on&#10;     * initiation of the terminal stream operation either at the beginning of&#10;     * this matcher's region, or, if the matcher has not since been reset, at&#10;     * the first character not matched by a previous match.&#10;     *&#10;     * <p> If the matcher is to be used for further matching operations after&#10;     * the terminal stream operation completes then it should be first reset.&#10;     *&#10;     * <p> This matcher's state should not be modified during execution of the&#10;     * returned stream's pipeline.  The returned stream's source&#10;     * {@code Spliterator} is <em>fail-fast</em> and will, on a best-effort&#10;     * basis, throw a {@link java.util.ConcurrentModificationException} if such&#10;     * modification is detected.&#10;     *&#10;     * @return a sequential stream of match results.&#10;     * @since 9&#10;     "
  ]
  node [
    id 425
    label "toMatchResult()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 426
    label "public String replaceFirst(String replacement)"
    type "method"
    comment "&#10;     * Replaces the first subsequence of the input sequence that matches the&#10;     * pattern with the given replacement string.&#10;     *&#10;     * <p> This method first resets this matcher.  It then scans the input&#10;     * sequence looking for a match of the pattern.  Characters that are not&#10;     * part of the match are appended directly to the result string; the match&#10;     * is replaced in the result by the replacement string.  The replacement&#10;     * string may contain references to captured subsequences as in the {@link&#10;     * #appendReplacement appendReplacement} method.&#10;     *&#10;     * <p>Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * the replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> Given the regular expression {@code dog}, the input&#10;     * {@code &#34;zzzdogzzzdogzzz&#34;}, and the replacement string&#10;     * {@code &#34;cat&#34;}, an invocation of this method on a matcher for that&#10;     * expression would yield the string {@code &#34;zzzcatzzzdogzzz&#34;}.  </p>&#10;     *&#10;     * <p> Invoking this method changes this matcher's state.  If the matcher&#10;     * is to be used in further matching operations then it should first be&#10;     * reset.  </p>&#10;     *&#10;     * @param  replacement&#10;     *         The replacement string&#10;     * @return  The string constructed by replacing the first matching&#10;     *          subsequence by the replacement string, substituting captured&#10;     *          subsequences as needed&#10;     "
  ]
  node [
    id 427
    label "public String replaceFirst(Function<MatchResult, String> replacer)"
    type "method"
    comment "&#10;     * Replaces the first subsequence of the input sequence that matches the&#10;     * pattern with the result of applying the given replacer function to the&#10;     * match result of this matcher corresponding to that subsequence.&#10;     * Exceptions thrown by the replace function are relayed to the caller.&#10;     *&#10;     * <p> This method first resets this matcher.  It then scans the input&#10;     * sequence looking for a match of the pattern.  Characters that are not&#10;     * part of the match are appended directly to the result string; the match&#10;     * is replaced in the result by the applying the replacer function that&#10;     * returns a replacement string.  The replacement string may contain&#10;     * references to captured subsequences as in the {@link #appendReplacement&#10;     * appendReplacement} method.&#10;     *&#10;     * <p>Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * the replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> Given the regular expression {@code dog}, the input&#10;     * {@code &#34;zzzdogzzzdogzzz&#34;}, and the function&#10;     * {@code mr -> mr.group().toUpperCase()}, an invocation of this method on&#10;     * a matcher for that expression would yield the string&#10;     * {@code &#34;zzzDOGzzzdogzzz&#34;}.&#10;     *&#10;     * <p> Invoking this method changes this matcher's state.  If the matcher&#10;     * is to be used in further matching operations then it should first be&#10;     * reset.&#10;     *&#10;     * <p> The replacer function should not modify this matcher's state during&#10;     * replacement.  This method will, on a best-effort basis, throw a&#10;     * {@link java.util.ConcurrentModificationException} if such modification is&#10;     * detected.&#10;     *&#10;     * <p> The state of the match result passed to the replacer function is&#10;     * guaranteed to be constant only for the duration of the replacer function&#10;     * call and only if the replacer function does not modify this matcher's&#10;     * state.&#10;     *&#10;     * @implNote&#10;     * This implementation applies the replacer function to this matcher, which&#10;     * is an instance of {@code MatchResult}.&#10;     *&#10;     * @param  replacer&#10;     *         The function to be applied to the match result of this matcher&#10;     *         that returns a replacement string.&#10;     * @return  The string constructed by replacing the first matching&#10;     *          subsequence with the result of applying the replacer function to&#10;     *          the matched subsequence, substituting captured subsequences as&#10;     *          needed.&#10;     * @throws NullPointerException if the replacer function is null&#10;     * @throws ConcurrentModificationException if it is detected, on a&#10;     *         best-effort basis, that the replacer function modified this&#10;     *         matcher's state&#10;     * @since 9&#10;     "
  ]
  node [
    id 428
    label "public Matcher region(int start, int end)"
    type "method"
    comment "&#10;     * Sets the limits of this matcher's region. The region is the part of the&#10;     * input sequence that will be searched to find a match. Invoking this&#10;     * method resets the matcher, and then sets the region to start at the&#10;     * index specified by the {@code start} parameter and end at the&#10;     * index specified by the {@code end} parameter.&#10;     *&#10;     * <p>Depending on the transparency and anchoring being used (see&#10;     * {@link #useTransparentBounds(boolean) useTransparentBounds} and&#10;     * {@link #useAnchoringBounds(boolean) useAnchoringBounds}), certain&#10;     * constructs such as anchors may behave differently at or around the&#10;     * boundaries of the region.&#10;     *&#10;     * @param  start&#10;     *         The index to start searching at (inclusive)&#10;     * @param  end&#10;     *         The index to end searching at (exclusive)&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If start or end is less than zero, if&#10;     *          start is greater than the length of the input sequence, if&#10;     *          end is greater than the length of the input sequence, or if&#10;     *          start is greater than end.&#10;     * @return  this matcher&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 429
    label "useTransparentBounds(boolean)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 430
    label "useAnchoringBounds(boolean)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 431
    label "public int regionStart()"
    type "method"
    comment "&#10;     * Reports the start index of this matcher's region. The&#10;     * searches this matcher conducts are limited to finding matches&#10;     * within {@link #regionStart() regionStart} (inclusive) and&#10;     * {@link #regionEnd() regionEnd} (exclusive).&#10;     *&#10;     * @return  The starting point of this matcher's region&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 432
    label "regionEnd()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 433
    label "regionStart()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 434
    label "public int regionEnd()"
    type "method"
    comment "&#10;     * Reports the end index (exclusive) of this matcher's region.&#10;     * The searches this matcher conducts are limited to finding matches&#10;     * within {@link #regionStart() regionStart} (inclusive) and&#10;     * {@link #regionEnd() regionEnd} (exclusive).&#10;     *&#10;     * @return  the ending point of this matcher's region&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 435
    label "public boolean hasTransparentBounds()"
    type "method"
    comment "&#10;     * Queries the transparency of region bounds for this matcher.&#10;     *&#10;     * <p> This method returns {@code true} if this matcher uses&#10;     * <i>transparent</i> bounds, {@code false} if it uses <i>opaque</i>&#10;     * bounds.&#10;     *&#10;     * <p> See {@link #useTransparentBounds(boolean) useTransparentBounds} for a&#10;     * description of transparent and opaque bounds.&#10;     *&#10;     * <p> By default, a matcher uses opaque region boundaries.&#10;     *&#10;     * @return {@code true} iff this matcher is using transparent bounds,&#10;     *         {@code false} otherwise.&#10;     * @see java.util.regex.Matcher#useTransparentBounds(boolean)&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 436
    label "public Matcher useTransparentBounds(boolean b)"
    type "method"
    comment "&#10;     * Sets the transparency of region bounds for this matcher.&#10;     *&#10;     * <p> Invoking this method with an argument of {@code true} will set this&#10;     * matcher to use <i>transparent</i> bounds. If the boolean&#10;     * argument is {@code false}, then <i>opaque</i> bounds will be used.&#10;     *&#10;     * <p> Using transparent bounds, the boundaries of this&#10;     * matcher's region are transparent to lookahead, lookbehind,&#10;     * and boundary matching constructs. Those constructs can see beyond the&#10;     * boundaries of the region to see if a match is appropriate.&#10;     *&#10;     * <p> Using opaque bounds, the boundaries of this matcher's&#10;     * region are opaque to lookahead, lookbehind, and boundary matching&#10;     * constructs that may try to see beyond them. Those constructs cannot&#10;     * look past the boundaries so they will fail to match anything outside&#10;     * of the region.&#10;     *&#10;     * <p> By default, a matcher uses opaque bounds.&#10;     *&#10;     * @param  b a boolean indicating whether to use opaque or transparent&#10;     *         regions&#10;     * @return this matcher&#10;     * @see java.util.regex.Matcher#hasTransparentBounds&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 437
    label "public boolean hasAnchoringBounds()"
    type "method"
    comment "&#10;     * Queries the anchoring of region bounds for this matcher.&#10;     *&#10;     * <p> This method returns {@code true} if this matcher uses&#10;     * <i>anchoring</i> bounds, {@code false} otherwise.&#10;     *&#10;     * <p> See {@link #useAnchoringBounds(boolean) useAnchoringBounds} for a&#10;     * description of anchoring bounds.&#10;     *&#10;     * <p> By default, a matcher uses anchoring region boundaries.&#10;     *&#10;     * @return {@code true} iff this matcher is using anchoring bounds,&#10;     *         {@code false} otherwise.&#10;     * @see java.util.regex.Matcher#useAnchoringBounds(boolean)&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 438
    label "public Matcher useAnchoringBounds(boolean b)"
    type "method"
    comment "&#10;     * Sets the anchoring of region bounds for this matcher.&#10;     *&#10;     * <p> Invoking this method with an argument of {@code true} will set this&#10;     * matcher to use <i>anchoring</i> bounds. If the boolean&#10;     * argument is {@code false}, then <i>non-anchoring</i> bounds will be&#10;     * used.&#10;     *&#10;     * <p> Using anchoring bounds, the boundaries of this&#10;     * matcher's region match anchors such as ^ and $.&#10;     *&#10;     * <p> Without anchoring bounds, the boundaries of this&#10;     * matcher's region will not match anchors such as ^ and $.&#10;     *&#10;     * <p> By default, a matcher uses anchoring region boundaries.&#10;     *&#10;     * @param  b a boolean indicating whether or not to use anchoring bounds.&#10;     * @return this matcher&#10;     * @see java.util.regex.Matcher#hasAnchoringBounds&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 439
    label "public boolean hitEnd()"
    type "method"
    comment "&#10;     * <p>Returns true if the end of input was hit by the search engine in&#10;     * the last match operation performed by this matcher.&#10;     *&#10;     * <p>When this method returns true, then it is possible that more input&#10;     * would have changed the result of the last search.&#10;     *&#10;     * @return  true iff the end of input was hit in the last match; false&#10;     *          otherwise&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 440
    label "public boolean requireEnd()"
    type "method"
    comment "&#10;     * <p>Returns true if more input could change a positive match into a&#10;     * negative one.&#10;     *&#10;     * <p>If this method returns true, and a match was found, then more&#10;     * input could cause the match to be lost. If this method returns false&#10;     * and a match was found, then more input might change the match but the&#10;     * match won't be lost. If a match was not found, then requireEnd has no&#10;     * meaning.&#10;     *&#10;     * @return  true iff more input could change a positive match into a&#10;     *          negative one.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 441
    label " int getTextLength()"
    type "method"
    comment "&#10;     * Returns the end index of the text.&#10;     *&#10;     * @return the index after the last character in the text&#10;     "
  ]
  node [
    id 442
    label " CharSequence getSubSequence(int beginIndex, int endIndex)"
    type "method"
    comment "&#10;     * Generates a String from this matcher's input in the specified range.&#10;     *&#10;     * @param  beginIndex   the beginning index, inclusive&#10;     * @param  endIndex     the ending index, exclusive&#10;     * @return A String generated from this matcher's input&#10;     "
  ]
  node [
    id 443
    label "private Matcher reset(CharSequence input, int start, int end)"
    type "method"
    comment "&#10;     * Resets the Matcher. A new input sequence and a new region can be&#10;     * specified. Results of a previous find get lost. The next attempt to find&#10;     * an occurrence of the Pattern in the string will start at the beginning of&#10;     * the region. This is the internal version of reset() to which the several&#10;     * public versions delegate.&#10;     *&#10;     * @param input&#10;     *            the input sequence.&#10;     * @param start&#10;     *            the start of the region.&#10;     * @param end&#10;     *            the end of the region.&#10;     *&#10;     * @return the matcher itself.&#10;     "
  ]
  node [
    id 444
    label "private void ensureMatch()"
    type "method"
    comment "&#10;     * Makes sure that a successful match has been made. Is invoked internally&#10;     * from various places in the class.&#10;     *&#10;     * @throws IllegalStateException&#10;     *             if no successful match has been made.&#10;     "
  ]
  node [
    id 445
    label "public String replaceAll(String regex, String replacement)"
    type "method"
    comment "&#10;     * Replaces each substring of this string that matches the given <a&#10;     * href=&#34;../util/regex/Pattern.html#sum&#34;>regular expression</a> with the&#10;     * given replacement.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <i>str</i>{@code .replaceAll(}<i>regex</i>{@code ,} <i>repl</i>{@code )}&#10;     * yields exactly the same result as the expression&#10;     *&#10;     * <blockquote>&#10;     * <code>&#10;     * {@link java.util.regex.Pattern}.{@link&#10;     * java.util.regex.Pattern#compile compile}(<i>regex</i>).{@link&#10;     * java.util.regex.Pattern#matcher(java.lang.CharSequence) matcher}(<i>str</i>).{@link&#10;     * java.util.regex.Matcher#replaceAll replaceAll}(<i>repl</i>)&#10;     * </code>&#10;     * </blockquote>&#10;     *&#10;     *<p>&#10;     * Note that backslashes ({@code \}) and dollar signs ({@code $}) in the&#10;     * replacement string may cause the results to be different than if it were&#10;     * being treated as a literal replacement string; see&#10;     * {@link java.util.regex.Matcher#replaceAll Matcher.replaceAll}.&#10;     * Use {@link java.util.regex.Matcher#quoteReplacement} to suppress the special&#10;     * meaning of these characters, if desired.&#10;     *&#10;     * @param   regex&#10;     *          the regular expression to which this string is to be matched&#10;     * @param   replacement&#10;     *          the string to be substituted for each match&#10;     *&#10;     * @return  The resulting {@code String}&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          if the regular expression's syntax is invalid&#10;     *&#10;     * @see java.util.regex.Pattern&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 446
    label "public String replace(CharSequence target, CharSequence replacement)"
    type "method"
    comment "&#10;     * Replaces each substring of this string that matches the literal target&#10;     * sequence with the specified literal replacement sequence. The&#10;     * replacement proceeds from the beginning of the string to the end, for&#10;     * example, replacing &#34;aa&#34; with &#34;b&#34; in the string &#34;aaa&#34; will result in&#10;     * &#34;ba&#34; rather than &#34;ab&#34;.&#10;     *&#10;     * @param  target The sequence of char values to be replaced&#10;     * @param  replacement The replacement sequence of char values&#10;     * @return  The resulting string&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 447
    label "public String[] split(String regex, int limit)"
    type "method"
    comment "&#10;     * Splits this string around matches of the given&#10;     * <a href=&#34;../util/regex/Pattern.html#sum&#34;>regular expression</a>.&#10;     *&#10;     * <p> The array returned by this method contains each substring of this&#10;     * string that is terminated by another substring that matches the given&#10;     * expression or is terminated by the end of the string.  The substrings in&#10;     * the array are in the order in which they occur in this string.  If the&#10;     * expression does not match any part of the input then the resulting array&#10;     * has just one element, namely this string.&#10;     *&#10;     * <p> When there is a positive-width match at the beginning of this&#10;     * string then an empty leading substring is included at the beginning&#10;     * of the resulting array. A zero-width match at the beginning however&#10;     * never produces such empty leading substring.&#10;     *&#10;     * <p> The {@code limit} parameter controls the number of times the&#10;     * pattern is applied and therefore affects the length of the resulting&#10;     * array.&#10;     * <ul>&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is positive then the pattern will be applied&#10;     *    at most <i>limit</i>&#38;nbsp;-&#38;nbsp;1 times, the array's length will be&#10;     *    no greater than <i>limit</i>, and the array's last entry will contain&#10;     *    all input beyond the last matched delimiter.</p></li>&#10;     *&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is zero then the pattern will be applied as&#10;     *    many times as possible, the array can have any length, and trailing&#10;     *    empty strings will be discarded.</p></li>&#10;     *&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is negative then the pattern will be applied&#10;     *    as many times as possible and the array can have any length.</p></li>&#10;     * </ul>&#10;     *&#10;     * <p> The string {@code &#34;boo:and:foo&#34;}, for example, yields the&#10;     * following results with these parameters:&#10;     *&#10;     * <blockquote><table class=&#34;plain&#34;>&#10;     * <caption style=&#34;display:none&#34;>Split example showing regex, limit, and result</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *     <th scope=&#34;col&#34;>Regex</th>&#10;     *     <th scope=&#34;col&#34;>Limit</th>&#10;     *     <th scope=&#34;col&#34;>Result</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr><th scope=&#34;row&#34; rowspan=&#34;3&#34; style=&#34;font-weight:normal&#34;>:</th>&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>2</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and:foo&#34; }}</td></tr>&#10;     * <tr><!-- : -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>5</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><!-- : -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>-2</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><th scope=&#34;row&#34; rowspan=&#34;3&#34; style=&#34;font-weight:normal&#34;>o</th>&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>5</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34;, &#34;&#34;, &#34;&#34; }}</td></tr>&#10;     * <tr><!-- o -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>-2</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34;, &#34;&#34;, &#34;&#34; }}</td></tr>&#10;     * <tr><!-- o -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>0</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34; }}</td></tr>&#10;     * </tbody>&#10;     * </table></blockquote>&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <i>str.</i>{@code split(}<i>regex</i>{@code ,}&#38;nbsp;<i>n</i>{@code )}&#10;     * yields the same result as the expression&#10;     *&#10;     * <blockquote>&#10;     * <code>&#10;     * {@link java.util.regex.Pattern}.{@link&#10;     * java.util.regex.Pattern#compile compile}(<i>regex</i>).{@link&#10;     * java.util.regex.Pattern#split(java.lang.CharSequence,int) split}(<i>str</i>,&#38;nbsp;<i>n</i>)&#10;     * </code>&#10;     * </blockquote>&#10;     *&#10;     *&#10;     * @param  regex&#10;     *         the delimiting regular expression&#10;     *&#10;     * @param  limit&#10;     *         the result threshold, as described above&#10;     *&#10;     * @return  the array of strings computed by splitting this string&#10;     *          around matches of the given regular expression&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          if the regular expression's syntax is invalid&#10;     *&#10;     * @see java.util.regex.Pattern&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 448
    label "public String[] split(String regex)"
    type "method"
    comment "&#10;     * Splits this string around matches of the given <a&#10;     * href=&#34;../util/regex/Pattern.html#sum&#34;>regular expression</a>.&#10;     *&#10;     * <p> This method works as if by invoking the two-argument {@link&#10;     * #split(String, int) split} method with the given expression and a limit&#10;     * argument of zero.  Trailing empty strings are therefore not included in&#10;     * the resulting array.&#10;     *&#10;     * <p> The string {@code &#34;boo:and:foo&#34;}, for example, yields the following&#10;     * results with these expressions:&#10;     *&#10;     * <blockquote><table class=&#34;plain&#34;>&#10;     * <caption style=&#34;display:none&#34;>Split examples showing regex and result</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *  <th scope=&#34;col&#34;>Regex</th>&#10;     *  <th scope=&#34;col&#34;>Result</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr><th scope=&#34;row&#34; style=&#34;text-weight:normal&#34;>:</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><th scope=&#34;row&#34; style=&#34;text-weight:normal&#34;>o</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34; }}</td></tr>&#10;     * </tbody>&#10;     * </table></blockquote>&#10;     *&#10;     *&#10;     * @param  regex&#10;     *         the delimiting regular expression&#10;     *&#10;     * @return  the array of strings computed by splitting this string&#10;     *          around matches of the given regular expression&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          if the regular expression's syntax is invalid&#10;     *&#10;     * @see java.util.regex.Pattern&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 449
    label "split(String"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 450
    label "public static String join(CharSequence delimiter, CharSequence... elements)"
    type "method"
    comment "&#10;     * Returns a new String composed of copies of the&#10;     * {@code CharSequence elements} joined together with a copy of&#10;     * the specified {@code delimiter}.&#10;     *&#10;     * <blockquote>For example,&#10;     * <pre>{@code&#10;     *     String message = String.join(&#34;-&#34;, &#34;Java&#34;, &#34;is&#34;, &#34;cool&#34;);&#10;     *     // message returned is: &#34;Java-is-cool&#34;&#10;     * }</pre></blockquote>&#10;     *&#10;     * Note that if an element is null, then {@code &#34;null&#34;} is added.&#10;     *&#10;     * @param  delimiter the delimiter that separates each element&#10;     * @param  elements the elements to join together.&#10;     *&#10;     * @return a new {@code String} that is composed of the {@code elements}&#10;     *         separated by the {@code delimiter}&#10;     *&#10;     * @throws NullPointerException If {@code delimiter} or {@code elements}&#10;     *         is {@code null}&#10;     *&#10;     * @see java.util.StringJoiner&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 451
    label "public static String join(CharSequence delimiter, Iterable<? extends CharSequence> elements)"
    type "method"
    comment "&#10;     * Returns a new {@code String} composed of copies of the&#10;     * {@code CharSequence elements} joined together with a copy of the&#10;     * specified {@code delimiter}.&#10;     *&#10;     * <blockquote>For example,&#10;     * <pre>{@code&#10;     *     List<String> strings = List.of(&#34;Java&#34;, &#34;is&#34;, &#34;cool&#34;);&#10;     *     String message = String.join(&#34; &#34;, strings);&#10;     *     //message returned is: &#34;Java is cool&#34;&#10;     *&#10;     *     Set<String> strings =&#10;     *         new LinkedHashSet<>(List.of(&#34;Java&#34;, &#34;is&#34;, &#34;very&#34;, &#34;cool&#34;));&#10;     *     String message = String.join(&#34;-&#34;, strings);&#10;     *     //message returned is: &#34;Java-is-very-cool&#34;&#10;     * }</pre></blockquote>&#10;     *&#10;     * Note that if an individual element is {@code null}, then {@code &#34;null&#34;} is added.&#10;     *&#10;     * @param  delimiter a sequence of characters that is used to separate each&#10;     *         of the {@code elements} in the resulting {@code String}&#10;     * @param  elements an {@code Iterable} that will have its {@code elements}&#10;     *         joined together.&#10;     *&#10;     * @return a new {@code String} that is composed from the {@code elements}&#10;     *         argument&#10;     *&#10;     * @throws NullPointerException If {@code delimiter} or {@code elements}&#10;     *         is {@code null}&#10;     *&#10;     * @see    #join(CharSequence,CharSequence...)&#10;     * @see    java.util.StringJoiner&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 452
    label "public String toLowerCase(Locale locale)"
    type "method"
    comment "&#10;     * Converts all of the characters in this {@code String} to lower&#10;     * case using the rules of the given {@code Locale}.  Case mapping is based&#10;     * on the Unicode Standard version specified by the {@link java.lang.Character Character}&#10;     * class. Since case mappings are not always 1:1 char mappings, the resulting&#10;     * {@code String} may be a different length than the original {@code String}.&#10;     * <p>&#10;     * Examples of lowercase  mappings are in the following table:&#10;     * <table class=&#34;plain&#34;>&#10;     * <caption style=&#34;display:none&#34;>Lowercase mapping examples showing language code of locale, upper case, lower case, and description</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *   <th scope=&#34;col&#34;>Language Code of Locale</th>&#10;     *   <th scope=&#34;col&#34;>Upper Case</th>&#10;     *   <th scope=&#34;col&#34;>Lower Case</th>&#10;     *   <th scope=&#34;col&#34;>Description</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr>&#10;     *   <td>tr (Turkish)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#38;#92;u0130</th>&#10;     *   <td>&#38;#92;u0069</td>&#10;     *   <td>capital letter I with dot above -&#38;gt; small letter i</td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>tr (Turkish)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#38;#92;u0049</th>&#10;     *   <td>&#38;#92;u0131</td>&#10;     *   <td>capital letter I -&#38;gt; small letter dotless i </td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>(all)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>French Fries</th>&#10;     *   <td>french fries</td>&#10;     *   <td>lowercased all chars in String</td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>(all)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#10;     *       &#38;Iota;&#38;Chi;&#38;Theta;&#38;Upsilon;&#38;Sigma;</th>&#10;     *   <td>&#38;iota;&#38;chi;&#38;theta;&#38;upsilon;&#38;sigma;</td>&#10;     *   <td>lowercased all chars in String</td>&#10;     * </tr>&#10;     * </tbody>&#10;     * </table>&#10;     *&#10;     * @param locale use the case transformation rules for this locale&#10;     * @return the {@code String}, converted to lowercase.&#10;     * @see     java.lang.String#toLowerCase()&#10;     * @see     java.lang.String#toUpperCase()&#10;     * @see     java.lang.String#toUpperCase(Locale)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 453
    label "java.lang.Character"
    type "class"
    comment "&#10; * The {@code Character} class wraps a value of the primitive&#10; * type {@code char} in an object. An object of class&#10; * {@code Character} contains a single field whose type is&#10; * {@code char}.&#10; * <p>&#10; * In addition, this class provides several methods for determining&#10; * a character's category (lowercase letter, digit, etc.) and for converting&#10; * characters from uppercase to lowercase and vice versa.&#10; * <p>&#10; * Character information is based on the Unicode Standard&#10; * <p>&#10; * The methods and data of class {@code Character} are defined by&#10; * the information in the <i>UnicodeData</i> file that is part of the&#10; * Unicode Character Database maintained by the Unicode&#10; * Consortium. This file specifies various properties including name&#10; * and general category for every defined Unicode code point or&#10; * character range.&#10; * <p>&#10; * The file and its description are available from the Unicode Consortium at:&#10; * <ul>&#10; * <li><a href=&#34;http://www.unicode.org&#34;>http://www.unicode.org</a>&#10; * </ul>&#10; *&#10; * <h2><a id=&#34;conformance&#34;>Unicode Conformance</a></h2>&#10; * <p>&#10; * The fields and methods of class {@code Character} are defined in terms&#10; * of character information from the Unicode Standard, specifically the&#10; * <i>UnicodeData</i> file that is part of the Unicode Character Database.&#10; * This file specifies properties including name and category for every&#10; * assigned Unicode code point or character range. The file is available&#10; * from the Unicode Consortium at&#10; * <a href=&#34;http://www.unicode.org&#34;>http://www.unicode.org</a>.&#10; * <p>&#10; * Character information is based on the Unicode Standard, version 13.0.&#10; * <p>&#10; * The Java platform has supported different versions of the Unicode&#10; * Standard over time. Upgrades to newer versions of the Unicode Standard&#10; * occurred in the following Java releases, each indicating the new version:&#10; * <table class=&#34;striped&#34;>&#10; * <caption style=&#34;display:none&#34;>Shows Java releases and supported Unicode versions</caption>&#10; * <thead>&#10; * <tr><th scope=&#34;col&#34;>Java release</th>&#10; *     <th scope=&#34;col&#34;>Unicode version</th></tr>&#10; * </thead>&#10; * <tbody>&#10; * <tr><td>Java SE 15</td>&#10; *     <td>Unicode 13.0</td></tr>&#10; * <tr><td>Java SE 13</td>&#10; *     <td>Unicode 12.1</td></tr>&#10; * <tr><td>Java SE 12</td>&#10; *     <td>Unicode 11.0</td></tr>&#10; * <tr><td>Java SE 11</td>&#10; *     <td>Unicode 10.0</td></tr>&#10; * <tr><td>Java SE 9</td>&#10; *     <td>Unicode 8.0</td></tr>&#10; * <tr><td>Java SE 8</td>&#10; *     <td>Unicode 6.2</td></tr>&#10; * <tr><td>Java SE 7</td>&#10; *     <td>Unicode 6.0</td></tr>&#10; * <tr><td>Java SE 5.0</td>&#10; *     <td>Unicode 4.0</td></tr>&#10; * <tr><td>Java SE 1.4</td>&#10; *     <td>Unicode 3.0</td></tr>&#10; * <tr><td>JDK 1.1</td>&#10; *     <td>Unicode 2.0</td></tr>&#10; * <tr><td>JDK 1.0.2</td>&#10; *     <td>Unicode 1.1.5</td></tr>&#10; * </tbody>&#10; * </table>&#10; * Variations from these base Unicode versions, such as recognized appendixes,&#10; * are documented elsewhere.&#10; * <h2><a id=&#34;unicode&#34;>Unicode Character Representations</a></h2>&#10; *&#10; * <p>The {@code char} data type (and therefore the value that a&#10; * {@code Character} object encapsulates) are based on the&#10; * original Unicode specification, which defined characters as&#10; * fixed-width 16-bit entities. The Unicode Standard has since been&#10; * changed to allow for characters whose representation requires more&#10; * than 16 bits.  The range of legal <em>code point</em>s is now&#10; * U+0000 to U+10FFFF, known as <em>Unicode scalar value</em>.&#10; * (Refer to the <a&#10; * href=&#34;http://www.unicode.org/reports/tr27/#notation&#34;><i>&#10; * definition</i></a> of the U+<i>n</i> notation in the Unicode&#10; * Standard.)&#10; *&#10; * <p><a id=&#34;BMP&#34;>The set of characters from U+0000 to U+FFFF</a> is&#10; * sometimes referred to as the <em>Basic Multilingual Plane (BMP)</em>.&#10; * <a id=&#34;supplementary&#34;>Characters</a> whose code points are greater&#10; * than U+FFFF are called <em>supplementary character</em>s.  The Java&#10; * platform uses the UTF-16 representation in {@code char} arrays and&#10; * in the {@code String} and {@code StringBuffer} classes. In&#10; * this representation, supplementary characters are represented as a pair&#10; * of {@code char} values, the first from the <em>high-surrogates</em>&#10; * range, (&#38;#92;uD800-&#38;#92;uDBFF), the second from the&#10; * <em>low-surrogates</em> range (&#38;#92;uDC00-&#38;#92;uDFFF).&#10; *&#10; * <p>A {@code char} value, therefore, represents Basic&#10; * Multilingual Plane (BMP) code points, including the surrogate&#10; * code points, or code units of the UTF-16 encoding. An&#10; * {@code int} value represents all Unicode code points,&#10; * including supplementary code points. The lower (least significant)&#10; * 21 bits of {@code int} are used to represent Unicode code&#10; * points and the upper (most significant) 11 bits must be zero.&#10; * Unless otherwise specified, the behavior with respect to&#10; * supplementary characters and surrogate {@code char} values is&#10; * as follows:&#10; *&#10; * <ul>&#10; * <li>The methods that only accept a {@code char} value cannot support&#10; * supplementary characters. They treat {@code char} values from the&#10; * surrogate ranges as undefined characters. For example,&#10; * {@code Character.isLetter('\u005CuD840')} returns {@code false}, even though&#10; * this specific value if followed by any low-surrogate value in a string&#10; * would represent a letter.&#10; *&#10; * <li>The methods that accept an {@code int} value support all&#10; * Unicode characters, including supplementary characters. For&#10; * example, {@code Character.isLetter(0x2F81A)} returns&#10; * {@code true} because the code point value represents a letter&#10; * (a CJK ideograph).&#10; * </ul>&#10; *&#10; * <p>In the Java SE API documentation, <em>Unicode code point</em> is&#10; * used for character values in the range between U+0000 and U+10FFFF,&#10; * and <em>Unicode code unit</em> is used for 16-bit&#10; * {@code char} values that are code units of the <em>UTF-16</em>&#10; * encoding. For more information on Unicode terminology, refer to the&#10; * <a href=&#34;http://www.unicode.org/glossary/&#34;>Unicode Glossary</a>.&#10; *&#10; * <!-- Android-removed: paragraph on ValueBased&#10; * <p>This is a <a href=&#34;{@docRoot}/java.base/java/lang/doc-files/ValueBased.html&#34;>value-based</a>&#10; * class; programmers should treat instances that are&#10; * {@linkplain #equals(Object) equal} as interchangeable and should not&#10; * use instances for synchronization, or unpredictable behavior may&#10; * occur. For example, in a future release, synchronization may fail.&#10; * -->&#10; *&#10; * @author  Lee Boynton&#10; * @author  Guy Steele&#10; * @author  Akira Tanaka&#10; * @author  Martin Buchholz&#10; * @author  Ulf Zibis&#10; * @since   1.0&#10; "
  ]
  node [
    id 454
    label "public static Character valueOf(char c)"
    type "method"
    comment "&#10;     * Returns a {@code Character} instance representing the specified&#10;     * {@code char} value.&#10;     * If a new {@code Character} instance is not required, this method&#10;     * should generally be used in preference to the constructor&#10;     * {@link #Character(char)}, as this method is likely to yield&#10;     * significantly better space and time performance by caching&#10;     * frequently requested values.&#10;     *&#10;     * This method will always cache values in the range {@code&#10;     * '\u005Cu0000'} to {@code '\u005Cu007F'}, inclusive, and may&#10;     * cache other values outside of this range.&#10;     *&#10;     * @param  c a char value.&#10;     * @return a {@code Character} instance representing {@code c}.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 455
    label "Character(char)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 456
    label "public char charValue()"
    type "method"
    comment "&#10;     * Returns the value of this {@code Character} object.&#10;     * @return  the primitive {@code char} value represented by&#10;     *          this object.&#10;     "
  ]
  node [
    id 457
    label "public static int hashCode(char value)"
    type "method"
    comment "&#10;     * Returns a hash code for a {@code char} value; compatible with&#10;     * {@code Character.hashCode()}.&#10;     *&#10;     * @since 1.8&#10;     *&#10;     * @param value The {@code char} for which to return a hash code.&#10;     * @return a hash code value for a {@code char} value.&#10;     "
  ]
  node [
    id 458
    label "public static String toString(char c)"
    type "method"
    comment "&#10;     * Returns a {@code String} object representing the&#10;     * specified {@code char}.  The result is a string of length&#10;     * 1 consisting solely of the specified {@code char}.&#10;     *&#10;     * @param c the {@code char} to be converted&#10;     * @return the string representation of the specified {@code char}&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 459
    label "public static String toString(int codePoint)"
    type "method"
    comment "&#10;     * Returns a {@code String} object representing the&#10;     * specified character (Unicode code point).  The result is a string of&#10;     * length 1 or 2, consisting solely of the specified {@code codePoint}.&#10;     *&#10;     * @param codePoint the {@code codePoint} to be converted&#10;     * @return the string representation of the specified {@code codePoint}&#10;     * @throws IllegalArgumentException if the specified&#10;     *      {@code codePoint} is not a {@linkplain #isValidCodePoint&#10;     *      valid Unicode code point}.&#10;     * @since 11&#10;     "
  ]
  node [
    id 460
    label "public static boolean isValidCodePoint(int codePoint)"
    type "method"
    comment "&#10;     * Determines whether the specified code point is a valid&#10;     * <a href=&#34;http://www.unicode.org/glossary/#code_point&#34;>&#10;     * Unicode code point value</a>.&#10;     *&#10;     * @param  codePoint the Unicode code point to be tested&#10;     * @return {@code true} if the specified code point value is between&#10;     *         {@link #MIN_CODE_POINT} and&#10;     *         {@link #MAX_CODE_POINT} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 461
    label "MIN_CODE_POINT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 462
    label "MAX_CODE_POINT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 463
    label "public static boolean isBmpCodePoint(int codePoint)"
    type "method"
    comment "&#10;     * Determines whether the specified character (Unicode code point)&#10;     * is in the <a href=&#34;#BMP&#34;>Basic Multilingual Plane (BMP)</a>.&#10;     * Such code points can be represented using a single {@code char}.&#10;     *&#10;     * @param  codePoint the character (Unicode code point) to be to&#10;     * @return {@code true} if the specified code point is between&#10;     *         {@link #MIN_VALUE} and {@link #MAX_VALUE} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @since  1.7&#10;     "
  ]
  node [
    id 464
    label "MIN_VALUE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 465
    label "MAX_VALUE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 466
    label "public static boolean isSupplementaryCodePoint(int codePoint)"
    type "method"
    comment "&#10;     * Determines whether the specified character (Unicode code point)&#10;     * is in the <a href=&#34;#supplementary&#34;>supplementary character</a> range.&#10;     *&#10;     * @param  codePoint the character (Unicode code point) to be tested&#10;     * @return {@code true} if the specified code point is between&#10;     *         {@link #MIN_SUPPLEMENTARY_CODE_POINT} and&#10;     *         {@link #MAX_CODE_POINT} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 467
    label "MIN_SUPPLEMENTARY_CODE_POINT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 468
    label "public static boolean isHighSurrogate(char ch)"
    type "method"
    comment "&#10;     * Determines if the given {@code char} value is a&#10;     * <a href=&#34;http://www.unicode.org/glossary/#high_surrogate_code_unit&#34;>&#10;     * Unicode high-surrogate code unit</a>&#10;     * (also known as <i>leading-surrogate code unit</i>).&#10;     *&#10;     * <p>Such values do not represent characters by themselves,&#10;     * but are used in the representation of&#10;     * <a href=&#34;#supplementary&#34;>supplementary characters</a>&#10;     * in the UTF-16 encoding.&#10;     *&#10;     * @param  ch the {@code char} value to be tested.&#10;     * @return {@code true} if the {@code char} value is between&#10;     *         {@link #MIN_HIGH_SURROGATE} and&#10;     *         {@link #MAX_HIGH_SURROGATE} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @see    Character#isLowSurrogate(char)&#10;     * @see    Character.UnicodeBlock#of(int)&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 469
    label "MIN_HIGH_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 470
    label "MAX_HIGH_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 471
    label "public static boolean isLowSurrogate(char ch)"
    type "method"
    comment "&#10;     * Determines if the given {@code char} value is a&#10;     * <a href=&#34;http://www.unicode.org/glossary/#low_surrogate_code_unit&#34;>&#10;     * Unicode low-surrogate code unit</a>&#10;     * (also known as <i>trailing-surrogate code unit</i>).&#10;     *&#10;     * <p>Such values do not represent characters by themselves,&#10;     * but are used in the representation of&#10;     * <a href=&#34;#supplementary&#34;>supplementary characters</a>&#10;     * in the UTF-16 encoding.&#10;     *&#10;     * @param  ch the {@code char} value to be tested.&#10;     * @return {@code true} if the {@code char} value is between&#10;     *         {@link #MIN_LOW_SURROGATE} and&#10;     *         {@link #MAX_LOW_SURROGATE} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @see    Character#isHighSurrogate(char)&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 472
    label "MAX_LOW_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 473
    label "MIN_LOW_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 474
    label "public static boolean isSurrogate(char ch)"
    type "method"
    comment "&#10;     * Determines if the given {@code char} value is a Unicode&#10;     * <i>surrogate code unit</i>.&#10;     *&#10;     * <p>Such values do not represent characters by themselves,&#10;     * but are used in the representation of&#10;     * <a href=&#34;#supplementary&#34;>supplementary characters</a>&#10;     * in the UTF-16 encoding.&#10;     *&#10;     * <p>A char value is a surrogate code unit if and only if it is either&#10;     * a {@linkplain #isLowSurrogate(char) low-surrogate code unit} or&#10;     * a {@linkplain #isHighSurrogate(char) high-surrogate code unit}.&#10;     *&#10;     * @param  ch the {@code char} value to be tested.&#10;     * @return {@code true} if the {@code char} value is between&#10;     *         {@link #MIN_SURROGATE} and&#10;     *         {@link #MAX_SURROGATE} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @since  1.7&#10;     "
  ]
  node [
    id 475
    label "MIN_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 476
    label "MAX_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 477
    label "public static boolean isSurrogatePair(char high, char low)"
    type "method"
    comment "&#10;     * Determines whether the specified pair of {@code char}&#10;     * values is a valid&#10;     * <a href=&#34;http://www.unicode.org/glossary/#surrogate_pair&#34;>&#10;     * Unicode surrogate pair</a>.&#10;     *&#10;     * <p>This method is equivalent to the expression:&#10;     * <blockquote><pre>{@code&#10;     * isHighSurrogate(high) &#38;&#38; isLowSurrogate(low)&#10;     * }</pre></blockquote>&#10;     *&#10;     * @param  high the high-surrogate code value to be tested&#10;     * @param  low the low-surrogate code value to be tested&#10;     * @return {@code true} if the specified high and&#10;     * low-surrogate code values represent a valid surrogate pair;&#10;     * {@code false} otherwise.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 478
    label "public static int charCount(int codePoint)"
    type "method"
    comment "&#10;     * Determines the number of {@code char} values needed to&#10;     * represent the specified character (Unicode code point). If the&#10;     * specified character is equal to or greater than 0x10000, then&#10;     * the method returns 2. Otherwise, the method returns 1.&#10;     *&#10;     * <p>This method doesn't validate the specified character to be a&#10;     * valid Unicode code point. The caller must validate the&#10;     * character value using {@link #isValidCodePoint(int) isValidCodePoint}&#10;     * if necessary.&#10;     *&#10;     * @param   codePoint the character (Unicode code point) to be tested.&#10;     * @return  2 if the character is a valid supplementary character; 1 otherwise.&#10;     * @see     Character#isSupplementaryCodePoint(int)&#10;     * @since   1.5&#10;     "
  ]
  node [
    id 479
    label "isValidCodePoint(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 480
    label "public static int toCodePoint(char high, char low)"
    type "method"
    comment "&#10;     * Converts the specified surrogate pair to its supplementary code&#10;     * point value. This method does not validate the specified&#10;     * surrogate pair. The caller must validate it using {@link&#10;     * #isSurrogatePair(char, char) isSurrogatePair} if necessary.&#10;     *&#10;     * @param  high the high-surrogate code unit&#10;     * @param  low the low-surrogate code unit&#10;     * @return the supplementary code point composed from the&#10;     *         specified surrogate pair.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 481
    label "isSurrogatePair(char"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 482
    label "public static int codePointAt(CharSequence seq, int index)"
    type "method"
    comment "&#10;     * Returns the code point at the given index of the&#10;     * {@code CharSequence}. If the {@code char} value at&#10;     * the given index in the {@code CharSequence} is in the&#10;     * high-surrogate range, the following index is less than the&#10;     * length of the {@code CharSequence}, and the&#10;     * {@code char} value at the following index is in the&#10;     * low-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at the given index is returned.&#10;     *&#10;     * @param seq a sequence of {@code char} values (Unicode code&#10;     * units)&#10;     * @param index the index to the {@code char} values (Unicode&#10;     * code units) in {@code seq} to be converted&#10;     * @return the Unicode code point at the given index&#10;     * @throws NullPointerException if {@code seq} is null.&#10;     * @throws IndexOutOfBoundsException if the value&#10;     * {@code index} is negative or not less than&#10;     * {@link CharSequence#length() seq.length()}.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 483
    label "public static int codePointAt(char[] a, int index)"
    type "method"
    comment "&#10;     * Returns the code point at the given index of the&#10;     * {@code char} array. If the {@code char} value at&#10;     * the given index in the {@code char} array is in the&#10;     * high-surrogate range, the following index is less than the&#10;     * length of the {@code char} array, and the&#10;     * {@code char} value at the following index is in the&#10;     * low-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at the given index is returned.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param index the index to the {@code char} values (Unicode&#10;     * code units) in the {@code char} array to be converted&#10;     * @return the Unicode code point at the given index&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException if the value&#10;     * {@code index} is negative or not less than&#10;     * the length of the {@code char} array.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 484
    label "public static int codePointAt(char[] a, int index, int limit)"
    type "method"
    comment "&#10;     * Returns the code point at the given index of the&#10;     * {@code char} array, where only array elements with&#10;     * {@code index} less than {@code limit} can be used. If&#10;     * the {@code char} value at the given index in the&#10;     * {@code char} array is in the high-surrogate range, the&#10;     * following index is less than the {@code limit}, and the&#10;     * {@code char} value at the following index is in the&#10;     * low-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at the given index is returned.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param index the index to the {@code char} values (Unicode&#10;     * code units) in the {@code char} array to be converted&#10;     * @param limit the index after the last array element that&#10;     * can be used in the {@code char} array&#10;     * @return the Unicode code point at the given index&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException if the {@code index}&#10;     * argument is negative or not less than the {@code limit}&#10;     * argument, or if the {@code limit} argument is negative or&#10;     * greater than the length of the {@code char} array.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 485
    label " static int codePointAtImpl(char[] a, int index, int limit)"
    type "method"
    comment " throws ArrayIndexOutOfBoundsException if index out of bounds"
  ]
  node [
    id 486
    label "public static int codePointBefore(CharSequence seq, int index)"
    type "method"
    comment "&#10;     * Returns the code point preceding the given index of the&#10;     * {@code CharSequence}. If the {@code char} value at&#10;     * {@code (index - 1)} in the {@code CharSequence} is in&#10;     * the low-surrogate range, {@code (index - 2)} is not&#10;     * negative, and the {@code char} value at {@code (index - 2)}&#10;     * in the {@code CharSequence} is in the&#10;     * high-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at {@code (index - 1)} is&#10;     * returned.&#10;     *&#10;     * @param seq the {@code CharSequence} instance&#10;     * @param index the index following the code point that should be returned&#10;     * @return the Unicode code point value before the given index.&#10;     * @throws NullPointerException if {@code seq} is null.&#10;     * @throws IndexOutOfBoundsException if the {@code index}&#10;     * argument is less than 1 or greater than {@link&#10;     * CharSequence#length() seq.length()}.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 487
    label "public static int codePointBefore(char[] a, int index)"
    type "method"
    comment "&#10;     * Returns the code point preceding the given index of the&#10;     * {@code char} array. If the {@code char} value at&#10;     * {@code (index - 1)} in the {@code char} array is in&#10;     * the low-surrogate range, {@code (index - 2)} is not&#10;     * negative, and the {@code char} value at {@code (index - 2)}&#10;     * in the {@code char} array is in the&#10;     * high-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at {@code (index - 1)} is&#10;     * returned.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param index the index following the code point that should be returned&#10;     * @return the Unicode code point value before the given index.&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException if the {@code index}&#10;     * argument is less than 1 or greater than the length of the&#10;     * {@code char} array&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 488
    label "public static int codePointBefore(char[] a, int index, int start)"
    type "method"
    comment "&#10;     * Returns the code point preceding the given index of the&#10;     * {@code char} array, where only array elements with&#10;     * {@code index} greater than or equal to {@code start}&#10;     * can be used. If the {@code char} value at {@code (index - 1)}&#10;     * in the {@code char} array is in the&#10;     * low-surrogate range, {@code (index - 2)} is not less than&#10;     * {@code start}, and the {@code char} value at&#10;     * {@code (index - 2)} in the {@code char} array is in&#10;     * the high-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at {@code (index - 1)} is&#10;     * returned.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param index the index following the code point that should be returned&#10;     * @param start the index of the first array element in the&#10;     * {@code char} array&#10;     * @return the Unicode code point value before the given index.&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException if the {@code index}&#10;     * argument is not greater than the {@code start} argument or&#10;     * is greater than the length of the {@code char} array, or&#10;     * if the {@code start} argument is negative or not less than&#10;     * the length of the {@code char} array.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 489
    label " static int codePointBeforeImpl(char[] a, int index, int start)"
    type "method"
    comment " throws ArrayIndexOutOfBoundsException if index-1 out of bounds"
  ]
  node [
    id 490
    label "public static char highSurrogate(int codePoint)"
    type "method"
    comment "&#10;     * Returns the leading surrogate (a&#10;     * <a href=&#34;http://www.unicode.org/glossary/#high_surrogate_code_unit&#34;>&#10;     * high surrogate code unit</a>) of the&#10;     * <a href=&#34;http://www.unicode.org/glossary/#surrogate_pair&#34;>&#10;     * surrogate pair</a>&#10;     * representing the specified supplementary character (Unicode&#10;     * code point) in the UTF-16 encoding.  If the specified character&#10;     * is not a&#10;     * <a href=&#34;Character.html#supplementary&#34;>supplementary character</a>,&#10;     * an unspecified {@code char} is returned.&#10;     *&#10;     * <p>If&#10;     * {@link #isSupplementaryCodePoint isSupplementaryCodePoint(x)}&#10;     * is {@code true}, then&#10;     * {@link #isHighSurrogate isHighSurrogate}{@code (highSurrogate(x))} and&#10;     * {@link #toCodePoint toCodePoint}{@code (highSurrogate(x), }{@link #lowSurrogate lowSurrogate}{@code (x)) == x}&#10;     * are also always {@code true}.&#10;     *&#10;     * @param   codePoint a supplementary character (Unicode code point)&#10;     * @return  the leading surrogate code unit used to represent the&#10;     *          character in the UTF-16 encoding&#10;     * @since   1.7&#10;     "
  ]
  node [
    id 491
    label "isSupplementaryCodePoint"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 492
    label "toCodePoint"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 493
    label "lowSurrogate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 494
    label "isHighSurrogate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 495
    label "public static char lowSurrogate(int codePoint)"
    type "method"
    comment "&#10;     * Returns the trailing surrogate (a&#10;     * <a href=&#34;http://www.unicode.org/glossary/#low_surrogate_code_unit&#34;>&#10;     * low surrogate code unit</a>) of the&#10;     * <a href=&#34;http://www.unicode.org/glossary/#surrogate_pair&#34;>&#10;     * surrogate pair</a>&#10;     * representing the specified supplementary character (Unicode&#10;     * code point) in the UTF-16 encoding.  If the specified character&#10;     * is not a&#10;     * <a href=&#34;Character.html#supplementary&#34;>supplementary character</a>,&#10;     * an unspecified {@code char} is returned.&#10;     *&#10;     * <p>If&#10;     * {@link #isSupplementaryCodePoint isSupplementaryCodePoint(x)}&#10;     * is {@code true}, then&#10;     * {@link #isLowSurrogate isLowSurrogate}{@code (lowSurrogate(x))} and&#10;     * {@link #toCodePoint toCodePoint}{@code (}{@link #highSurrogate highSurrogate}{@code (x), lowSurrogate(x)) == x}&#10;     * are also always {@code true}.&#10;     *&#10;     * @param   codePoint a supplementary character (Unicode code point)&#10;     * @return  the trailing surrogate code unit used to represent the&#10;     *          character in the UTF-16 encoding&#10;     * @since   1.7&#10;     "
  ]
  node [
    id 496
    label "isLowSurrogate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 497
    label "highSurrogate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 498
    label "public static int toChars(int codePoint, char[] dst, int dstIndex)"
    type "method"
    comment "&#10;     * Converts the specified character (Unicode code point) to its&#10;     * UTF-16 representation. If the specified code point is a BMP&#10;     * (Basic Multilingual Plane or Plane 0) value, the same value is&#10;     * stored in {@code dst[dstIndex]}, and 1 is returned. If the&#10;     * specified code point is a supplementary character, its&#10;     * surrogate values are stored in {@code dst[dstIndex]}&#10;     * (high-surrogate) and {@code dst[dstIndex+1]}&#10;     * (low-surrogate), and 2 is returned.&#10;     *&#10;     * @param  codePoint the character (Unicode code point) to be converted.&#10;     * @param  dst an array of {@code char} in which the&#10;     * {@code codePoint}'s UTF-16 value is stored.&#10;     * @param dstIndex the start index into the {@code dst}&#10;     * array where the converted value is stored.&#10;     * @return 1 if the code point is a BMP code point, 2 if the&#10;     * code point is a supplementary code point.&#10;     * @throws IllegalArgumentException if the specified&#10;     * {@code codePoint} is not a valid Unicode code point.&#10;     * @throws NullPointerException if the specified {@code dst} is null.&#10;     * @throws IndexOutOfBoundsException if {@code dstIndex}&#10;     * is negative or not less than {@code dst.length}, or if&#10;     * {@code dst} at {@code dstIndex} doesn't have enough&#10;     * array element(s) to store the resulting {@code char}&#10;     * value(s). (If {@code dstIndex} is equal to&#10;     * {@code dst.length-1} and the specified&#10;     * {@code codePoint} is a supplementary character, the&#10;     * high-surrogate value is not stored in&#10;     * {@code dst[dstIndex]}.)&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 499
    label "public static char[] toChars(int codePoint)"
    type "method"
    comment "&#10;     * Converts the specified character (Unicode code point) to its&#10;     * UTF-16 representation stored in a {@code char} array. If&#10;     * the specified code point is a BMP (Basic Multilingual Plane or&#10;     * Plane 0) value, the resulting {@code char} array has&#10;     * the same value as {@code codePoint}. If the specified code&#10;     * point is a supplementary code point, the resulting&#10;     * {@code char} array has the corresponding surrogate pair.&#10;     *&#10;     * @param  codePoint a Unicode code point&#10;     * @return a {@code char} array having&#10;     *         {@code codePoint}'s UTF-16 representation.&#10;     * @throws IllegalArgumentException if the specified&#10;     * {@code codePoint} is not a valid Unicode code point.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 500
    label "public static int codePointCount(CharSequence seq, int beginIndex, int endIndex)"
    type "method"
    comment "&#10;     * Returns the number of Unicode code points in the text range of&#10;     * the specified char sequence. The text range begins at the&#10;     * specified {@code beginIndex} and extends to the&#10;     * {@code char} at index {@code endIndex - 1}. Thus the&#10;     * length (in {@code char}s) of the text range is&#10;     * {@code endIndex-beginIndex}. Unpaired surrogates within&#10;     * the text range count as one code point each.&#10;     *&#10;     * @param seq the char sequence&#10;     * @param beginIndex the index to the first {@code char} of&#10;     * the text range.&#10;     * @param endIndex the index after the last {@code char} of&#10;     * the text range.&#10;     * @return the number of Unicode code points in the specified text&#10;     * range&#10;     * @throws NullPointerException if {@code seq} is null.&#10;     * @throws IndexOutOfBoundsException if the&#10;     * {@code beginIndex} is negative, or {@code endIndex}&#10;     * is larger than the length of the given sequence, or&#10;     * {@code beginIndex} is larger than {@code endIndex}.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 501
    label "public static int codePointCount(char[] a, int offset, int count)"
    type "method"
    comment "&#10;     * Returns the number of Unicode code points in a subarray of the&#10;     * {@code char} array argument. The {@code offset}&#10;     * argument is the index of the first {@code char} of the&#10;     * subarray and the {@code count} argument specifies the&#10;     * length of the subarray in {@code char}s. Unpaired&#10;     * surrogates within the subarray count as one code point each.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param offset the index of the first {@code char} in the&#10;     * given {@code char} array&#10;     * @param count the length of the subarray in {@code char}s&#10;     * @return the number of Unicode code points in the specified subarray&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException if {@code offset} or&#10;     * {@code count} is negative, or if {@code offset +&#10;     * count} is larger than the length of the given array.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 502
    label "public static int offsetByCodePoints(CharSequence seq, int index, int codePointOffset)"
    type "method"
    comment "&#10;     * Returns the index within the given char sequence that is offset&#10;     * from the given {@code index} by {@code codePointOffset}&#10;     * code points. Unpaired surrogates within the text range given by&#10;     * {@code index} and {@code codePointOffset} count as&#10;     * one code point each.&#10;     *&#10;     * @param seq the char sequence&#10;     * @param index the index to be offset&#10;     * @param codePointOffset the offset in code points&#10;     * @return the index within the char sequence&#10;     * @throws NullPointerException if {@code seq} is null.&#10;     * @throws IndexOutOfBoundsException if {@code index}&#10;     *   is negative or larger then the length of the char sequence,&#10;     *   or if {@code codePointOffset} is positive and the&#10;     *   subsequence starting with {@code index} has fewer than&#10;     *   {@code codePointOffset} code points, or if&#10;     *   {@code codePointOffset} is negative and the subsequence&#10;     *   before {@code index} has fewer than the absolute value&#10;     *   of {@code codePointOffset} code points.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 503
    label "public static int offsetByCodePoints(char[] a, int start, int count, int index, int codePointOffset)"
    type "method"
    comment "&#10;     * Returns the index within the given {@code char} subarray&#10;     * that is offset from the given {@code index} by&#10;     * {@code codePointOffset} code points. The&#10;     * {@code start} and {@code count} arguments specify a&#10;     * subarray of the {@code char} array. Unpaired surrogates&#10;     * within the text range given by {@code index} and&#10;     * {@code codePointOffset} count as one code point each.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param start the index of the first {@code char} of the&#10;     * subarray&#10;     * @param count the length of the subarray in {@code char}s&#10;     * @param index the index to be offset&#10;     * @param codePointOffset the offset in code points&#10;     * @return the index within the subarray&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException&#10;     *   if {@code start} or {@code count} is negative,&#10;     *   or if {@code start + count} is larger than the length of&#10;     *   the given array,&#10;     *   or if {@code index} is less than {@code start} or&#10;     *   larger then {@code start + count},&#10;     *   or if {@code codePointOffset} is positive and the text range&#10;     *   starting with {@code index} and ending with {@code start + count - 1}&#10;     *   has fewer than {@code codePointOffset} code&#10;     *   points,&#10;     *   or if {@code codePointOffset} is negative and the text range&#10;     *   starting with {@code start} and ending with {@code index - 1}&#10;     *   has fewer than the absolute value of&#10;     *   {@code codePointOffset} code points.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 504
    label "public static boolean isLowerCase(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a lowercase character.&#10;     * <p>&#10;     * A character is lowercase if its general category type, provided&#10;     * by {@code Character.getType(ch)}, is&#10;     * {@code LOWERCASE_LETTER}, or it has contributory property&#10;     * Other_Lowercase as defined by the Unicode Standard.&#10;     * <p>&#10;     * The following are examples of lowercase characters:&#10;     * <blockquote><pre>&#10;     * a b c d e f g h i j k l m n o p q r s t u v w x y z&#10;     * '&#38;#92;u00DF' '&#38;#92;u00E0' '&#38;#92;u00E1' '&#38;#92;u00E2' '&#38;#92;u00E3' '&#38;#92;u00E4' '&#38;#92;u00E5' '&#38;#92;u00E6'&#10;     * '&#38;#92;u00E7' '&#38;#92;u00E8' '&#38;#92;u00E9' '&#38;#92;u00EA' '&#38;#92;u00EB' '&#38;#92;u00EC' '&#38;#92;u00ED' '&#38;#92;u00EE'&#10;     * '&#38;#92;u00EF' '&#38;#92;u00F0' '&#38;#92;u00F1' '&#38;#92;u00F2' '&#38;#92;u00F3' '&#38;#92;u00F4' '&#38;#92;u00F5' '&#38;#92;u00F6'&#10;     * '&#38;#92;u00F8' '&#38;#92;u00F9' '&#38;#92;u00FA' '&#38;#92;u00FB' '&#38;#92;u00FC' '&#38;#92;u00FD' '&#38;#92;u00FE' '&#38;#92;u00FF'&#10;     * </pre></blockquote>&#10;     * <p> Many other Unicode characters are lowercase too.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isLowerCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is lowercase;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     Character#isTitleCase(char)&#10;     * @see     Character#toLowerCase(char)&#10;     * @see     Character#getType(char)&#10;     "
  ]
  node [
    id 505
    label "isLowerCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 506
    label "public static boolean isLowerCase(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isLowerCase(int codePoint) {&#10;        return CharacterData.of(codePoint).isLowerCase(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 507
    label "public static boolean isUpperCase(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is an uppercase character.&#10;     * <p>&#10;     * A character is uppercase if its general category type, provided by&#10;     * {@code Character.getType(ch)}, is {@code UPPERCASE_LETTER}.&#10;     * or it has contributory property Other_Uppercase as defined by the Unicode Standard.&#10;     * <p>&#10;     * The following are examples of uppercase characters:&#10;     * <blockquote><pre>&#10;     * A B C D E F G H I J K L M N O P Q R S T U V W X Y Z&#10;     * '&#38;#92;u00C0' '&#38;#92;u00C1' '&#38;#92;u00C2' '&#38;#92;u00C3' '&#38;#92;u00C4' '&#38;#92;u00C5' '&#38;#92;u00C6' '&#38;#92;u00C7'&#10;     * '&#38;#92;u00C8' '&#38;#92;u00C9' '&#38;#92;u00CA' '&#38;#92;u00CB' '&#38;#92;u00CC' '&#38;#92;u00CD' '&#38;#92;u00CE' '&#38;#92;u00CF'&#10;     * '&#38;#92;u00D0' '&#38;#92;u00D1' '&#38;#92;u00D2' '&#38;#92;u00D3' '&#38;#92;u00D4' '&#38;#92;u00D5' '&#38;#92;u00D6' '&#38;#92;u00D8'&#10;     * '&#38;#92;u00D9' '&#38;#92;u00DA' '&#38;#92;u00DB' '&#38;#92;u00DC' '&#38;#92;u00DD' '&#38;#92;u00DE'&#10;     * </pre></blockquote>&#10;     * <p> Many other Unicode characters are uppercase too.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isUpperCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is uppercase;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     Character#isTitleCase(char)&#10;     * @see     Character#toUpperCase(char)&#10;     * @see     Character#getType(char)&#10;     * @since   1.0&#10;     "
  ]
  node [
    id 508
    label "isUpperCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 509
    label "public static boolean isUpperCase(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isUpperCase(int codePoint) {&#10;        return CharacterData.of(codePoint).isUpperCase(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 510
    label "public static boolean isTitleCase(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a titlecase character.&#10;     * <p>&#10;     * A character is a titlecase character if its general&#10;     * category type, provided by {@code Character.getType(ch)},&#10;     * is {@code TITLECASE_LETTER}.&#10;     * <p>&#10;     * Some characters look like pairs of Latin letters. For example, there&#10;     * is an uppercase letter that looks like &#34;LJ&#34; and has a corresponding&#10;     * lowercase letter that looks like &#34;lj&#34;. A third form, which looks like &#34;Lj&#34;,&#10;     * is the appropriate form to use when rendering a word in lowercase&#10;     * with initial capitals, as for a book title.&#10;     * <p>&#10;     * These are some of the Unicode characters for which this method returns&#10;     * {@code true}:&#10;     * <ul>&#10;     * <li>{@code LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON}&#10;     * <li>{@code LATIN CAPITAL LETTER L WITH SMALL LETTER J}&#10;     * <li>{@code LATIN CAPITAL LETTER N WITH SMALL LETTER J}&#10;     * <li>{@code LATIN CAPITAL LETTER D WITH SMALL LETTER Z}&#10;     * </ul>&#10;     * <p> Many other Unicode characters are titlecase too.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isTitleCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is titlecase;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     Character#isUpperCase(char)&#10;     * @see     Character#toTitleCase(char)&#10;     * @see     Character#getType(char)&#10;     * @since   1.0.2&#10;     "
  ]
  node [
    id 511
    label "isTitleCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 512
    label "public static boolean isTitleCase(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isTitleCase(int codePoint) {&#10;        return getType(codePoint) == Character.TITLECASE_LETTER;&#10;    }&#10;    "
  ]
  node [
    id 513
    label "public static boolean isDigit(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a digit.&#10;     * <p>&#10;     * A character is a digit if its general category type, provided&#10;     * by {@code Character.getType(ch)}, is&#10;     * {@code DECIMAL_DIGIT_NUMBER}.&#10;     * <p>&#10;     * Some Unicode character ranges that contain digits:&#10;     * <ul>&#10;     * <li>{@code '\u005Cu0030'} through {@code '\u005Cu0039'},&#10;     *     ISO-LATIN-1 digits ({@code '0'} through {@code '9'})&#10;     * <li>{@code '\u005Cu0660'} through {@code '\u005Cu0669'},&#10;     *     Arabic-Indic digits&#10;     * <li>{@code '\u005Cu06F0'} through {@code '\u005Cu06F9'},&#10;     *     Extended Arabic-Indic digits&#10;     * <li>{@code '\u005Cu0966'} through {@code '\u005Cu096F'},&#10;     *     Devanagari digits&#10;     * <li>{@code '\u005CuFF10'} through {@code '\u005CuFF19'},&#10;     *     Fullwidth digits&#10;     * </ul>&#10;     *&#10;     * Many other character ranges contain digits as well.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isDigit(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is a digit;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#digit(char, int)&#10;     * @see     Character#forDigit(int, int)&#10;     * @see     Character#getType(char)&#10;     "
  ]
  node [
    id 514
    label "isDigit(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 515
    label "public static boolean isDigit(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isDigit(int codePoint) {&#10;        return CharacterData.of(codePoint).isDigit(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 516
    label "public static boolean isDefined(char ch)"
    type "method"
    comment "&#10;     * Determines if a character is defined in Unicode.&#10;     * <p>&#10;     * A character is defined if at least one of the following is true:&#10;     * <ul>&#10;     * <li>It has an entry in the UnicodeData file.&#10;     * <li>It has a value in a range defined by the UnicodeData file.&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isDefined(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested&#10;     * @return  {@code true} if the character has a defined meaning&#10;     *          in Unicode; {@code false} otherwise.&#10;     * @see     Character#isDigit(char)&#10;     * @see     Character#isLetter(char)&#10;     * @see     Character#isLetterOrDigit(char)&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     Character#isTitleCase(char)&#10;     * @see     Character#isUpperCase(char)&#10;     * @since   1.0.2&#10;     "
  ]
  node [
    id 517
    label "isDefined(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 518
    label "public static boolean isDefined(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isDefined(int codePoint) {&#10;        return getType(codePoint) != Character.UNASSIGNED;&#10;    }&#10;    "
  ]
  node [
    id 519
    label "public static boolean isLetter(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a letter.&#10;     * <p>&#10;     * A character is considered to be a letter if its general&#10;     * category type, provided by {@code Character.getType(ch)},&#10;     * is any of the following:&#10;     * <ul>&#10;     * <li> {@code UPPERCASE_LETTER}&#10;     * <li> {@code LOWERCASE_LETTER}&#10;     * <li> {@code TITLECASE_LETTER}&#10;     * <li> {@code MODIFIER_LETTER}&#10;     * <li> {@code OTHER_LETTER}&#10;     * </ul>&#10;     *&#10;     * Not all letters have case. Many characters are&#10;     * letters but are neither uppercase nor lowercase nor titlecase.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isLetter(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is a letter;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isDigit(char)&#10;     * @see     Character#isJavaIdentifierStart(char)&#10;     * @see     Character#isJavaLetter(char)&#10;     * @see     Character#isJavaLetterOrDigit(char)&#10;     * @see     Character#isLetterOrDigit(char)&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     Character#isTitleCase(char)&#10;     * @see     Character#isUnicodeIdentifierStart(char)&#10;     * @see     Character#isUpperCase(char)&#10;     "
  ]
  node [
    id 520
    label "isLetter(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 521
    label "public static boolean isLetter(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isLetter(int codePoint) {&#10;        return ((((1 << Character.UPPERCASE_LETTER) |&#10;            (1 << Character.LOWERCASE_LETTER) |&#10;            (1 << Character.TITLECASE_LETTER) |&#10;            (1 << Character.MODIFIER_LETTER) |&#10;            (1 << Character.OTHER_LETTER)) >> getType(codePoint)) &#38; 1)&#10;            != 0;&#10;    }&#10;    "
  ]
  node [
    id 522
    label "public static boolean isLetterOrDigit(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a letter or digit.&#10;     * <p>&#10;     * A character is considered to be a letter or digit if either&#10;     * {@code Character.isLetter(char ch)} or&#10;     * {@code Character.isDigit(char ch)} returns&#10;     * {@code true} for the character.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isLetterOrDigit(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is a letter or digit;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isDigit(char)&#10;     * @see     Character#isJavaIdentifierPart(char)&#10;     * @see     Character#isJavaLetter(char)&#10;     * @see     Character#isJavaLetterOrDigit(char)&#10;     * @see     Character#isLetter(char)&#10;     * @see     Character#isUnicodeIdentifierPart(char)&#10;     * @since   1.0.2&#10;     "
  ]
  node [
    id 523
    label "isLetterOrDigit(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 524
    label "public static boolean isLetterOrDigit(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isLetterOrDigit(int codePoint) {&#10;        return ((((1 << Character.UPPERCASE_LETTER) |&#10;            (1 << Character.LOWERCASE_LETTER) |&#10;            (1 << Character.TITLECASE_LETTER) |&#10;            (1 << Character.MODIFIER_LETTER) |&#10;            (1 << Character.OTHER_LETTER) |&#10;            (1 << Character.DECIMAL_DIGIT_NUMBER)) >> getType(codePoint)) &#38; 1)&#10;            != 0;&#10;    }&#10;    "
  ]
  node [
    id 525
    label "public static boolean isAlphabetic(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isAlphabetic(int codePoint) {&#10;        return (((((1 << Character.UPPERCASE_LETTER) |&#10;            (1 << Character.LOWERCASE_LETTER) |&#10;            (1 << Character.TITLECASE_LETTER) |&#10;            (1 << Character.MODIFIER_LETTER) |&#10;            (1 << Character.OTHER_LETTER) |&#10;            (1 << Character.LETTER_NUMBER)) >> getType(codePoint)) &#38; 1) != 0) ||&#10;            CharacterData.of(codePoint).isOtherAlphabetic(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 526
    label "public static boolean isIdeographic(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isIdeographic(int codePoint) {&#10;        return CharacterData.of(codePoint).isIdeographic(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 527
    label "public static boolean isJavaIdentifierStart(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is&#10;     * permissible as the first character in a Java identifier.&#10;     * <p>&#10;     * A character may start a Java identifier if and only if&#10;     * one of the following conditions is true:&#10;     * <ul>&#10;     * <li> {@link #isLetter(char) isLetter(ch)} returns {@code true}&#10;     * <li> {@link #getType(char) getType(ch)} returns {@code LETTER_NUMBER}&#10;     * <li> {@code ch} is a currency symbol (such as {@code '$'})&#10;     * <li> {@code ch} is a connecting punctuation character (such as {@code '_'}).&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isJavaIdentifierStart(int)} method.&#10;     *&#10;     * @param   ch the character to be tested.&#10;     * @return  {@code true} if the character may start a Java identifier;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isJavaIdentifierPart(char)&#10;     * @see     Character#isLetter(char)&#10;     * @see     Character#isUnicodeIdentifierStart(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 528
    label "isLetter(char)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 529
    label "getType(char)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 530
    label "isJavaIdentifierStart(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 531
    label "public static boolean isJavaIdentifierStart(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isJavaIdentifierStart(int codePoint) {&#10;        return CharacterData.of(codePoint).isJavaIdentifierStart(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 532
    label "public static boolean isJavaIdentifierPart(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character may be part of a Java&#10;     * identifier as other than the first character.&#10;     * <p>&#10;     * A character may be part of a Java identifier if any of the following&#10;     * conditions are true:&#10;     * <ul>&#10;     * <li>  it is a letter&#10;     * <li>  it is a currency symbol (such as {@code '$'})&#10;     * <li>  it is a connecting punctuation character (such as {@code '_'})&#10;     * <li>  it is a digit&#10;     * <li>  it is a numeric letter (such as a Roman numeral character)&#10;     * <li>  it is a combining mark&#10;     * <li>  it is a non-spacing mark&#10;     * <li> {@code isIdentifierIgnorable} returns&#10;     * {@code true} for the character&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isJavaIdentifierPart(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return {@code true} if the character may be part of a&#10;     *          Java identifier; {@code false} otherwise.&#10;     * @see     Character#isIdentifierIgnorable(char)&#10;     * @see     Character#isJavaIdentifierStart(char)&#10;     * @see     Character#isLetterOrDigit(char)&#10;     * @see     Character#isUnicodeIdentifierPart(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 533
    label "isJavaIdentifierPart(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 534
    label "public static boolean isJavaIdentifierPart(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isJavaIdentifierPart(int codePoint) {&#10;        return CharacterData.of(codePoint).isJavaIdentifierPart(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 535
    label "public static boolean isUnicodeIdentifierStart(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is permissible as the&#10;     * first character in a Unicode identifier.&#10;     * <p>&#10;     * A character may start a Unicode identifier if and only if&#10;     * one of the following conditions is true:&#10;     * <ul>&#10;     * <li> {@link #isLetter(char) isLetter(ch)} returns {@code true}&#10;     * <li> {@link #getType(char) getType(ch)} returns&#10;     *      {@code LETTER_NUMBER}.&#10;     * <li> it is an <a href=&#34;http://www.unicode.org/reports/tr44/#Other_ID_Start&#34;>&#10;     *      {@code Other_ID_Start}</a> character.&#10;     * </ul>&#10;     * <p>&#10;     * This method conforms to <a href=&#34;https://unicode.org/reports/tr31/#R1&#34;>&#10;     * UAX31-R1: Default Identifiers</a> requirement of the Unicode Standard,&#10;     * with the following profile of UAX31:&#10;     * <pre>&#10;     * Start := ID_Start + 'VERTICAL TILDE' (U+2E2F)&#10;     * </pre>&#10;     * {@code 'VERTICAL TILDE'} is added to {@code Start} for backward&#10;     * compatibility.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isUnicodeIdentifierStart(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  {@code true} if the character may start a Unicode&#10;     *          identifier; {@code false} otherwise.&#10;     * @see     Character#isJavaIdentifierStart(char)&#10;     * @see     Character#isLetter(char)&#10;     * @see     Character#isUnicodeIdentifierPart(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 536
    label "isUnicodeIdentifierStart(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 537
    label "public static boolean isUnicodeIdentifierStart(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isUnicodeIdentifierStart(int codePoint) {&#10;        return CharacterData.of(codePoint).isUnicodeIdentifierStart(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 538
    label "public static boolean isUnicodeIdentifierPart(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character may be part of a Unicode&#10;     * identifier as other than the first character.&#10;     * <p>&#10;     * A character may be part of a Unicode identifier if and only if&#10;     * one of the following statements is true:&#10;     * <ul>&#10;     * <li>  it is a letter&#10;     * <li>  it is a connecting punctuation character (such as {@code '_'})&#10;     * <li>  it is a digit&#10;     * <li>  it is a numeric letter (such as a Roman numeral character)&#10;     * <li>  it is a combining mark&#10;     * <li>  it is a non-spacing mark&#10;     * <li> {@code isIdentifierIgnorable} returns&#10;     * {@code true} for this character.&#10;     * <li> it is an <a href=&#34;http://www.unicode.org/reports/tr44/#Other_ID_Start&#34;>&#10;     *      {@code Other_ID_Start}</a> character.&#10;     * <li> it is an <a href=&#34;http://www.unicode.org/reports/tr44/#Other_ID_Continue&#34;>&#10;     *      {@code Other_ID_Continue}</a> character.&#10;     * </ul>&#10;     * <p>&#10;     * This method conforms to <a href=&#34;https://unicode.org/reports/tr31/#R1&#34;>&#10;     * UAX31-R1: Default Identifiers</a> requirement of the Unicode Standard,&#10;     * with the following profile of UAX31:&#10;     * <pre>&#10;     * Continue := Start + ID_Continue + ignorable&#10;     * Medial := empty&#10;     * ignorable := isIdentifierIgnorable(char) returns true for the character&#10;     * </pre>&#10;     * {@code ignorable} is added to {@code Continue} for backward&#10;     * compatibility.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isUnicodeIdentifierPart(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  {@code true} if the character may be part of a&#10;     *          Unicode identifier; {@code false} otherwise.&#10;     * @see     Character#isIdentifierIgnorable(char)&#10;     * @see     Character#isJavaIdentifierPart(char)&#10;     * @see     Character#isLetterOrDigit(char)&#10;     * @see     Character#isUnicodeIdentifierStart(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 539
    label "isUnicodeIdentifierPart(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 540
    label "public static boolean isUnicodeIdentifierPart(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isUnicodeIdentifierPart(int codePoint) {&#10;        return CharacterData.of(codePoint).isUnicodeIdentifierPart(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 541
    label "public static boolean isIdentifierIgnorable(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character should be regarded as&#10;     * an ignorable character in a Java identifier or a Unicode identifier.&#10;     * <p>&#10;     * The following Unicode characters are ignorable in a Java identifier&#10;     * or a Unicode identifier:&#10;     * <ul>&#10;     * <li>ISO control characters that are not whitespace&#10;     * <ul>&#10;     * <li>{@code '\u005Cu0000'} through {@code '\u005Cu0008'}&#10;     * <li>{@code '\u005Cu000E'} through {@code '\u005Cu001B'}&#10;     * <li>{@code '\u005Cu007F'} through {@code '\u005Cu009F'}&#10;     * </ul>&#10;     *&#10;     * <li>all characters that have the {@code FORMAT} general&#10;     * category value&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isIdentifierIgnorable(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  {@code true} if the character is an ignorable control&#10;     *          character that may be part of a Java or Unicode identifier;&#10;     *           {@code false} otherwise.&#10;     * @see     Character#isJavaIdentifierPart(char)&#10;     * @see     Character#isUnicodeIdentifierPart(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 542
    label "isIdentifierIgnorable(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 543
    label "public static boolean isIdentifierIgnorable(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isIdentifierIgnorable(int codePoint) {&#10;        return CharacterData.of(codePoint).isIdentifierIgnorable(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 544
    label "public static char toLowerCase(char ch)"
    type "method"
    comment "&#10;     * Converts the character argument to lowercase using case&#10;     * mapping information from the UnicodeData file.&#10;     * <p>&#10;     * Note that&#10;     * {@code Character.isLowerCase(Character.toLowerCase(ch))}&#10;     * does not always return {@code true} for some ranges of&#10;     * characters, particularly those that are symbols or ideographs.&#10;     *&#10;     * <p>In general, {@link String#toLowerCase()} should be used to map&#10;     * characters to lowercase. {@code String} case mapping methods&#10;     * have several benefits over {@code Character} case mapping methods.&#10;     * {@code String} case mapping methods can perform locale-sensitive&#10;     * mappings, context-sensitive mappings, and 1:M character mappings, whereas&#10;     * the {@code Character} case mapping methods cannot.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #toLowerCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be converted.&#10;     * @return  the lowercase equivalent of the character, if any;&#10;     *          otherwise, the character itself.&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     String#toLowerCase()&#10;     "
  ]
  node [
    id 545
    label "toLowerCase()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 546
    label "toLowerCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 547
    label "public static int toLowerCase(int codePoint)"
    type "method"
    comment "&#10;    public static int toLowerCase(int codePoint) {&#10;        return CharacterData.of(codePoint).toLowerCase(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 548
    label "public static char toUpperCase(char ch)"
    type "method"
    comment "&#10;     * Converts the character argument to uppercase using case mapping&#10;     * information from the UnicodeData file.&#10;     * <p>&#10;     * Note that&#10;     * {@code Character.isUpperCase(Character.toUpperCase(ch))}&#10;     * does not always return {@code true} for some ranges of&#10;     * characters, particularly those that are symbols or ideographs.&#10;     *&#10;     * <p>In general, {@link String#toUpperCase()} should be used to map&#10;     * characters to uppercase. {@code String} case mapping methods&#10;     * have several benefits over {@code Character} case mapping methods.&#10;     * {@code String} case mapping methods can perform locale-sensitive&#10;     * mappings, context-sensitive mappings, and 1:M character mappings, whereas&#10;     * the {@code Character} case mapping methods cannot.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #toUpperCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be converted.&#10;     * @return  the uppercase equivalent of the character, if any;&#10;     *          otherwise, the character itself.&#10;     * @see     Character#isUpperCase(char)&#10;     * @see     String#toUpperCase()&#10;     "
  ]
  node [
    id 549
    label "toUpperCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 550
    label "toUpperCase()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 551
    label "public static int toUpperCase(int codePoint)"
    type "method"
    comment "&#10;    public static int toUpperCase(int codePoint) {&#10;        return CharacterData.of(codePoint).toUpperCase(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 552
    label "public static char toTitleCase(char ch)"
    type "method"
    comment "&#10;     * Converts the character argument to titlecase using case mapping&#10;     * information from the UnicodeData file. If a character has no&#10;     * explicit titlecase mapping and is not itself a titlecase char&#10;     * according to UnicodeData, then the uppercase mapping is&#10;     * returned as an equivalent titlecase mapping. If the&#10;     * {@code char} argument is already a titlecase&#10;     * {@code char}, the same {@code char} value will be&#10;     * returned.&#10;     * <p>&#10;     * Note that&#10;     * {@code Character.isTitleCase(Character.toTitleCase(ch))}&#10;     * does not always return {@code true} for some ranges of&#10;     * characters.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #toTitleCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be converted.&#10;     * @return  the titlecase equivalent of the character, if any;&#10;     *          otherwise, the character itself.&#10;     * @see     Character#isTitleCase(char)&#10;     * @see     Character#toLowerCase(char)&#10;     * @see     Character#toUpperCase(char)&#10;     * @since   1.0.2&#10;     "
  ]
  node [
    id 553
    label "toTitleCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 554
    label "public static int toTitleCase(int codePoint)"
    type "method"
    comment "&#10;    public static int toTitleCase(int codePoint) {&#10;        return CharacterData.of(codePoint).toTitleCase(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 555
    label "public static int digit(char ch, int radix)"
    type "method"
    comment "&#10;     * Returns the numeric value of the character {@code ch} in the&#10;     * specified radix.&#10;     * <p>&#10;     * If the radix is not in the range {@code MIN_RADIX} &#38;le;&#10;     * {@code radix} &#38;le; {@code MAX_RADIX} or if the&#10;     * value of {@code ch} is not a valid digit in the specified&#10;     * radix, {@code -1} is returned. A character is a valid digit&#10;     * if at least one of the following is true:&#10;     * <ul>&#10;     * <li>The method {@code isDigit} is {@code true} of the character&#10;     *     and the Unicode decimal digit value of the character (or its&#10;     *     single-character decomposition) is less than the specified radix.&#10;     *     In this case the decimal digit value is returned.&#10;     * <li>The character is one of the uppercase Latin letters&#10;     *     {@code 'A'} through {@code 'Z'} and its code is less than&#10;     *     {@code radix + 'A' - 10}.&#10;     *     In this case, {@code ch - 'A' + 10}&#10;     *     is returned.&#10;     * <li>The character is one of the lowercase Latin letters&#10;     *     {@code 'a'} through {@code 'z'} and its code is less than&#10;     *     {@code radix + 'a' - 10}.&#10;     *     In this case, {@code ch - 'a' + 10}&#10;     *     is returned.&#10;     * <li>The character is one of the fullwidth uppercase Latin letters A&#10;     *     ({@code '\u005CuFF21'}) through Z ({@code '\u005CuFF3A'})&#10;     *     and its code is less than&#10;     *     {@code radix + '\u005CuFF21' - 10}.&#10;     *     In this case, {@code ch - '\u005CuFF21' + 10}&#10;     *     is returned.&#10;     * <li>The character is one of the fullwidth lowercase Latin letters a&#10;     *     ({@code '\u005CuFF41'}) through z ({@code '\u005CuFF5A'})&#10;     *     and its code is less than&#10;     *     {@code radix + '\u005CuFF41' - 10}.&#10;     *     In this case, {@code ch - '\u005CuFF41' + 10}&#10;     *     is returned.&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #digit(int, int)} method.&#10;     *&#10;     * @param   ch      the character to be converted.&#10;     * @param   radix   the radix.&#10;     * @return  the numeric value represented by the character in the&#10;     *          specified radix.&#10;     * @see     Character#forDigit(int, int)&#10;     * @see     Character#isDigit(char)&#10;     "
  ]
  node [
    id 556
    label "digit(int"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 557
    label "public static int digit(int codePoint, int radix)"
    type "method"
    comment "&#10;    public static int digit(int codePoint, int radix) {&#10;        return CharacterData.of(codePoint).digit(codePoint, radix);&#10;    }&#10;    "
  ]
  node [
    id 558
    label "public static int getNumericValue(char ch)"
    type "method"
    comment "&#10;     * Returns the {@code int} value that the specified Unicode&#10;     * character represents. For example, the character&#10;     * {@code '\u005Cu216C'} (the roman numeral fifty) will return&#10;     * an int with a value of 50.&#10;     * <p>&#10;     * The letters A-Z in their uppercase ({@code '\u005Cu0041'} through&#10;     * {@code '\u005Cu005A'}), lowercase&#10;     * ({@code '\u005Cu0061'} through {@code '\u005Cu007A'}), and&#10;     * full width variant ({@code '\u005CuFF21'} through&#10;     * {@code '\u005CuFF3A'} and {@code '\u005CuFF41'} through&#10;     * {@code '\u005CuFF5A'}) forms have numeric values from 10&#10;     * through 35. This is independent of the Unicode specification,&#10;     * which does not assign numeric values to these {@code char}&#10;     * values.&#10;     * <p>&#10;     * If the character does not have a numeric value, then -1 is returned.&#10;     * If the character has a numeric value that cannot be represented as a&#10;     * nonnegative integer (for example, a fractional value), then -2&#10;     * is returned.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #getNumericValue(int)} method.&#10;     *&#10;     * @param   ch      the character to be converted.&#10;     * @return  the numeric value of the character, as a nonnegative {@code int}&#10;     *          value; -2 if the character has a numeric value but the value&#10;     *          can not be represented as a nonnegative {@code int} value;&#10;     *          -1 if the character has no numeric value.&#10;     * @see     Character#forDigit(int, int)&#10;     * @see     Character#isDigit(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 559
    label "getNumericValue(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 560
    label "public static int getNumericValue(int codePoint)"
    type "method"
    comment "&#10;    public static int getNumericValue(int codePoint) {&#10;        return CharacterData.of(codePoint).getNumericValue(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 561
    label "public static boolean isSpaceChar(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a Unicode space character.&#10;     * A character is considered to be a space character if and only if&#10;     * it is specified to be a space character by the Unicode Standard. This&#10;     * method returns true if the character's general category type is any of&#10;     * the following:&#10;     * <ul>&#10;     * <li> {@code SPACE_SEPARATOR}&#10;     * <li> {@code LINE_SEPARATOR}&#10;     * <li> {@code PARAGRAPH_SEPARATOR}&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isSpaceChar(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  {@code true} if the character is a space character;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isWhitespace(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 562
    label "isSpaceChar(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 563
    label "public static boolean isSpaceChar(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isSpaceChar(int codePoint) {&#10;        return ((((1 << Character.SPACE_SEPARATOR) |&#10;                  (1 << Character.LINE_SEPARATOR) |&#10;                  (1 << Character.PARAGRAPH_SEPARATOR)) >> getType(codePoint)) &#38; 1)&#10;            != 0;&#10;    }&#10;    "
  ]
  node [
    id 564
    label "public static boolean isWhitespace(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is white space according to Java.&#10;     * A character is a Java whitespace character if and only if it satisfies&#10;     * one of the following criteria:&#10;     * <ul>&#10;     * <li> It is a Unicode space character ({@code SPACE_SEPARATOR},&#10;     *      {@code LINE_SEPARATOR}, or {@code PARAGRAPH_SEPARATOR})&#10;     *      but is not also a non-breaking space ({@code '\u005Cu00A0'},&#10;     *      {@code '\u005Cu2007'}, {@code '\u005Cu202F'}).&#10;     * <li> It is {@code '\u005Ct'}, U+0009 HORIZONTAL TABULATION.&#10;     * <li> It is {@code '\u005Cn'}, U+000A LINE FEED.&#10;     * <li> It is {@code '\u005Cu000B'}, U+000B VERTICAL TABULATION.&#10;     * <li> It is {@code '\u005Cf'}, U+000C FORM FEED.&#10;     * <li> It is {@code '\u005Cr'}, U+000D CARRIAGE RETURN.&#10;     * <li> It is {@code '\u005Cu001C'}, U+001C FILE SEPARATOR.&#10;     * <li> It is {@code '\u005Cu001D'}, U+001D GROUP SEPARATOR.&#10;     * <li> It is {@code '\u005Cu001E'}, U+001E RECORD SEPARATOR.&#10;     * <li> It is {@code '\u005Cu001F'}, U+001F UNIT SEPARATOR.&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isWhitespace(int)} method.&#10;     *&#10;     * @param   ch the character to be tested.&#10;     * @return  {@code true} if the character is a Java whitespace&#10;     *          character; {@code false} otherwise.&#10;     * @see     Character#isSpaceChar(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 565
    label "isWhitespace(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 566
    label "public static boolean isWhitespace(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isWhitespace(int codePoint) {&#10;        return CharacterData.of(codePoint).isWhitespace(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 567
    label "public static boolean isISOControl(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is an ISO control&#10;     * character.  A character is considered to be an ISO control&#10;     * character if its code is in the range {@code '\u005Cu0000'}&#10;     * through {@code '\u005Cu001F'} or in the range&#10;     * {@code '\u005Cu007F'} through {@code '\u005Cu009F'}.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isISOControl(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  {@code true} if the character is an ISO control character;&#10;     *          {@code false} otherwise.&#10;     *&#10;     * @see     Character#isSpaceChar(char)&#10;     * @see     Character#isWhitespace(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 568
    label "isISOControl(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 569
    label "public static boolean isISOControl(int codePoint)"
    type "method"
    comment "&#10;     * Determines if the referenced character (Unicode code point) is an ISO control&#10;     * character.  A character is considered to be an ISO control&#10;     * character if its code is in the range {@code '\u005Cu0000'}&#10;     * through {@code '\u005Cu001F'} or in the range&#10;     * {@code '\u005Cu007F'} through {@code '\u005Cu009F'}.&#10;     *&#10;     * @param   codePoint the character (Unicode code point) to be tested.&#10;     * @return  {@code true} if the character is an ISO control character;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isSpaceChar(int)&#10;     * @see     Character#isWhitespace(int)&#10;     * @since   1.5&#10;     "
  ]
  node [
    id 570
    label "public static int getType(char ch)"
    type "method"
    comment "&#10;     * Returns a value indicating a character's general category.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #getType(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  a value of type {@code int} representing the&#10;     *          character's general category.&#10;     * @see     Character#COMBINING_SPACING_MARK&#10;     * @see     Character#CONNECTOR_PUNCTUATION&#10;     * @see     Character#CONTROL&#10;     * @see     Character#CURRENCY_SYMBOL&#10;     * @see     Character#DASH_PUNCTUATION&#10;     * @see     Character#DECIMAL_DIGIT_NUMBER&#10;     * @see     Character#ENCLOSING_MARK&#10;     * @see     Character#END_PUNCTUATION&#10;     * @see     Character#FINAL_QUOTE_PUNCTUATION&#10;     * @see     Character#FORMAT&#10;     * @see     Character#INITIAL_QUOTE_PUNCTUATION&#10;     * @see     Character#LETTER_NUMBER&#10;     * @see     Character#LINE_SEPARATOR&#10;     * @see     Character#LOWERCASE_LETTER&#10;     * @see     Character#MATH_SYMBOL&#10;     * @see     Character#MODIFIER_LETTER&#10;     * @see     Character#MODIFIER_SYMBOL&#10;     * @see     Character#NON_SPACING_MARK&#10;     * @see     Character#OTHER_LETTER&#10;     * @see     Character#OTHER_NUMBER&#10;     * @see     Character#OTHER_PUNCTUATION&#10;     * @see     Character#OTHER_SYMBOL&#10;     * @see     Character#PARAGRAPH_SEPARATOR&#10;     * @see     Character#PRIVATE_USE&#10;     * @see     Character#SPACE_SEPARATOR&#10;     * @see     Character#START_PUNCTUATION&#10;     * @see     Character#SURROGATE&#10;     * @see     Character#TITLECASE_LETTER&#10;     * @see     Character#UNASSIGNED&#10;     * @see     Character#UPPERCASE_LETTER&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 571
    label "getType(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 572
    label "public static int getType(int codePoint)"
    type "method"
    comment "&#10;    public static int getType(int codePoint) {&#10;        return CharacterData.of(codePoint).getType(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 573
    label "public static char forDigit(int digit, int radix)"
    type "method"
    comment "&#10;     * Determines the character representation for a specific digit in&#10;     * the specified radix. If the value of {@code radix} is not a&#10;     * valid radix, or the value of {@code digit} is not a valid&#10;     * digit in the specified radix, the null character&#10;     * ({@code '\u005Cu0000'}) is returned.&#10;     * <p>&#10;     * The {@code radix} argument is valid if it is greater than or&#10;     * equal to {@code MIN_RADIX} and less than or equal to&#10;     * {@code MAX_RADIX}. The {@code digit} argument is valid if&#10;     * {@code 0 <= digit < radix}.&#10;     * <p>&#10;     * If the digit is less than 10, then&#10;     * {@code '0' + digit} is returned. Otherwise, the value&#10;     * {@code 'a' + digit - 10} is returned.&#10;     *&#10;     * @param   digit   the number to convert to a character.&#10;     * @param   radix   the radix.&#10;     * @return  the {@code char} representation of the specified digit&#10;     *          in the specified radix.&#10;     * @see     Character#MIN_RADIX&#10;     * @see     Character#MAX_RADIX&#10;     * @see     Character#digit(char, int)&#10;     "
  ]
  node [
    id 574
    label "public static byte getDirectionality(char ch)"
    type "method"
    comment "&#10;     * Returns the Unicode directionality property for the given&#10;     * character.  Character directionality is used to calculate the&#10;     * visual ordering of text. The directionality value of undefined&#10;     * {@code char} values is {@code DIRECTIONALITY_UNDEFINED}.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #getDirectionality(int)} method.&#10;     *&#10;     * @param  ch {@code char} for which the directionality property&#10;     *            is requested.&#10;     * @return the directionality property of the {@code char} value.&#10;     *&#10;     * @see Character#DIRECTIONALITY_UNDEFINED&#10;     * @see Character#DIRECTIONALITY_LEFT_TO_RIGHT&#10;     * @see Character#DIRECTIONALITY_RIGHT_TO_LEFT&#10;     * @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC&#10;     * @see Character#DIRECTIONALITY_EUROPEAN_NUMBER&#10;     * @see Character#DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR&#10;     * @see Character#DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR&#10;     * @see Character#DIRECTIONALITY_ARABIC_NUMBER&#10;     * @see Character#DIRECTIONALITY_COMMON_NUMBER_SEPARATOR&#10;     * @see Character#DIRECTIONALITY_NONSPACING_MARK&#10;     * @see Character#DIRECTIONALITY_BOUNDARY_NEUTRAL&#10;     * @see Character#DIRECTIONALITY_PARAGRAPH_SEPARATOR&#10;     * @see Character#DIRECTIONALITY_SEGMENT_SEPARATOR&#10;     * @see Character#DIRECTIONALITY_WHITESPACE&#10;     * @see Character#DIRECTIONALITY_OTHER_NEUTRALS&#10;     * @see Character#DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING&#10;     * @see Character#DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE&#10;     * @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING&#10;     * @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE&#10;     * @see Character#DIRECTIONALITY_POP_DIRECTIONAL_FORMAT&#10;     * @see Character#DIRECTIONALITY_LEFT_TO_RIGHT_ISOLATE&#10;     * @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_ISOLATE&#10;     * @see Character#DIRECTIONALITY_FIRST_STRONG_ISOLATE&#10;     * @see Character#DIRECTIONALITY_POP_DIRECTIONAL_ISOLATE&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 575
    label "getDirectionality(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 576
    label "public static byte getDirectionality(int codePoint)"
    type "method"
    comment "&#10;    public static byte getDirectionality(int codePoint) {&#10;        return CharacterData.of(codePoint).getDirectionality(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 577
    label "public static boolean isMirrored(char ch)"
    type "method"
    comment "&#10;     * Determines whether the character is mirrored according to the&#10;     * Unicode specification.  Mirrored characters should have their&#10;     * glyphs horizontally mirrored when displayed in text that is&#10;     * right-to-left.  For example, {@code '\u005Cu0028'} LEFT&#10;     * PARENTHESIS is semantically defined to be an <i>opening&#10;     * parenthesis</i>.  This will appear as a &#34;(&#34; in text that is&#10;     * left-to-right but as a &#34;)&#34; in text that is right-to-left.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isMirrored(int)} method.&#10;     *&#10;     * @param  ch {@code char} for which the mirrored property is requested&#10;     * @return {@code true} if the char is mirrored, {@code false}&#10;     *         if the {@code char} is not mirrored or is not defined.&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 578
    label "isMirrored(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 579
    label "public static boolean isMirrored(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isMirrored(int codePoint) {&#10;        return CharacterData.of(codePoint).isMirrored(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 580
    label "public int compareTo(Character anotherCharacter)"
    type "method"
    comment "&#10;     * Compares two {@code Character} objects numerically.&#10;     *&#10;     * @param   anotherCharacter   the {@code Character} to be compared.&#10;     * @return  the value {@code 0} if the argument {@code Character}&#10;     *          is equal to this {@code Character}; a value less than&#10;     *          {@code 0} if this {@code Character} is numerically less&#10;     *          than the {@code Character} argument; and a value greater than&#10;     *          {@code 0} if this {@code Character} is numerically greater&#10;     *          than the {@code Character} argument (unsigned comparison).&#10;     *          Note that this is strictly a numerical comparison; it is not&#10;     *          locale-dependent.&#10;     * @since   1.2&#10;     "
  ]
  node [
    id 581
    label "public static int compare(char x, char y)"
    type "method"
    comment "&#10;     * Compares two {@code char} values numerically.&#10;     * The value returned is identical to what would be returned by:&#10;     * <pre>&#10;     *    Character.valueOf(x).compareTo(Character.valueOf(y))&#10;     * </pre>&#10;     *&#10;     * @param  x the first {@code char} to compare&#10;     * @param  y the second {@code char} to compare&#10;     * @return the value {@code 0} if {@code x == y};&#10;     *         a value less than {@code 0} if {@code x < y}; and&#10;     *         a value greater than {@code 0} if {@code x > y}&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 582
    label "public static char reverseBytes(char ch)"
    type "method"
    comment "&#10;     * Returns the value obtained by reversing the order of the bytes in the&#10;     * specified {@code char} value.&#10;     *&#10;     * @param ch The {@code char} of which to reverse the byte order.&#10;     * @return the value obtained by reversing (or, equivalently, swapping)&#10;     *     the bytes in the specified {@code char} value.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 583
    label "public static String getName(int codePoint)"
    type "method"
    comment "&#10;     * Returns the Unicode name of the specified character&#10;     * {@code codePoint}, or null if the code point is&#10;     * {@link #UNASSIGNED unassigned}.&#10;     * <p>&#10;     * Note: if the specified character is not assigned a name by&#10;     * the <i>UnicodeData</i> file (part of the Unicode Character&#10;     * Database maintained by the Unicode Consortium), the returned&#10;     * name is the same as the result of expression:&#10;     *&#10;     * <blockquote>{@code&#10;     *     Character.UnicodeBlock.of(codePoint).toString().replace('_', ' ')&#10;     *     + &#34; &#34;&#10;     *     + Integer.toHexString(codePoint).toUpperCase(Locale.ROOT);&#10;     *&#10;     * }</blockquote>&#10;     *&#10;     * @param  codePoint the character (Unicode code point)&#10;     *&#10;     * @return the Unicode name of the specified character, or null if&#10;     *         the code point is unassigned.&#10;     *&#10;     * @throws IllegalArgumentException if the specified&#10;     *            {@code codePoint} is not a valid Unicode&#10;     *            code point.&#10;     *&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 584
    label "UNASSIGNED"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 585
    label "public static int codePointOf(String name)"
    type "method"
    comment "&#10;     * Returns the code point value of the Unicode character specified by&#10;     * the given Unicode character name.&#10;     * <p>&#10;     * Note: if a character is not assigned a name by the <i>UnicodeData</i>&#10;     * file (part of the Unicode Character Database maintained by the Unicode&#10;     * Consortium), its name is defined as the result of expression:&#10;     *&#10;     * <blockquote>{@code&#10;     *     Character.UnicodeBlock.of(codePoint).toString().replace('_', ' ')&#10;     *     + &#34; &#34;&#10;     *     + Integer.toHexString(codePoint).toUpperCase(Locale.ROOT);&#10;     *&#10;     * }</blockquote>&#10;     * <p>&#10;     * The {@code name} matching is case insensitive, with any leading and&#10;     * trailing whitespace character removed.&#10;     *&#10;     * @param  name the Unicode character name&#10;     *&#10;     * @return the code point value of the character specified by its name.&#10;     *&#10;     * @throws IllegalArgumentException if the specified {@code name}&#10;     *         is not a valid Unicode character name.&#10;     * @throws NullPointerException if {@code name} is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 586
    label "private static native String getNameImpl(int codePoint)"
    type "method"
    comment " Implement getNameImpl() and codePointOfImpl() natively."
  ]
  node [
    id 587
    label "public String toLowerCase()"
    type "method"
    comment "&#10;     * Converts all of the characters in this {@code String} to lower&#10;     * case using the rules of the default locale. This is equivalent to calling&#10;     * {@code toLowerCase(Locale.getDefault())}.&#10;     * <p>&#10;     * <b>Note:</b> This method is locale sensitive, and may produce unexpected&#10;     * results if used for strings that are intended to be interpreted locale&#10;     * independently.&#10;     * Examples are programming language identifiers, protocol keys, and HTML&#10;     * tags.&#10;     * For instance, {@code &#34;TITLE&#34;.toLowerCase()} in a Turkish locale&#10;     * returns {@code &#34;t\u005Cu0131tle&#34;}, where '\u005Cu0131' is the&#10;     * LATIN SMALL LETTER DOTLESS I character.&#10;     * To obtain correct results for locale insensitive strings, use&#10;     * {@code toLowerCase(Locale.ROOT)}.&#10;     *&#10;     * @return  the {@code String}, converted to lowercase.&#10;     * @see     java.lang.String#toLowerCase(Locale)&#10;     "
  ]
  node [
    id 588
    label "public String toUpperCase(Locale locale)"
    type "method"
    comment "&#10;     * Converts all of the characters in this {@code String} to upper&#10;     * case using the rules of the given {@code Locale}. Case mapping is based&#10;     * on the Unicode Standard version specified by the {@link java.lang.Character Character}&#10;     * class. Since case mappings are not always 1:1 char mappings, the resulting&#10;     * {@code String} may be a different length than the original {@code String}.&#10;     * <p>&#10;     * Examples of locale-sensitive and 1:M case mappings are in the following table.&#10;     *&#10;     * <table class=&#34;plain&#34;>&#10;     * <caption style=&#34;display:none&#34;>Examples of locale-sensitive and 1:M case mappings. Shows Language code of locale, lower case, upper case, and description.</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *   <th scope=&#34;col&#34;>Language Code of Locale</th>&#10;     *   <th scope=&#34;col&#34;>Lower Case</th>&#10;     *   <th scope=&#34;col&#34;>Upper Case</th>&#10;     *   <th scope=&#34;col&#34;>Description</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr>&#10;     *   <td>tr (Turkish)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#38;#92;u0069</th>&#10;     *   <td>&#38;#92;u0130</td>&#10;     *   <td>small letter i -&#38;gt; capital letter I with dot above</td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>tr (Turkish)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#38;#92;u0131</th>&#10;     *   <td>&#38;#92;u0049</td>&#10;     *   <td>small letter dotless i -&#38;gt; capital letter I</td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>(all)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#38;#92;u00df</th>&#10;     *   <td>&#38;#92;u0053 &#38;#92;u0053</td>&#10;     *   <td>small letter sharp s -&#38;gt; two letters: SS</td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>(all)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>Fahrvergn&#38;uuml;gen</th>&#10;     *   <td>FAHRVERGN&#38;Uuml;GEN</td>&#10;     *   <td></td>&#10;     * </tr>&#10;     * </tbody>&#10;     * </table>&#10;     * @param locale use the case transformation rules for this locale&#10;     * @return the {@code String}, converted to uppercase.&#10;     * @see     java.lang.String#toUpperCase()&#10;     * @see     java.lang.String#toLowerCase()&#10;     * @see     java.lang.String#toLowerCase(Locale)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 589
    label "public String toUpperCase()"
    type "method"
    comment "&#10;     * Converts all of the characters in this {@code String} to upper&#10;     * case using the rules of the default locale. This method is equivalent to&#10;     * {@code toUpperCase(Locale.getDefault())}.&#10;     * <p>&#10;     * <b>Note:</b> This method is locale sensitive, and may produce unexpected&#10;     * results if used for strings that are intended to be interpreted locale&#10;     * independently.&#10;     * Examples are programming language identifiers, protocol keys, and HTML&#10;     * tags.&#10;     * For instance, {@code &#34;title&#34;.toUpperCase()} in a Turkish locale&#10;     * returns {@code &#34;T\u005Cu0130TLE&#34;}, where '\u005Cu0130' is the&#10;     * LATIN CAPITAL LETTER I WITH DOT ABOVE character.&#10;     * To obtain correct results for locale insensitive strings, use&#10;     * {@code toUpperCase(Locale.ROOT)}.&#10;     *&#10;     * @return  the {@code String}, converted to uppercase.&#10;     * @see     java.lang.String#toUpperCase(Locale)&#10;     "
  ]
  node [
    id 590
    label "public String trim()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with all leading&#10;     * and trailing space removed, where space is defined&#10;     * as any character whose codepoint is less than or equal to&#10;     * {@code 'U+0020'} (the space character).&#10;     * <p>&#10;     * If this {@code String} object represents an empty character&#10;     * sequence, or the first and last characters of character sequence&#10;     * represented by this {@code String} object both have codes&#10;     * that are not space (as defined above), then a&#10;     * reference to this {@code String} object is returned.&#10;     * <p>&#10;     * Otherwise, if all characters in this string are space (as&#10;     * defined above), then a  {@code String} object representing an&#10;     * empty string is returned.&#10;     * <p>&#10;     * Otherwise, let <i>k</i> be the index of the first character in the&#10;     * string whose code is not a space (as defined above) and let&#10;     * <i>m</i> be the index of the last character in the string whose code&#10;     * is not a space (as defined above). A {@code String}&#10;     * object is returned, representing the substring of this string that&#10;     * begins with the character at index <i>k</i> and ends with the&#10;     * character at index <i>m</i>-that is, the result of&#10;     * {@code this.substring(k, m + 1)}.&#10;     * <p>&#10;     * This method may be used to trim space (as defined above) from&#10;     * the beginning and end of a string.&#10;     *&#10;     * @return  a string whose value is this string, with all leading&#10;     *          and trailing space removed, or this string if it&#10;     *          has no leading or trailing space.&#10;     "
  ]
  node [
    id 591
    label "public String strip()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with all leading&#10;     * and trailing {@link Character#isWhitespace(int) white space}&#10;     * removed.&#10;     * <p>&#10;     * If this {@code String} object represents an empty string,&#10;     * or if all code points in this string are&#10;     * {@link Character#isWhitespace(int) white space}, then an empty string&#10;     * is returned.&#10;     * <p>&#10;     * Otherwise, returns a substring of this string beginning with the first&#10;     * code point that is not a {@link Character#isWhitespace(int) white space}&#10;     * up to and including the last code point that is not a&#10;     * {@link Character#isWhitespace(int) white space}.&#10;     * <p>&#10;     * This method may be used to strip&#10;     * {@link Character#isWhitespace(int) white space} from&#10;     * the beginning and end of a string.&#10;     *&#10;     * @return  a string whose value is this string, with all leading&#10;     *          and trailing white space removed&#10;     *&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 592
    label "public String stripLeading()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with all leading&#10;     * {@link Character#isWhitespace(int) white space} removed.&#10;     * <p>&#10;     * If this {@code String} object represents an empty string,&#10;     * or if all code points in this string are&#10;     * {@link Character#isWhitespace(int) white space}, then an empty string&#10;     * is returned.&#10;     * <p>&#10;     * Otherwise, returns a substring of this string beginning with the first&#10;     * code point that is not a {@link Character#isWhitespace(int) white space}&#10;     * up to to and including the last code point of this string.&#10;     * <p>&#10;     * This method may be used to trim&#10;     * {@link Character#isWhitespace(int) white space} from&#10;     * the beginning of a string.&#10;     *&#10;     * @return  a string whose value is this string, with all leading white&#10;     *          space removed&#10;     *&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 593
    label "public String stripTrailing()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with all trailing&#10;     * {@link Character#isWhitespace(int) white space} removed.&#10;     * <p>&#10;     * If this {@code String} object represents an empty string,&#10;     * or if all characters in this string are&#10;     * {@link Character#isWhitespace(int) white space}, then an empty string&#10;     * is returned.&#10;     * <p>&#10;     * Otherwise, returns a substring of this string beginning with the first&#10;     * code point of this string up to and including the last code point&#10;     * that is not a {@link Character#isWhitespace(int) white space}.&#10;     * <p>&#10;     * This method may be used to trim&#10;     * {@link Character#isWhitespace(int) white space} from&#10;     * the end of a string.&#10;     *&#10;     * @return  a string whose value is this string, with all trailing white&#10;     *          space removed&#10;     *&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 594
    label "public boolean isBlank()"
    type "method"
    comment "&#10;     * Returns {@code true} if the string is empty or contains only&#10;     * {@link Character#isWhitespace(int) white space} codepoints,&#10;     * otherwise {@code false}.&#10;     *&#10;     * @return {@code true} if the string is empty or contains only&#10;     *         {@link Character#isWhitespace(int) white space} codepoints,&#10;     *         otherwise {@code false}&#10;     *&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 595
    label "public Stream<String> lines()"
    type "method"
    comment "&#10;     * Returns a stream of lines extracted from this string,&#10;     * separated by line terminators.&#10;     * <p>&#10;     * A <i>line terminator</i> is one of the following:&#10;     * a line feed character {@code &#34;\n&#34;} (U+000A),&#10;     * a carriage return character {@code &#34;\r&#34;} (U+000D),&#10;     * or a carriage return followed immediately by a line feed&#10;     * {@code &#34;\r\n&#34;} (U+000D U+000A).&#10;     * <p>&#10;     * A <i>line</i> is either a sequence of zero or more characters&#10;     * followed by a line terminator, or it is a sequence of one or&#10;     * more characters followed by the end of the string. A&#10;     * line does not include the line terminator.&#10;     * <p>&#10;     * The stream returned by this method contains the lines from&#10;     * this string in the order in which they occur.&#10;     *&#10;     * @apiNote This definition of <i>line</i> implies that an empty&#10;     *          string has zero lines and that there is no empty line&#10;     *          following a line terminator at the end of a string.&#10;     *&#10;     * @implNote This method provides better performance than&#10;     *           split(&#34;\R&#34;) by supplying elements lazily and&#10;     *           by faster search of new line terminators.&#10;     *&#10;     * @return  the stream of lines extracted from this string&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 596
    label "public String indent(int n)"
    type "method"
    comment "&#10;     * Adjusts the indentation of each line of this string based on the value of&#10;     * {@code n}, and normalizes line termination characters.&#10;     * <p>&#10;     * This string is conceptually separated into lines using&#10;     * {@link String#lines()}. Each line is then adjusted as described below&#10;     * and then suffixed with a line feed {@code &#34;\n&#34;} (U+000A). The resulting&#10;     * lines are then concatenated and returned.&#10;     * <p>&#10;     * If {@code n > 0} then {@code n} spaces (U+0020) are inserted at the&#10;     * beginning of each line.&#10;     * <p>&#10;     * If {@code n < 0} then up to {@code n}&#10;     * {@linkplain Character#isWhitespace(int) white space characters} are removed&#10;     * from the beginning of each line. If a given line does not contain&#10;     * sufficient white space then all leading&#10;     * {@linkplain Character#isWhitespace(int) white space characters} are removed.&#10;     * Each white space character is treated as a single character. In&#10;     * particular, the tab character {@code &#34;\t&#34;} (U+0009) is considered a&#10;     * single character; it is not expanded.&#10;     * <p>&#10;     * If {@code n == 0} then the line remains unchanged. However, line&#10;     * terminators are still normalized.&#10;     *&#10;     * @param n  number of leading&#10;     *           {@linkplain Character#isWhitespace(int) white space characters}&#10;     *           to add or remove&#10;     *&#10;     * @return string with indentation adjusted and line endings normalized&#10;     *&#10;     * @see String#lines()&#10;     * @see String#isBlank()&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 12&#10;     "
  ]
  node [
    id 597
    label "lines()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 598
    label "public String stripIndent()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with incidental&#10;     * {@linkplain Character#isWhitespace(int) white space} removed from&#10;     * the beginning and end of every line.&#10;     * <p>&#10;     * Incidental {@linkplain Character#isWhitespace(int) white space}&#10;     * is often present in a text block to align the content with the opening&#10;     * delimiter. For example, in the following code, dots represent incidental&#10;     * {@linkplain Character#isWhitespace(int) white space}:&#10;     * <blockquote><pre>&#10;     * String html = &#34;&#34;&#34;&#10;     * ..............&#38;lt;html&#38;gt;&#10;     * ..............    &#38;lt;body&#38;gt;&#10;     * ..............        &#38;lt;p&#38;gt;Hello, world&#38;lt;/p&#38;gt;&#10;     * ..............    &#38;lt;/body&#38;gt;&#10;     * ..............&#38;lt;/html&#38;gt;&#10;     * ..............&#34;&#34;&#34;;&#10;     * </pre></blockquote>&#10;     * This method treats the incidental&#10;     * {@linkplain Character#isWhitespace(int) white space} as indentation to be&#10;     * stripped, producing a string that preserves the relative indentation of&#10;     * the content. Using | to visualize the start of each line of the string:&#10;     * <blockquote><pre>&#10;     * |&#38;lt;html&#38;gt;&#10;     * |    &#38;lt;body&#38;gt;&#10;     * |        &#38;lt;p&#38;gt;Hello, world&#38;lt;/p&#38;gt;&#10;     * |    &#38;lt;/body&#38;gt;&#10;     * |&#38;lt;/html&#38;gt;&#10;     * </pre></blockquote>&#10;     * First, the individual lines of this string are extracted. A <i>line</i>&#10;     * is a sequence of zero or more characters followed by either a line&#10;     * terminator or the end of the string.&#10;     * If the string has at least one line terminator, the last line consists&#10;     * of the characters between the last terminator and the end of the string.&#10;     * Otherwise, if the string has no terminators, the last line is the start&#10;     * of the string to the end of the string, in other words, the entire&#10;     * string.&#10;     * A line does not include the line terminator.&#10;     * <p>&#10;     * Then, the <i>minimum indentation</i> (min) is determined as follows:&#10;     * <ul>&#10;     *   <li><p>For each non-blank line (as defined by {@link String#isBlank()}),&#10;     *   the leading {@linkplain Character#isWhitespace(int) white space}&#10;     *   characters are counted.</p>&#10;     *   </li>&#10;     *   <li><p>The leading {@linkplain Character#isWhitespace(int) white space}&#10;     *   characters on the last line are also counted even if&#10;     *   {@linkplain String#isBlank() blank}.</p>&#10;     *   </li>&#10;     * </ul>&#10;     * <p>The <i>min</i> value is the smallest of these counts.&#10;     * <p>&#10;     * For each {@linkplain String#isBlank() non-blank} line, <i>min</i> leading&#10;     * {@linkplain Character#isWhitespace(int) white space} characters are&#10;     * removed, and any trailing {@linkplain Character#isWhitespace(int) white&#10;     * space} characters are removed. {@linkplain String#isBlank() Blank} lines&#10;     * are replaced with the empty string.&#10;     *&#10;     * <p>&#10;     * Finally, the lines are joined into a new string, using the LF character&#10;     * {@code &#34;\n&#34;} (U+000A) to separate lines.&#10;     *&#10;     * @apiNote&#10;     * This method's primary purpose is to shift a block of lines as far as&#10;     * possible to the left, while preserving relative indentation. Lines&#10;     * that were indented the least will thus have no leading&#10;     * {@linkplain Character#isWhitespace(int) white space}.&#10;     * The result will have the same number of line terminators as this string.&#10;     * If this string ends with a line terminator then the result will end&#10;     * with a line terminator.&#10;     *&#10;     * @implSpec&#10;     * This method treats all {@linkplain Character#isWhitespace(int) white space}&#10;     * characters as having equal width. As long as the indentation on every&#10;     * line is consistently composed of the same character sequences, then the&#10;     * result will be as described above.&#10;     *&#10;     * @return string with incidental indentation removed and line&#10;     *         terminators normalized&#10;     *&#10;     * @see String#lines()&#10;     * @see String#isBlank()&#10;     * @see String#indent(int)&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 15&#10;     *&#10;     "
  ]
  node [
    id 599
    label "isBlank()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 600
    label "public String translateEscapes()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with escape sequences&#10;     * translated as if in a string literal.&#10;     * <p>&#10;     * Escape sequences are translated as follows;&#10;     * <table class=&#34;striped&#34;>&#10;     *   <caption style=&#34;display:none&#34;>Translation</caption>&#10;     *   <thead>&#10;     *   <tr>&#10;     *     <th scope=&#34;col&#34;>Escape</th>&#10;     *     <th scope=&#34;col&#34;>Name</th>&#10;     *     <th scope=&#34;col&#34;>Translation</th>&#10;     *   </tr>&#10;     *   </thead>&#10;     *   <tbody>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Cb}</th>&#10;     *     <td>backspace</td>&#10;     *     <td>{@code U+0008}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Ct}</th>&#10;     *     <td>horizontal tab</td>&#10;     *     <td>{@code U+0009}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Cn}</th>&#10;     *     <td>line feed</td>&#10;     *     <td>{@code U+000A}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Cf}</th>&#10;     *     <td>form feed</td>&#10;     *     <td>{@code U+000C}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Cr}</th>&#10;     *     <td>carriage return</td>&#10;     *     <td>{@code U+000D}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Cs}</th>&#10;     *     <td>space</td>&#10;     *     <td>{@code U+0020}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005C&#34;}</th>&#10;     *     <td>double quote</td>&#10;     *     <td>{@code U+0022}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005C'}</th>&#10;     *     <td>single quote</td>&#10;     *     <td>{@code U+0027}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005C\u005C}</th>&#10;     *     <td>backslash</td>&#10;     *     <td>{@code U+005C}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005C0 - \u005C377}</th>&#10;     *     <td>octal escape</td>&#10;     *     <td>code point equivalents</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005C<line-terminator>}</th>&#10;     *     <td>continuation</td>&#10;     *     <td>discard</td>&#10;     *   </tr>&#10;     *   </tbody>&#10;     * </table>&#10;     *&#10;     * @implNote&#10;     * This method does <em>not</em> translate Unicode escapes such as &#34;{@code \u005cu2022}&#34;.&#10;     * Unicode escapes are translated by the Java compiler when reading input characters and&#10;     * are not part of the string literal specification.&#10;     *&#10;     * @throws IllegalArgumentException when an escape sequence is malformed.&#10;     *&#10;     * @return String with escape sequences translated.&#10;     *&#10;     * @jls 3.10.7 Escape Sequences&#10;     *&#10;     * @since 15&#10;     "
  ]
  node [
    id 601
    label "public R transform(Function<? super String, ? extends R> f)"
    type "method"
    comment "&#10;     * This method allows the application of a function to {@code this}&#10;     * string. The function should expect a single String argument&#10;     * and produce an {@code R} result.&#10;     * <p>&#10;     * Any exception thrown by {@code f.apply()} will be propagated to the&#10;     * caller.&#10;     *&#10;     * @param f    a function to apply&#10;     *&#10;     * @param <R>  the type of the result&#10;     *&#10;     * @return     the result of applying the function to this string&#10;     *&#10;     * @see java.util.function.Function&#10;     *&#10;     * @since 12&#10;     "
  ]
  node [
    id 602
    label "public IntStream chars()"
    type "method"
    comment "&#10;     * Returns a stream of {@code int} zero-extending the {@code char} values&#10;     * from this sequence.  Any char which maps to a <a&#10;     * href=&#34;{@docRoot}/java.base/java/lang/Character.html#unicode&#34;>surrogate code&#10;     * point</a> is passed through uninterpreted.&#10;     *&#10;     * @return an IntStream of char values from this sequence&#10;     * @since 9&#10;     "
  ]
  node [
    id 603
    label "public IntStream codePoints()"
    type "method"
    comment "&#10;     * Returns a stream of code point values from this sequence.  Any surrogate&#10;     * pairs encountered in the sequence are combined as if by {@linkplain&#10;     * Character#toCodePoint Character.toCodePoint} and the result is passed&#10;     * to the stream. Any other code units, including ordinary BMP characters,&#10;     * unpaired surrogates, and undefined code units, are zero-extended to&#10;     * {@code int} values which are then passed to the stream.&#10;     *&#10;     * @return an IntStream of Unicode code points from this sequence&#10;     * @since 9&#10;     "
  ]
  node [
    id 604
    label "public native char[] toCharArray()"
    type "method"
    comment "&#10;    public char[] toCharArray() {&#10;        return isLatin1() ? StringLatin1.toChars(value)&#10;                          : StringUTF16.toChars(value);&#10;    }&#10;    "
  ]
  node [
    id 605
    label "public static String format(String format, Object... args)"
    type "method"
    comment "&#10;     * Returns a formatted string using the specified format string and&#10;     * arguments.&#10;     *&#10;     * <p> The locale always used is the one returned by {@link&#10;     * java.util.Locale#getDefault(java.util.Locale.Category)&#10;     * Locale.getDefault(Locale.Category)} with&#10;     * {@link java.util.Locale.Category#FORMAT FORMAT} category specified.&#10;     *&#10;     * @param  format&#10;     *         A <a href=&#34;../util/Formatter.html#syntax&#34;>format string</a>&#10;     *&#10;     * @param  args&#10;     *         Arguments referenced by the format specifiers in the format&#10;     *         string.  If there are more arguments than format specifiers, the&#10;     *         extra arguments are ignored.  The number of arguments is&#10;     *         variable and may be zero.  The maximum number of arguments is&#10;     *         limited by the maximum dimension of a Java array as defined by&#10;     *         <cite>The Java&#38;trade; Virtual Machine Specification</cite>.&#10;     *         The behaviour on a&#10;     *         {@code null} argument depends on the <a&#10;     *         href=&#34;../util/Formatter.html#syntax&#34;>conversion</a>.&#10;     *&#10;     * @throws  java.util.IllegalFormatException&#10;     *          If a format string contains an illegal syntax, a format&#10;     *          specifier that is incompatible with the given arguments,&#10;     *          insufficient arguments given the format string, or other&#10;     *          illegal conditions.  For specification of all possible&#10;     *          formatting errors, see the <a&#10;     *          href=&#34;../util/Formatter.html#detail&#34;>Details</a> section of the&#10;     *          formatter class specification.&#10;     *&#10;     * @return  A formatted string&#10;     *&#10;     * @see  java.util.Formatter&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 606
    label "getDefault(java.util.Locale.Category)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 607
    label "FORMAT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 608
    label "public static String format(Locale l, String format, Object... args)"
    type "method"
    comment "&#10;     * Returns a formatted string using the specified locale, format string,&#10;     * and arguments.&#10;     *&#10;     * @param  l&#10;     *         The {@linkplain java.util.Locale locale} to apply during&#10;     *         formatting.  If {@code l} is {@code null} then no localization&#10;     *         is applied.&#10;     *&#10;     * @param  format&#10;     *         A <a href=&#34;../util/Formatter.html#syntax&#34;>format string</a>&#10;     *&#10;     * @param  args&#10;     *         Arguments referenced by the format specifiers in the format&#10;     *         string.  If there are more arguments than format specifiers, the&#10;     *         extra arguments are ignored.  The number of arguments is&#10;     *         variable and may be zero.  The maximum number of arguments is&#10;     *         limited by the maximum dimension of a Java array as defined by&#10;     *         <cite>The Java&#38;trade; Virtual Machine Specification</cite>.&#10;     *         The behaviour on a&#10;     *         {@code null} argument depends on the&#10;     *         <a href=&#34;../util/Formatter.html#syntax&#34;>conversion</a>.&#10;     *&#10;     * @throws  java.util.IllegalFormatException&#10;     *          If a format string contains an illegal syntax, a format&#10;     *          specifier that is incompatible with the given arguments,&#10;     *          insufficient arguments given the format string, or other&#10;     *          illegal conditions.  For specification of all possible&#10;     *          formatting errors, see the <a&#10;     *          href=&#34;../util/Formatter.html#detail&#34;>Details</a> section of the&#10;     *          formatter class specification&#10;     *&#10;     * @return  A formatted string&#10;     *&#10;     * @see  java.util.Formatter&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 609
    label "public String formatted(Object... args)"
    type "method"
    comment "&#10;     * Formats using this string as the format string, and the supplied&#10;     * arguments.&#10;     *&#10;     * @implSpec This method is equivalent to {@code String.format(this, args)}.&#10;     *&#10;     * @param  args&#10;     *         Arguments referenced by the format specifiers in this string.&#10;     *&#10;     * @return  A formatted string&#10;     *&#10;     * @see  java.lang.String#format(String,Object...)&#10;     * @see  java.util.Formatter&#10;     *&#10;     * @since 15&#10;     *&#10;     "
  ]
  node [
    id 610
    label "public static String valueOf(Object obj)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code Object} argument.&#10;     *&#10;     * @param   obj   an {@code Object}.&#10;     * @return  if the argument is {@code null}, then a string equal to&#10;     *          {@code &#34;null&#34;}; otherwise, the value of&#10;     *          {@code obj.toString()} is returned.&#10;     * @see     java.lang.Object#toString()&#10;     "
  ]
  node [
    id 611
    label "public static String valueOf(char[] data)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code char} array&#10;     * argument. The contents of the character array are copied; subsequent&#10;     * modification of the character array does not affect the returned&#10;     * string.&#10;     *&#10;     * @param   data     the character array.&#10;     * @return  a {@code String} that contains the characters of the&#10;     *          character array.&#10;     "
  ]
  node [
    id 612
    label "public static String valueOf(char[] data, int offset, int count)"
    type "method"
    comment "&#10;     * Returns the string representation of a specific subarray of the&#10;     * {@code char} array argument.&#10;     * <p>&#10;     * The {@code offset} argument is the index of the first&#10;     * character of the subarray. The {@code count} argument&#10;     * specifies the length of the subarray. The contents of the subarray&#10;     * are copied; subsequent modification of the character array does not&#10;     * affect the returned string.&#10;     *&#10;     * @param   data     the character array.&#10;     * @param   offset   initial offset of the subarray.&#10;     * @param   count    length of the subarray.&#10;     * @return  a {@code String} that contains the characters of the&#10;     *          specified subarray of the character array.&#10;     * @exception IndexOutOfBoundsException if {@code offset} is&#10;     *          negative, or {@code count} is negative, or&#10;     *          {@code offset+count} is larger than&#10;     *          {@code data.length}.&#10;     "
  ]
  node [
    id 613
    label "public static String copyValueOf(char[] data, int offset, int count)"
    type "method"
    comment "&#10;     * Equivalent to {@link #valueOf(char[], int, int)}.&#10;     *&#10;     * @param   data     the character array.&#10;     * @param   offset   initial offset of the subarray.&#10;     * @param   count    length of the subarray.&#10;     * @return  a {@code String} that contains the characters of the&#10;     *          specified subarray of the character array.&#10;     * @exception IndexOutOfBoundsException if {@code offset} is&#10;     *          negative, or {@code count} is negative, or&#10;     *          {@code offset+count} is larger than&#10;     *          {@code data.length}.&#10;     "
  ]
  node [
    id 614
    label "valueOf(char"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 615
    label "public static String copyValueOf(char[] data)"
    type "method"
    comment "&#10;     * Equivalent to {@link #valueOf(char[])}.&#10;     *&#10;     * @param   data   the character array.&#10;     * @return  a {@code String} that contains the characters of the&#10;     *          character array.&#10;     "
  ]
  node [
    id 616
    label "public static String valueOf(boolean b)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code boolean} argument.&#10;     *&#10;     * @param   b   a {@code boolean}.&#10;     * @return  if the argument is {@code true}, a string equal to&#10;     *          {@code &#34;true&#34;} is returned; otherwise, a string equal to&#10;     *          {@code &#34;false&#34;} is returned.&#10;     "
  ]
  node [
    id 617
    label "public static String valueOf(char c)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code char}&#10;     * argument.&#10;     *&#10;     * @param   c   a {@code char}.&#10;     * @return  a string of length {@code 1} containing&#10;     *          as its single character the argument {@code c}.&#10;     "
  ]
  node [
    id 618
    label "public static String valueOf(int i)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code int} argument.&#10;     * <p>&#10;     * The representation is exactly the one returned by the&#10;     * {@code Integer.toString} method of one argument.&#10;     *&#10;     * @param   i   an {@code int}.&#10;     * @return  a string representation of the {@code int} argument.&#10;     * @see     java.lang.Integer#toString(int, int)&#10;     "
  ]
  node [
    id 619
    label "public static String valueOf(long l)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code long} argument.&#10;     * <p>&#10;     * The representation is exactly the one returned by the&#10;     * {@code Long.toString} method of one argument.&#10;     *&#10;     * @param   l   a {@code long}.&#10;     * @return  a string representation of the {@code long} argument.&#10;     * @see     java.lang.Long#toString(long)&#10;     "
  ]
  node [
    id 620
    label "public static String valueOf(float f)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code float} argument.&#10;     * <p>&#10;     * The representation is exactly the one returned by the&#10;     * {@code Float.toString} method of one argument.&#10;     *&#10;     * @param   f   a {@code float}.&#10;     * @return  a string representation of the {@code float} argument.&#10;     * @see     java.lang.Float#toString(float)&#10;     "
  ]
  node [
    id 621
    label "public static String valueOf(double d)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code double} argument.&#10;     * <p>&#10;     * The representation is exactly the one returned by the&#10;     * {@code Double.toString} method of one argument.&#10;     *&#10;     * @param   d   a {@code double}.&#10;     * @return  a  string representation of the {@code double} argument.&#10;     * @see     java.lang.Double#toString(double)&#10;     "
  ]
  node [
    id 622
    label "public native String intern()"
    type "method"
    comment " Android-added: Annotate native method as @FastNative."
  ]
  node [
    id 623
    label "public String repeat(int count)"
    type "method"
    comment "&#10;     * Returns a string whose value is the concatenation of this&#10;     * string repeated {@code count} times.&#10;     * <p>&#10;     * If this string is empty or count is zero then the empty&#10;     * string is returned.&#10;     *&#10;     * @param   count number of times to repeat&#10;     *&#10;     * @return  A string composed of this string repeated&#10;     *          {@code count} times or the empty string if this&#10;     *          string is empty or count is zero&#10;     *&#10;     * @throws  IllegalArgumentException if the {@code count} is&#10;     *          negative.&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 624
    label " void getBytes(byte[] dst, int dstBegin, byte coder)"
    type "method"
    comment "&#10;     * Copy character bytes from this string into dst starting at dstBegin.&#10;     * This method doesn't perform any range checking.&#10;     *&#10;     * Invoker guarantees: dst is in UTF16 (inflate itself for asb), if two&#10;     * coders are different, and dst is big enough (range check)&#10;     *&#10;     * @param dstBegin  the char index, not offset of byte[]&#10;     * @param coder     the coder of dst[]&#10;     "
  ]
  node [
    id 625
    label "private native void fillBytesLatin1(byte[] dst, int byteIndex)"
    type "method"
    comment "&#10;     * Fill the underlying characters into the byte buffer. No range check.&#10;     * The caller should guarantee that dst is big enough for this operation.&#10;     "
  ]
  node [
    id 626
    label "private native void fillBytesUTF16(byte[] dst, int byteIndex)"
    type "method"
    comment "&#10;     * Fill the underlying characters into the byte buffer. No range check.&#10;     * The caller should guarantee that dst is big enough for this operation.&#10;     "
  ]
  node [
    id 627
    label " byte coder()"
    type "method"
    comment "&#10;     * Android note: It returns UTF16 if the string has any 0x00 char.&#10;     * See the difference between {@link StringLatin1#canEncode(int)} and&#10;     * art::mirror::String::IsASCII(uint16_t) in string.h.&#10;     "
  ]
  node [
    id 628
    label "canEncode(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 629
    label " static void checkIndex(int index, int length)"
    type "method"
    comment "&#10;     * StringIndexOutOfBoundsException  if {@code index} is&#10;     * negative or greater than or equal to {@code length}.&#10;     "
  ]
  node [
    id 630
    label " static void checkOffset(int offset, int length)"
    type "method"
    comment "&#10;     * StringIndexOutOfBoundsException  if {@code offset}&#10;     * is negative or greater than {@code length}.&#10;     "
  ]
  node [
    id 631
    label " static void checkBoundsOffCount(int offset, int count, int length)"
    type "method"
    comment "&#10;     * Check {@code offset}, {@code count} against {@code 0} and {@code length}&#10;     * bounds.&#10;     *&#10;     * @throws  StringIndexOutOfBoundsException&#10;     *          If {@code offset} is negative, {@code count} is negative,&#10;     *          or {@code offset} is greater than {@code length - count}&#10;     "
  ]
  node [
    id 632
    label " static String valueOfCodePoint(int codePoint)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code codePoint}&#10;     * argument.&#10;     *&#10;     * @param   codePoint a {@code codePoint}.&#10;     * @return  a string of length {@code 1} or {@code 2} containing&#10;     *          as its single character the argument {@code codePoint}.&#10;     * @throws IllegalArgumentException if the specified&#10;     *          {@code codePoint} is not a {@linkplain Character#isValidCodePoint&#10;     *          valid Unicode code point}.&#10;     "
  ]
  node [
    id 633
    label " static void checkBoundsBeginEnd(int begin, int end, int length)"
    type "method"
    comment "&#10;     * Check {@code begin}, {@code end} against {@code 0} and {@code length}&#10;     * bounds.&#10;     *&#10;     * @throws  StringIndexOutOfBoundsException&#10;     *          If {@code begin} is negative, {@code begin} is greater than&#10;     *          {@code end}, or {@code end} is greater than {@code length}.&#10;     "
  ]
  node [
    id 634
    label "java.lang.Comparable"
    type "class"
    comment "&#10; * This interface imposes a total ordering on the objects of each class that&#10; * implements it.  This ordering is referred to as the class's <i>natural&#10; * ordering</i>, and the class's {@code compareTo} method is referred to as&#10; * its <i>natural comparison method</i>.<p>&#10; *&#10; * Lists (and arrays) of objects that implement this interface can be sorted&#10; * automatically by {@link Collections#sort(List) Collections.sort} (and&#10; * {@link Arrays#sort(Object[]) Arrays.sort}).  Objects that implement this&#10; * interface can be used as keys in a {@linkplain SortedMap sorted map} or as&#10; * elements in a {@linkplain SortedSet sorted set}, without the need to&#10; * specify a {@linkplain Comparator comparator}.<p>&#10; *&#10; * The natural ordering for a class {@code C} is said to be <i>consistent&#10; * with equals</i> if and only if {@code e1.compareTo(e2) == 0} has&#10; * the same boolean value as {@code e1.equals(e2)} for every&#10; * {@code e1} and {@code e2} of class {@code C}.  Note that {@code null}&#10; * is not an instance of any class, and {@code e.compareTo(null)} should&#10; * throw a {@code NullPointerException} even though {@code e.equals(null)}&#10; * returns {@code false}.<p>&#10; *&#10; * It is strongly recommended (though not required) that natural orderings be&#10; * consistent with equals.  This is so because sorted sets (and sorted maps)&#10; * without explicit comparators behave &#34;strangely&#34; when they are used with&#10; * elements (or keys) whose natural ordering is inconsistent with equals.  In&#10; * particular, such a sorted set (or sorted map) violates the general contract&#10; * for set (or map), which is defined in terms of the {@code equals}&#10; * method.<p>&#10; *&#10; * For example, if one adds two keys {@code a} and {@code b} such that&#10; * {@code (!a.equals(b) &#38;&#38; a.compareTo(b) == 0)} to a sorted&#10; * set that does not use an explicit comparator, the second {@code add}&#10; * operation returns false (and the size of the sorted set does not increase)&#10; * because {@code a} and {@code b} are equivalent from the sorted set's&#10; * perspective.<p>&#10; *&#10; * Virtually all Java core classes that implement {@code Comparable}&#10; * have natural orderings that are consistent with equals.  One&#10; * exception is {@link java.math.BigDecimal}, whose {@linkplain&#10; * java.math.BigDecimal#compareTo natural ordering} equates {@code&#10; * BigDecimal} objects with equal numerical values and different&#10; * representations (such as 4.0 and 4.00). For {@link&#10; * java.math.BigDecimal#equals BigDecimal.equals()} to return true,&#10; * the representation and numerical value of the two {@code&#10; * BigDecimal} objects must be the same.<p>&#10; *&#10; * For the mathematically inclined, the <i>relation</i> that defines&#10; * the natural ordering on a given class C is:<pre>{@code&#10; *       {(x, y) such that x.compareTo(y) <= 0}.&#10; * }</pre> The <i>quotient</i> for this total order is: <pre>{@code&#10; *       {(x, y) such that x.compareTo(y) == 0}.&#10; * }</pre>&#10; *&#10; * It follows immediately from the contract for {@code compareTo} that the&#10; * quotient is an <i>equivalence relation</i> on {@code C}, and that the&#10; * natural ordering is a <i>total order</i> on {@code C}.  When we say that a&#10; * class's natural ordering is <i>consistent with equals</i>, we mean that the&#10; * quotient for the natural ordering is the equivalence relation defined by&#10; * the class's {@link Object#equals(Object) equals(Object)} method:<pre>&#10; *     {(x, y) such that x.equals(y)}. </pre><p>&#10; *&#10; * In other words, when a class's natural ordering is consistent with&#10; * equals, the equivalence classes defined by the equivalence relation&#10; * of the {@code equals} method and the equivalence classes defined by&#10; * the quotient of the {@code compareTo} method are the same.&#10; *&#10; * <p>This interface is a member of the&#10; * <a href=&#34;{@docRoot}/java.base/java/util/package-summary.html#CollectionsFramework&#34;>&#10; * Java Collections Framework</a>.&#10; *&#10; * @param <T> the type of objects that this object may be compared to&#10; *&#10; * @author  Josh Bloch&#10; * @see java.util.Comparator&#10; * @since 1.2&#10; "
  ]
  node [
    id 635
    label "public int compareTo(T o)"
    type "method"
    comment "&#10;     * Compares this object with the specified object for order.  Returns a&#10;     * negative integer, zero, or a positive integer as this object is less&#10;     * than, equal to, or greater than the specified object.&#10;     *&#10;     * <p>The implementor must ensure {@link Integer#signum&#10;     * signum}{@code (x.compareTo(y)) == -signum(y.compareTo(x))} for&#10;     * all {@code x} and {@code y}.  (This implies that {@code&#10;     * x.compareTo(y)} must throw an exception if and only if {@code&#10;     * y.compareTo(x)} throws an exception.)&#10;     *&#10;     * <p>The implementor must also ensure that the relation is transitive:&#10;     * {@code (x.compareTo(y) > 0 &#38;&#38; y.compareTo(z) > 0)} implies&#10;     * {@code x.compareTo(z) > 0}.&#10;     *&#10;     * <p>Finally, the implementor must ensure that {@code&#10;     * x.compareTo(y)==0} implies that {@code signum(x.compareTo(z))&#10;     * == signum(y.compareTo(z))}, for all {@code z}.&#10;     *&#10;     * @apiNote&#10;     * It is strongly recommended, but <i>not</i> strictly required that&#10;     * {@code (x.compareTo(y)==0) == (x.equals(y))}.  Generally speaking, any&#10;     * class that implements the {@code Comparable} interface and violates&#10;     * this condition should clearly indicate this fact.  The recommended&#10;     * language is &#34;Note: this class has a natural ordering that is&#10;     * inconsistent with equals.&#34;&#10;     *&#10;     * @param   o the object to be compared.&#10;     * @return  a negative integer, zero, or a positive integer as this object&#10;     *          is less than, equal to, or greater than the specified object.&#10;     *&#10;     * @throws NullPointerException if the specified object is null&#10;     * @throws ClassCastException if the specified object's type prevents it&#10;     *         from being compared to this object.&#10;     "
  ]
  node [
    id 636
    label "signumsignum"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 637
    label "public String toASCIIString()"
    type "method"
    comment "&#10;     * Returns the content of this URI as a US-ASCII string.&#10;     *&#10;     * <p> If this URI does not contain any characters in the <i>other</i>&#10;     * category then an invocation of this method will return the same value as&#10;     * an invocation of the {@link #toString() toString} method.  Otherwise&#10;     * this method works as if by invoking that method and then <a&#10;     * href=&#34;#encode&#34;>encoding</a> the result.  </p>&#10;     *&#10;     * @return  The string form of this URI, encoded as needed&#10;     *          so that it only contains characters in the US-ASCII&#10;     *          charset&#10;     "
  ]
  node [
    id 638
    label "toString()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 639
    label "private void writeObject(ObjectOutputStream os) throws IOException"
    type "method"
    comment "&#10;     * Saves the content of this URI to the given serial stream.&#10;     *&#10;     * <p> The only serializable field of a URI instance is its {@code string}&#10;     * field.  That field is given a value, if it does not have one already,&#10;     * and then the {@link java.io.ObjectOutputStream#defaultWriteObject()}&#10;     * method of the given object-output stream is invoked. </p>&#10;     *&#10;     * @param  os  The object-output stream to which this object&#10;     *             is to be written&#10;     "
  ]
  node [
    id 640
    label "defaultWriteObject()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 641
    label "java.io.ObjectOutputStream"
    type "class"
    comment "&#10; * An ObjectOutputStream writes primitive data types and graphs of Java objects&#10; * to an OutputStream.  The objects can be read (reconstituted) using an&#10; * ObjectInputStream.  Persistent storage of objects can be accomplished by&#10; * using a file for the stream.  If the stream is a network socket stream, the&#10; * objects can be reconstituted on another host or in another process.&#10; *&#10; * <p>Only objects that support the java.io.Serializable interface can be&#10; * written to streams.  The class of each serializable object is encoded&#10; * including the class name and signature of the class, the values of the&#10; * object's fields and arrays, and the closure of any other objects referenced&#10; * from the initial objects.&#10; *&#10; * <p>The method writeObject is used to write an object to the stream.  Any&#10; * object, including Strings and arrays, is written with writeObject. Multiple&#10; * objects or primitives can be written to the stream.  The objects must be&#10; * read back from the corresponding ObjectInputstream with the same types and&#10; * in the same order as they were written.&#10; *&#10; * <p>Primitive data types can also be written to the stream using the&#10; * appropriate methods from DataOutput. Strings can also be written using the&#10; * writeUTF method.&#10; *&#10; * <p>The default serialization mechanism for an object writes the class of the&#10; * object, the class signature, and the values of all non-transient and&#10; * non-static fields.  References to other objects (except in transient or&#10; * static fields) cause those objects to be written also. Multiple references&#10; * to a single object are encoded using a reference sharing mechanism so that&#10; * graphs of objects can be restored to the same shape as when the original was&#10; * written.&#10; *&#10; * <p>For example to write an object that can be read by the example in&#10; * ObjectInputStream:&#10; * <br>&#10; * <pre>&#10; *      FileOutputStream fos = new FileOutputStream(&#34;t.tmp&#34;);&#10; *      ObjectOutputStream oos = new ObjectOutputStream(fos);&#10; *&#10; *      oos.writeInt(12345);&#10; *      oos.writeObject(&#34;Today&#34;);&#10; *      oos.writeObject(new Date());&#10; *&#10; *      oos.close();&#10; * </pre>&#10; *&#10; * <p>Classes that require special handling during the serialization and&#10; * deserialization process must implement special methods with these exact&#10; * signatures:&#10; * <br>&#10; * <pre>&#10; * private void readObject(java.io.ObjectInputStream stream)&#10; *     throws IOException, ClassNotFoundException;&#10; * private void writeObject(java.io.ObjectOutputStream stream)&#10; *     throws IOException&#10; * private void readObjectNoData()&#10; *     throws ObjectStreamException;&#10; * </pre>&#10; *&#10; * <p>The writeObject method is responsible for writing the state of the object&#10; * for its particular class so that the corresponding readObject method can&#10; * restore it.  The method does not need to concern itself with the state&#10; * belonging to the object's superclasses or subclasses.  State is saved by&#10; * writing the individual fields to the ObjectOutputStream using the&#10; * writeObject method or by using the methods for primitive data types&#10; * supported by DataOutput.&#10; *&#10; * <p>Serialization does not write out the fields of any object that does not&#10; * implement the java.io.Serializable interface.  Subclasses of Objects that&#10; * are not serializable can be serializable. In this case the non-serializable&#10; * class must have a no-arg constructor to allow its fields to be initialized.&#10; * In this case it is the responsibility of the subclass to save and restore&#10; * the state of the non-serializable class. It is frequently the case that the&#10; * fields of that class are accessible (public, package, or protected) or that&#10; * there are get and set methods that can be used to restore the state.&#10; *&#10; * <p>Serialization of an object can be prevented by implementing writeObject&#10; * and readObject methods that throw the NotSerializableException.  The&#10; * exception will be caught by the ObjectOutputStream and abort the&#10; * serialization process.&#10; *&#10; * <p>Implementing the Externalizable interface allows the object to assume&#10; * complete control over the contents and format of the object's serialized&#10; * form.  The methods of the Externalizable interface, writeExternal and&#10; * readExternal, are called to save and restore the objects state.  When&#10; * implemented by a class they can write and read their own state using all of&#10; * the methods of ObjectOutput and ObjectInput.  It is the responsibility of&#10; * the objects to handle any versioning that occurs.&#10; *&#10; * <p>Enum constants are serialized differently than ordinary serializable or&#10; * externalizable objects.  The serialized form of an enum constant consists&#10; * solely of its name; field values of the constant are not transmitted.  To&#10; * serialize an enum constant, ObjectOutputStream writes the string returned by&#10; * the constant's name method.  Like other serializable or externalizable&#10; * objects, enum constants can function as the targets of back references&#10; * appearing subsequently in the serialization stream.  The process by which&#10; * enum constants are serialized cannot be customized; any class-specific&#10; * writeObject and writeReplace methods defined by enum types are ignored&#10; * during serialization.  Similarly, any serialPersistentFields or&#10; * serialVersionUID field declarations are also ignored--all enum types have a&#10; * fixed serialVersionUID of 0L.&#10; *&#10; * <p>Primitive data, excluding serializable fields and externalizable data, is&#10; * written to the ObjectOutputStream in block-data records. A block data record&#10; * is composed of a header and data. The block data header consists of a marker&#10; * and the number of bytes to follow the header.  Consecutive primitive data&#10; * writes are merged into one block-data record.  The blocking factor used for&#10; * a block-data record will be 1024 bytes.  Each block-data record will be&#10; * filled up to 1024 bytes, or be written whenever there is a termination of&#10; * block-data mode.  Calls to the ObjectOutputStream methods writeObject,&#10; * defaultWriteObject and writeFields initially terminate any existing&#10; * block-data record.&#10; *&#10; * @author      Mike Warres&#10; * @author      Roger Riggs&#10; * @see java.io.DataOutput&#10; * @see java.io.ObjectInputStream&#10; * @see java.io.Serializable&#10; * @see java.io.Externalizable&#10; * @see <a href=&#34;../../../platform/serialization/spec/output.html&#34;>Object Serialization Specification, Section 2, Object Output Classes</a>&#10; * @since       JDK1.1&#10; "
  ]
  node [
    id 642
    label "public void useProtocolVersion(int version) throws IOException"
    type "method"
    comment "&#10;     * Specify stream protocol version to use when writing the stream.&#10;     *&#10;     * <p>This routine provides a hook to enable the current version of&#10;     * Serialization to write in a format that is backwards compatible to a&#10;     * previous version of the stream format.&#10;     *&#10;     * <p>Every effort will be made to avoid introducing additional&#10;     * backwards incompatibilities; however, sometimes there is no&#10;     * other alternative.&#10;     *&#10;     * @param   version use ProtocolVersion from java.io.ObjectStreamConstants.&#10;     * @throws  IllegalStateException if called after any objects&#10;     *          have been serialized.&#10;     * @throws  IllegalArgumentException if invalid version is passed in.&#10;     * @throws  IOException if I/O errors occur&#10;     * @see java.io.ObjectStreamConstants#PROTOCOL_VERSION_1&#10;     * @see java.io.ObjectStreamConstants#PROTOCOL_VERSION_2&#10;     * @since   1.2&#10;     "
  ]
  node [
    id 643
    label "public final void writeObject(Object obj) throws IOException"
    type "method"
    comment "&#10;     * Write the specified object to the ObjectOutputStream.  The class of the&#10;     * object, the signature of the class, and the values of the non-transient&#10;     * and non-static fields of the class and all of its supertypes are&#10;     * written.  Default serialization for a class can be overridden using the&#10;     * writeObject and the readObject methods.  Objects referenced by this&#10;     * object are written transitively so that a complete equivalent graph of&#10;     * objects can be reconstructed by an ObjectInputStream.&#10;     *&#10;     * <p>Exceptions are thrown for problems with the OutputStream and for&#10;     * classes that should not be serialized.  All exceptions are fatal to the&#10;     * OutputStream, which is left in an indeterminate state, and it is up to&#10;     * the caller to ignore or recover the stream state.&#10;     *&#10;     * @throws  InvalidClassException Something is wrong with a class used by&#10;     *          serialization.&#10;     * @throws  NotSerializableException Some object to be serialized does not&#10;     *          implement the java.io.Serializable interface.&#10;     * @throws  IOException Any exception thrown by the underlying&#10;     *          OutputStream.&#10;     "
  ]
  node [
    id 644
    label "protected void writeObjectOverride(Object obj) throws IOException"
    type "method"
    comment "&#10;     * Method used by subclasses to override the default writeObject method.&#10;     * This method is called by trusted subclasses of ObjectInputStream that&#10;     * constructed ObjectInputStream using the protected no-arg constructor.&#10;     * The subclass is expected to provide an override method with the modifier&#10;     * &#34;final&#34;.&#10;     *&#10;     * @param   obj object to be written to the underlying stream&#10;     * @throws  IOException if there are I/O errors while writing to the&#10;     *          underlying stream&#10;     * @see #ObjectOutputStream()&#10;     * @see #writeObject(Object)&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 645
    label "public void writeUnshared(Object obj) throws IOException"
    type "method"
    comment "&#10;     * Writes an &#34;unshared&#34; object to the ObjectOutputStream.  This method is&#10;     * identical to writeObject, except that it always writes the given object&#10;     * as a new, unique object in the stream (as opposed to a back-reference&#10;     * pointing to a previously serialized instance).  Specifically:&#10;     * <ul>&#10;     *   <li>An object written via writeUnshared is always serialized in the&#10;     *       same manner as a newly appearing object (an object that has not&#10;     *       been written to the stream yet), regardless of whether or not the&#10;     *       object has been written previously.&#10;     *&#10;     *   <li>If writeObject is used to write an object that has been previously&#10;     *       written with writeUnshared, the previous writeUnshared operation&#10;     *       is treated as if it were a write of a separate object.  In other&#10;     *       words, ObjectOutputStream will never generate back-references to&#10;     *       object data written by calls to writeUnshared.&#10;     * </ul>&#10;     * While writing an object via writeUnshared does not in itself guarantee a&#10;     * unique reference to the object when it is deserialized, it allows a&#10;     * single object to be defined multiple times in a stream, so that multiple&#10;     * calls to readUnshared by the receiver will not conflict.  Note that the&#10;     * rules described above only apply to the base-level object written with&#10;     * writeUnshared, and not to any transitively referenced sub-objects in the&#10;     * object graph to be serialized.&#10;     *&#10;     * <p>ObjectOutputStream subclasses which override this method can only be&#10;     * constructed in security contexts possessing the&#10;     * &#34;enableSubclassImplementation&#34; SerializablePermission; any attempt to&#10;     * instantiate such a subclass without this permission will cause a&#10;     * SecurityException to be thrown.&#10;     *&#10;     * @param   obj object to write to stream&#10;     * @throws  NotSerializableException if an object in the graph to be&#10;     *          serialized does not implement the Serializable interface&#10;     * @throws  InvalidClassException if a problem exists with the class of an&#10;     *          object to be serialized&#10;     * @throws  IOException if an I/O error occurs during serialization&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 646
    label "public void defaultWriteObject() throws IOException"
    type "method"
    comment "&#10;     * Write the non-static and non-transient fields of the current class to&#10;     * this stream.  This may only be called from the writeObject method of the&#10;     * class being serialized. It will throw the NotActiveException if it is&#10;     * called otherwise.&#10;     *&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          <code>OutputStream</code>&#10;     "
  ]
  node [
    id 647
    label "public ObjectOutputStream.PutField putFields() throws IOException"
    type "method"
    comment "&#10;     * Retrieve the object used to buffer persistent fields to be written to&#10;     * the stream.  The fields will be written to the stream when writeFields&#10;     * method is called.&#10;     *&#10;     * @return  an instance of the class Putfield that holds the serializable&#10;     *          fields&#10;     * @throws  IOException if I/O errors occur&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 648
    label "public void writeFields() throws IOException"
    type "method"
    comment "&#10;     * Write the buffered fields to the stream.&#10;     *&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     * @throws  NotActiveException Called when a classes writeObject method was&#10;     *          not called to write the state of the object.&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 649
    label "public void reset() throws IOException"
    type "method"
    comment "&#10;     * Reset will disregard the state of any objects already written to the&#10;     * stream.  The state is reset to be the same as a new ObjectOutputStream.&#10;     * The current point in the stream is marked as reset so the corresponding&#10;     * ObjectInputStream will be reset at the same point.  Objects previously&#10;     * written to the stream will not be referred to as already being in the&#10;     * stream.  They will be written to the stream again.&#10;     *&#10;     * @throws  IOException if reset() is invoked while serializing an object.&#10;     "
  ]
  node [
    id 650
    label "protected void annotateClass(Class<?> cl) throws IOException"
    type "method"
    comment "&#10;     * Subclasses may implement this method to allow class data to be stored in&#10;     * the stream. By default this method does nothing.  The corresponding&#10;     * method in ObjectInputStream is resolveClass.  This method is called&#10;     * exactly once for each unique class in the stream.  The class name and&#10;     * signature will have already been written to the stream.  This method may&#10;     * make free use of the ObjectOutputStream to save any representation of&#10;     * the class it deems suitable (for example, the bytes of the class file).&#10;     * The resolveClass method in the corresponding subclass of&#10;     * ObjectInputStream must read and use any data or objects written by&#10;     * annotateClass.&#10;     *&#10;     * @param   cl the class to annotate custom data for&#10;     * @throws  IOException Any exception thrown by the underlying&#10;     *          OutputStream.&#10;     "
  ]
  node [
    id 651
    label "protected void annotateProxyClass(Class<?> cl) throws IOException"
    type "method"
    comment "&#10;     * Subclasses may implement this method to store custom data in the stream&#10;     * along with descriptors for dynamic proxy classes.&#10;     *&#10;     * <p>This method is called exactly once for each unique proxy class&#10;     * descriptor in the stream.  The default implementation of this method in&#10;     * <code>ObjectOutputStream</code> does nothing.&#10;     *&#10;     * <p>The corresponding method in <code>ObjectInputStream</code> is&#10;     * <code>resolveProxyClass</code>.  For a given subclass of&#10;     * <code>ObjectOutputStream</code> that overrides this method, the&#10;     * <code>resolveProxyClass</code> method in the corresponding subclass of&#10;     * <code>ObjectInputStream</code> must read any data or objects written by&#10;     * <code>annotateProxyClass</code>.&#10;     *&#10;     * @param   cl the proxy class to annotate custom data for&#10;     * @throws  IOException any exception thrown by the underlying&#10;     *          <code>OutputStream</code>&#10;     * @see ObjectInputStream#resolveProxyClass(String[])&#10;     * @since   1.3&#10;     "
  ]
  node [
    id 652
    label "protected Object replaceObject(Object obj) throws IOException"
    type "method"
    comment "&#10;     * This method will allow trusted subclasses of ObjectOutputStream to&#10;     * substitute one object for another during serialization. Replacing&#10;     * objects is disabled until enableReplaceObject is called. The&#10;     * enableReplaceObject method checks that the stream requesting to do&#10;     * replacement can be trusted.  The first occurrence of each object written&#10;     * into the serialization stream is passed to replaceObject.  Subsequent&#10;     * references to the object are replaced by the object returned by the&#10;     * original call to replaceObject.  To ensure that the private state of&#10;     * objects is not unintentionally exposed, only trusted streams may use&#10;     * replaceObject.&#10;     *&#10;     * <p>The ObjectOutputStream.writeObject method takes a parameter of type&#10;     * Object (as opposed to type Serializable) to allow for cases where&#10;     * non-serializable objects are replaced by serializable ones.&#10;     *&#10;     * <p>When a subclass is replacing objects it must insure that either a&#10;     * complementary substitution must be made during deserialization or that&#10;     * the substituted object is compatible with every field where the&#10;     * reference will be stored.  Objects whose type is not a subclass of the&#10;     * type of the field or array element abort the serialization by raising an&#10;     * exception and the object is not be stored.&#10;     *&#10;     * <p>This method is called only once when each object is first&#10;     * encountered.  All subsequent references to the object will be redirected&#10;     * to the new object. This method should return the object to be&#10;     * substituted or the original object.&#10;     *&#10;     * <p>Null can be returned as the object to be substituted, but may cause&#10;     * NullReferenceException in classes that contain references to the&#10;     * original object since they may be expecting an object instead of&#10;     * null.&#10;     *&#10;     * @param   obj the object to be replaced&#10;     * @return  the alternate object that replaced the specified one&#10;     * @throws  IOException Any exception thrown by the underlying&#10;     *          OutputStream.&#10;     "
  ]
  node [
    id 653
    label "protected boolean enableReplaceObject(boolean enable) throws SecurityException"
    type "method"
    comment "&#10;     * Enable the stream to do replacement of objects in the stream.  When&#10;     * enabled, the replaceObject method is called for every object being&#10;     * serialized.&#10;     *&#10;     * <p>If <code>enable</code> is true, and there is a security manager&#10;     * installed, this method first calls the security manager's&#10;     * <code>checkPermission</code> method with a&#10;     * <code>SerializablePermission(&#34;enableSubstitution&#34;)</code> permission to&#10;     * ensure it's ok to enable the stream to do replacement of objects in the&#10;     * stream.&#10;     *&#10;     * @param   enable boolean parameter to enable replacement of objects&#10;     * @return  the previous setting before this method was invoked&#10;     * @throws  SecurityException if a security manager exists and its&#10;     *          <code>checkPermission</code> method denies enabling the stream&#10;     *          to do replacement of objects in the stream.&#10;     * @see SecurityManager#checkPermission&#10;     * @see java.io.SerializablePermission&#10;     "
  ]
  node [
    id 654
    label "protected void writeStreamHeader() throws IOException"
    type "method"
    comment "&#10;     * The writeStreamHeader method is provided so subclasses can append or&#10;     * prepend their own header to the stream.  It writes the magic number and&#10;     * version to the stream.&#10;     *&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 655
    label "protected void writeClassDescriptor(ObjectStreamClass desc) throws IOException"
    type "method"
    comment "&#10;     * Write the specified class descriptor to the ObjectOutputStream.  Class&#10;     * descriptors are used to identify the classes of objects written to the&#10;     * stream.  Subclasses of ObjectOutputStream may override this method to&#10;     * customize the way in which class descriptors are written to the&#10;     * serialization stream.  The corresponding method in ObjectInputStream,&#10;     * <code>readClassDescriptor</code>, should then be overridden to&#10;     * reconstitute the class descriptor from its custom stream representation.&#10;     * By default, this method writes class descriptors according to the format&#10;     * defined in the Object Serialization specification.&#10;     *&#10;     * <p>Note that this method will only be called if the ObjectOutputStream&#10;     * is not using the old serialization stream format (set by calling&#10;     * ObjectOutputStream's <code>useProtocolVersion</code> method).  If this&#10;     * serialization stream is using the old format&#10;     * (<code>PROTOCOL_VERSION_1</code>), the class descriptor will be written&#10;     * internally in a manner that cannot be overridden or customized.&#10;     *&#10;     * @param   desc class descriptor to write to the stream&#10;     * @throws  IOException If an I/O error has occurred.&#10;     * @see java.io.ObjectInputStream#readClassDescriptor()&#10;     * @see #useProtocolVersion(int)&#10;     * @see java.io.ObjectStreamConstants#PROTOCOL_VERSION_1&#10;     * @since 1.3&#10;     "
  ]
  node [
    id 656
    label "public void write(int val) throws IOException"
    type "method"
    comment "&#10;     * Writes a byte. This method will block until the byte is actually&#10;     * written.&#10;     *&#10;     * @param   val the byte to be written to the stream&#10;     * @throws  IOException If an I/O error has occurred.&#10;     "
  ]
  node [
    id 657
    label "public void write(byte[] buf) throws IOException"
    type "method"
    comment "&#10;     * Writes an array of bytes. This method will block until the bytes are&#10;     * actually written.&#10;     *&#10;     * @param   buf the data to be written&#10;     * @throws  IOException If an I/O error has occurred.&#10;     "
  ]
  node [
    id 658
    label "public void write(byte[] buf, int off, int len) throws IOException"
    type "method"
    comment "&#10;     * Writes a sub array of bytes.&#10;     *&#10;     * @param   buf the data to be written&#10;     * @param   off the start offset in the data&#10;     * @param   len the number of bytes that are written&#10;     * @throws  IOException If an I/O error has occurred.&#10;     "
  ]
  node [
    id 659
    label "public void flush() throws IOException"
    type "method"
    comment "&#10;     * Flushes the stream. This will write any buffered output bytes and flush&#10;     * through to the underlying stream.&#10;     *&#10;     * @throws  IOException If an I/O error has occurred.&#10;     "
  ]
  node [
    id 660
    label "protected void drain() throws IOException"
    type "method"
    comment "&#10;     * Drain any buffered data in ObjectOutputStream.  Similar to flush but&#10;     * does not propagate the flush to the underlying stream.&#10;     *&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 661
    label "public void close() throws IOException"
    type "method"
    comment "&#10;     * Closes the input stream. Must be called to release any resources&#10;     * associated with the stream.&#10;     *&#10;     * @throws  IOException If an I/O error has occurred.&#10;     "
  ]
  node [
    id 662
    label "public void writeBoolean(boolean val) throws IOException"
    type "method"
    comment "&#10;     * Writes a boolean.&#10;     *&#10;     * @param   val the boolean to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 663
    label "public void writeByte(int val) throws IOException"
    type "method"
    comment "&#10;     * Writes an 8 bit byte.&#10;     *&#10;     * @param   val the byte value to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 664
    label "public void writeShort(int val) throws IOException"
    type "method"
    comment "&#10;     * Writes a 16 bit short.&#10;     *&#10;     * @param   val the short value to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 665
    label "public void writeChar(int val) throws IOException"
    type "method"
    comment "&#10;     * Writes a 16 bit char.&#10;     *&#10;     * @param   val the char value to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 666
    label "public void writeInt(int val) throws IOException"
    type "method"
    comment "&#10;     * Writes a 32 bit int.&#10;     *&#10;     * @param   val the integer value to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 667
    label "public void writeLong(long val) throws IOException"
    type "method"
    comment "&#10;     * Writes a 64 bit long.&#10;     *&#10;     * @param   val the long value to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 668
    label "public void writeFloat(float val) throws IOException"
    type "method"
    comment "&#10;     * Writes a 32 bit float.&#10;     *&#10;     * @param   val the float value to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 669
    label "public void writeDouble(double val) throws IOException"
    type "method"
    comment "&#10;     * Writes a 64 bit double.&#10;     *&#10;     * @param   val the double value to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 670
    label "public void writeBytes(String str) throws IOException"
    type "method"
    comment "&#10;     * Writes a String as a sequence of bytes.&#10;     *&#10;     * @param   str the String of bytes to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 671
    label "public void writeChars(String str) throws IOException"
    type "method"
    comment "&#10;     * Writes a String as a sequence of chars.&#10;     *&#10;     * @param   str the String of chars to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 672
    label "public void writeUTF(String str) throws IOException"
    type "method"
    comment "&#10;     * Primitive data write of this String in&#10;     * <a href=&#34;DataInput.html#modified-utf-8&#34;>modified UTF-8</a>&#10;     * format.  Note that there is a&#10;     * significant difference between writing a String into the stream as&#10;     * primitive data or as an Object. A String instance written by writeObject&#10;     * is written into the stream as a String initially. Future writeObject()&#10;     * calls write references to the string into the stream.&#10;     *&#10;     * @param   str the String to be written&#10;     * @throws  IOException if I/O errors occur while writing to the underlying&#10;     *          stream&#10;     "
  ]
  node [
    id 673
    label " int getProtocolVersion()"
    type "method"
    comment "&#10;     * Returns protocol version in use.&#10;     "
  ]
  node [
    id 674
    label " void writeTypeString(String str) throws IOException"
    type "method"
    comment "&#10;     * Writes string without allowing it to be replaced in stream.  Used by&#10;     * ObjectStreamClass to write class descriptor type strings.&#10;     "
  ]
  node [
    id 675
    label "private void verifySubclass()"
    type "method"
    comment "&#10;     * Verifies that this (possibly subclass) instance can be constructed&#10;     * without violating security constraints: the subclass must not override&#10;     * security-sensitive non-final methods, or else the&#10;     * &#34;enableSubclassImplementation&#34; SerializablePermission is checked.&#10;     "
  ]
  node [
    id 676
    label "private static boolean auditSubclass(final Class<?> subcl)"
    type "method"
    comment "&#10;     * Performs reflective checks on given subclass to verify that it doesn't&#10;     * override security-sensitive non-final methods.  Returns true if subclass&#10;     * is &#34;safe&#34;, false otherwise.&#10;     "
  ]
  node [
    id 677
    label "private void clear()"
    type "method"
    comment "&#10;     * Clears internal data structures.&#10;     "
  ]
  node [
    id 678
    label "private void writeObject0(Object obj, boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Underlying writeObject/writeUnshared implementation.&#10;     "
  ]
  node [
    id 679
    label "private void writeNull() throws IOException"
    type "method"
    comment "&#10;     * Writes null code to stream.&#10;     "
  ]
  node [
    id 680
    label "private void writeHandle(int handle) throws IOException"
    type "method"
    comment "&#10;     * Writes given object handle to stream.&#10;     "
  ]
  node [
    id 681
    label "private void writeClass(Class<?> cl, boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Writes representation of given class to stream.&#10;     "
  ]
  node [
    id 682
    label "private void writeClassDesc(ObjectStreamClass desc, boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Writes representation of given class descriptor to stream.&#10;     "
  ]
  node [
    id 683
    label "private void writeProxyDesc(ObjectStreamClass desc, boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Writes class descriptor representing a dynamic proxy class to stream.&#10;     "
  ]
  node [
    id 684
    label "private void writeNonProxyDesc(ObjectStreamClass desc, boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Writes class descriptor representing a standard (i.e., not a dynamic&#10;     * proxy) class to stream.&#10;     "
  ]
  node [
    id 685
    label "private void writeString(String str, boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Writes given string to stream, using standard or long UTF format&#10;     * depending on string length.&#10;     "
  ]
  node [
    id 686
    label "private void writeArray(Object array, ObjectStreamClass desc, boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Writes given array object to stream.&#10;     "
  ]
  node [
    id 687
    label "private void writeEnum(Enum<?> en, ObjectStreamClass desc, boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Writes given enum constant to stream.&#10;     "
  ]
  node [
    id 688
    label "private void writeOrdinaryObject(Object obj, ObjectStreamClass desc, boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Writes representation of a &#34;ordinary&#34; (i.e., not a String, Class,&#10;     * ObjectStreamClass, array, or enum constant) serializable object to the&#10;     * stream.&#10;     "
  ]
  node [
    id 689
    label "private void writeExternalData(Externalizable obj) throws IOException"
    type "method"
    comment "&#10;     * Writes externalizable data of given object by invoking its&#10;     * writeExternal() method.&#10;     "
  ]
  node [
    id 690
    label "private void writeRecordData(Object obj, ObjectStreamClass desc) throws IOException"
    type "method"
    comment " Writes the record component values for the given record object. "
  ]
  node [
    id 691
    label "private void writeSerialData(Object obj, ObjectStreamClass desc) throws IOException"
    type "method"
    comment "&#10;     * Writes instance data for each serializable class of given object, from&#10;     * superclass to subclass.&#10;     "
  ]
  node [
    id 692
    label "private void defaultWriteFields(Object obj, ObjectStreamClass desc) throws IOException"
    type "method"
    comment "&#10;     * Fetches and writes values of serializable fields of given object to&#10;     * stream.  The given class descriptor specifies which field values to&#10;     * write, and in which order they should be written.&#10;     "
  ]
  node [
    id 693
    label "private void writeFatalException(IOException ex) throws IOException"
    type "method"
    comment "&#10;     * Attempts to write to stream fatal IOException that has caused&#10;     * serialization to abort.&#10;     "
  ]
  node [
    id 694
    label "private static native void floatsToBytes(float[] src, int srcpos, byte[] dst, int dstpos, int nfloats)"
    type "method"
    comment " REMIND: remove once hotspot inlines Float.floatToIntBits"
  ]
  node [
    id 695
    label "private static native void doublesToBytes(double[] src, int srcpos, byte[] dst, int dstpos, int ndoubles)"
    type "method"
    comment " REMIND: remove once hotspot inlines Double.doubleToLongBits"
  ]
  node [
    id 696
    label "private void readObject(ObjectInputStream is) throws ClassNotFoundException, IOException"
    type "method"
    comment "&#10;     * Reconstitutes a URI from the given serial stream.&#10;     *&#10;     * <p> The {@link java.io.ObjectInputStream#defaultReadObject()} method is&#10;     * invoked to read the value of the {@code string} field.  The result is&#10;     * then parsed in the usual way.&#10;     *&#10;     * @param  is  The object-input stream from which this object&#10;     *             is being read&#10;     "
  ]
  node [
    id 697
    label "defaultReadObject()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 698
    label "java.io.ObjectInputStream"
    type "class"
    comment "&#10; * An ObjectInputStream deserializes primitive data and objects previously&#10; * written using an ObjectOutputStream.&#10; *&#10; * <p>ObjectOutputStream and ObjectInputStream can provide an application with&#10; * persistent storage for graphs of objects when used with a FileOutputStream&#10; * and FileInputStream respectively.  ObjectInputStream is used to recover&#10; * those objects previously serialized. Other uses include passing objects&#10; * between hosts using a socket stream or for marshaling and unmarshaling&#10; * arguments and parameters in a remote communication system.&#10; *&#10; * <p>ObjectInputStream ensures that the types of all objects in the graph&#10; * created from the stream match the classes present in the Java Virtual&#10; * Machine.  Classes are loaded as required using the standard mechanisms.&#10; *&#10; * <p>Only objects that support the java.io.Serializable or&#10; * java.io.Externalizable interface can be read from streams.&#10; *&#10; * <p>The method <code>readObject</code> is used to read an object from the&#10; * stream.  Java's safe casting should be used to get the desired type.  In&#10; * Java, strings and arrays are objects and are treated as objects during&#10; * serialization. When read they need to be cast to the expected type.&#10; *&#10; * <p>Primitive data types can be read from the stream using the appropriate&#10; * method on DataInput.&#10; *&#10; * <p>The default deserialization mechanism for objects restores the contents&#10; * of each field to the value and type it had when it was written.  Fields&#10; * declared as transient or static are ignored by the deserialization process.&#10; * References to other objects cause those objects to be read from the stream&#10; * as necessary.  Graphs of objects are restored correctly using a reference&#10; * sharing mechanism.  New objects are always allocated when deserializing,&#10; * which prevents existing objects from being overwritten.&#10; *&#10; * <p>Reading an object is analogous to running the constructors of a new&#10; * object.  Memory is allocated for the object and initialized to zero (NULL).&#10; * No-arg constructors are invoked for the non-serializable classes and then&#10; * the fields of the serializable classes are restored from the stream starting&#10; * with the serializable class closest to java.lang.object and finishing with&#10; * the object's most specific class.&#10; *&#10; * <p>For example to read from a stream as written by the example in&#10; * ObjectOutputStream:&#10; * <br>&#10; * <pre>&#10; *      FileInputStream fis = new FileInputStream(&#34;t.tmp&#34;);&#10; *      ObjectInputStream ois = new ObjectInputStream(fis);&#10; *&#10; *      int i = ois.readInt();&#10; *      String today = (String) ois.readObject();&#10; *      Date date = (Date) ois.readObject();&#10; *&#10; *      ois.close();&#10; * </pre>&#10; *&#10; * <p>Classes control how they are serialized by implementing either the&#10; * java.io.Serializable or java.io.Externalizable interfaces.&#10; *&#10; * <p>Implementing the Serializable interface allows object serialization to&#10; * save and restore the entire state of the object and it allows classes to&#10; * evolve between the time the stream is written and the time it is read.  It&#10; * automatically traverses references between objects, saving and restoring&#10; * entire graphs.&#10; *&#10; * <p>Serializable classes that require special handling during the&#10; * serialization and deserialization process should implement the following&#10; * methods:&#10; *&#10; * <pre>&#10; * private void writeObject(java.io.ObjectOutputStream stream)&#10; *     throws IOException;&#10; * private void readObject(java.io.ObjectInputStream stream)&#10; *     throws IOException, ClassNotFoundException;&#10; * private void readObjectNoData()&#10; *     throws ObjectStreamException;&#10; * </pre>&#10; *&#10; * <p>The readObject method is responsible for reading and restoring the state&#10; * of the object for its particular class using data written to the stream by&#10; * the corresponding writeObject method.  The method does not need to concern&#10; * itself with the state belonging to its superclasses or subclasses.  State is&#10; * restored by reading data from the ObjectInputStream for the individual&#10; * fields and making assignments to the appropriate fields of the object.&#10; * Reading primitive data types is supported by DataInput.&#10; *&#10; * <p>Any attempt to read object data which exceeds the boundaries of the&#10; * custom data written by the corresponding writeObject method will cause an&#10; * OptionalDataException to be thrown with an eof field value of true.&#10; * Non-object reads which exceed the end of the allotted data will reflect the&#10; * end of data in the same way that they would indicate the end of the stream:&#10; * bytewise reads will return -1 as the byte read or number of bytes read, and&#10; * primitive reads will throw EOFExceptions.  If there is no corresponding&#10; * writeObject method, then the end of default serialized data marks the end of&#10; * the allotted data.&#10; *&#10; * <p>Primitive and object read calls issued from within a readExternal method&#10; * behave in the same manner--if the stream is already positioned at the end of&#10; * data written by the corresponding writeExternal method, object reads will&#10; * throw OptionalDataExceptions with eof set to true, bytewise reads will&#10; * return -1, and primitive reads will throw EOFExceptions.  Note that this&#10; * behavior does not hold for streams written with the old&#10; * <code>ObjectStreamConstants.PROTOCOL_VERSION_1</code> protocol, in which the&#10; * end of data written by writeExternal methods is not demarcated, and hence&#10; * cannot be detected.&#10; *&#10; * <p>The readObjectNoData method is responsible for initializing the state of&#10; * the object for its particular class in the event that the serialization&#10; * stream does not list the given class as a superclass of the object being&#10; * deserialized.  This may occur in cases where the receiving party uses a&#10; * different version of the deserialized instance's class than the sending&#10; * party, and the receiver's version extends classes that are not extended by&#10; * the sender's version.  This may also occur if the serialization stream has&#10; * been tampered; hence, readObjectNoData is useful for initializing&#10; * deserialized objects properly despite a &#34;hostile&#34; or incomplete source&#10; * stream.&#10; *&#10; * <p>Serialization does not read or assign values to the fields of any object&#10; * that does not implement the java.io.Serializable interface.  Subclasses of&#10; * Objects that are not serializable can be serializable. In this case the&#10; * non-serializable class must have a no-arg constructor to allow its fields to&#10; * be initialized.  In this case it is the responsibility of the subclass to&#10; * save and restore the state of the non-serializable class. It is frequently&#10; * the case that the fields of that class are accessible (public, package, or&#10; * protected) or that there are get and set methods that can be used to restore&#10; * the state.&#10; *&#10; * <p>Any exception that occurs while deserializing an object will be caught by&#10; * the ObjectInputStream and abort the reading process.&#10; *&#10; * <p>Implementing the Externalizable interface allows the object to assume&#10; * complete control over the contents and format of the object's serialized&#10; * form.  The methods of the Externalizable interface, writeExternal and&#10; * readExternal, are called to save and restore the objects state.  When&#10; * implemented by a class they can write and read their own state using all of&#10; * the methods of ObjectOutput and ObjectInput.  It is the responsibility of&#10; * the objects to handle any versioning that occurs.&#10; *&#10; * <p>Enum constants are deserialized differently than ordinary serializable or&#10; * externalizable objects.  The serialized form of an enum constant consists&#10; * solely of its name; field values of the constant are not transmitted.  To&#10; * deserialize an enum constant, ObjectInputStream reads the constant name from&#10; * the stream; the deserialized constant is then obtained by calling the static&#10; * method <code>Enum.valueOf(Class, String)</code> with the enum constant's&#10; * base type and the received constant name as arguments.  Like other&#10; * serializable or externalizable objects, enum constants can function as the&#10; * targets of back references appearing subsequently in the serialization&#10; * stream.  The process by which enum constants are deserialized cannot be&#10; * customized: any class-specific readObject, readObjectNoData, and readResolve&#10; * methods defined by enum types are ignored during deserialization.&#10; * Similarly, any serialPersistentFields or serialVersionUID field declarations&#10; * are also ignored--all enum types have a fixed serialVersionUID of 0L.&#10; *&#10; * @author      Mike Warres&#10; * @author      Roger Riggs&#10; * @see java.io.DataInput&#10; * @see java.io.ObjectOutputStream&#10; * @see java.io.Serializable&#10; * @see <a href=&#34;../../../platform/serialization/spec/input.html&#34;> Object Serialization Specification, Section 3, Object Input Classes</a>&#10; * @since   JDK1.1&#10; "
  ]
  node [
    id 699
    label "public final Object readObject() throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Read an object from the ObjectInputStream.  The class of the object, the&#10;     * signature of the class, and the values of the non-transient and&#10;     * non-static fields of the class and all of its supertypes are read.&#10;     * Default deserializing for a class can be overridden using the writeObject&#10;     * and readObject methods.  Objects referenced by this object are read&#10;     * transitively so that a complete equivalent graph of objects is&#10;     * reconstructed by readObject.&#10;     *&#10;     * <p>The root object is completely restored when all of its fields and the&#10;     * objects it references are completely restored.  At this point the object&#10;     * validation callbacks are executed in order based on their registered&#10;     * priorities. The callbacks are registered by objects (in the readObject&#10;     * special methods) as they are individually restored.&#10;     *&#10;     * <p>Exceptions are thrown for problems with the InputStream and for&#10;     * classes that should not be deserialized.  All exceptions are fatal to&#10;     * the InputStream and leave it in an indeterminate state; it is up to the&#10;     * caller to ignore or recover the stream state.&#10;     *&#10;     * @throws  ClassNotFoundException Class of a serialized object cannot be&#10;     *          found.&#10;     * @throws  InvalidClassException Something is wrong with a class used by&#10;     *          serialization.&#10;     * @throws  StreamCorruptedException Control information in the&#10;     *          stream is inconsistent.&#10;     * @throws  OptionalDataException Primitive data was found in the&#10;     *          stream instead of objects.&#10;     * @throws  IOException Any of the usual Input/Output related exceptions.&#10;     "
  ]
  node [
    id 700
    label "protected Object readObjectOverride() throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * This method is called by trusted subclasses of ObjectOutputStream that&#10;     * constructed ObjectOutputStream using the protected no-arg constructor.&#10;     * The subclass is expected to provide an override method with the modifier&#10;     * &#34;final&#34;.&#10;     *&#10;     * @return  the Object read from the stream.&#10;     * @throws  ClassNotFoundException Class definition of a serialized object&#10;     *          cannot be found.&#10;     * @throws  OptionalDataException Primitive data was found in the stream&#10;     *          instead of objects.&#10;     * @throws  IOException if I/O errors occurred while reading from the&#10;     *          underlying stream&#10;     * @see #ObjectInputStream()&#10;     * @see #readObject()&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 701
    label "public Object readUnshared() throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Reads an &#34;unshared&#34; object from the ObjectInputStream.  This method is&#10;     * identical to readObject, except that it prevents subsequent calls to&#10;     * readObject and readUnshared from returning additional references to the&#10;     * deserialized instance obtained via this call.  Specifically:&#10;     * <ul>&#10;     *   <li>If readUnshared is called to deserialize a back-reference (the&#10;     *       stream representation of an object which has been written&#10;     *       previously to the stream), an ObjectStreamException will be&#10;     *       thrown.&#10;     *&#10;     *   <li>If readUnshared returns successfully, then any subsequent attempts&#10;     *       to deserialize back-references to the stream handle deserialized&#10;     *       by readUnshared will cause an ObjectStreamException to be thrown.&#10;     * </ul>&#10;     * Deserializing an object via readUnshared invalidates the stream handle&#10;     * associated with the returned object.  Note that this in itself does not&#10;     * always guarantee that the reference returned by readUnshared is unique;&#10;     * the deserialized object may define a readResolve method which returns an&#10;     * object visible to other parties, or readUnshared may return a Class&#10;     * object or enum constant obtainable elsewhere in the stream or through&#10;     * external means. If the deserialized object defines a readResolve method&#10;     * and the invocation of that method returns an array, then readUnshared&#10;     * returns a shallow clone of that array; this guarantees that the returned&#10;     * array object is unique and cannot be obtained a second time from an&#10;     * invocation of readObject or readUnshared on the ObjectInputStream,&#10;     * even if the underlying data stream has been manipulated.&#10;     *&#10;     * <p>ObjectInputStream subclasses which override this method can only be&#10;     * constructed in security contexts possessing the&#10;     * &#34;enableSubclassImplementation&#34; SerializablePermission; any attempt to&#10;     * instantiate such a subclass without this permission will cause a&#10;     * SecurityException to be thrown.&#10;     *&#10;     * @return  reference to deserialized object&#10;     * @throws  ClassNotFoundException if class of an object to deserialize&#10;     *          cannot be found&#10;     * @throws  StreamCorruptedException if control information in the stream&#10;     *          is inconsistent&#10;     * @throws  ObjectStreamException if object to deserialize has already&#10;     *          appeared in stream&#10;     * @throws  OptionalDataException if primitive data is next in stream&#10;     * @throws  IOException if an I/O error occurs during deserialization&#10;     * @since   1.4&#10;     "
  ]
  node [
    id 702
    label "public void defaultReadObject() throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Read the non-static and non-transient fields of the current class from&#10;     * this stream.  This may only be called from the readObject method of the&#10;     * class being deserialized. It will throw the NotActiveException if it is&#10;     * called otherwise.&#10;     *&#10;     * @throws  ClassNotFoundException if the class of a serialized object&#10;     *          could not be found.&#10;     * @throws  IOException if an I/O error occurs.&#10;     * @throws  NotActiveException if the stream is not currently reading&#10;     *          objects.&#10;     "
  ]
  node [
    id 703
    label "public ObjectInputStream.GetField readFields() throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Reads the persistent fields from the stream and makes them available by&#10;     * name.&#10;     *&#10;     * @return  the <code>GetField</code> object representing the persistent&#10;     *          fields of the object being deserialized&#10;     * @throws  ClassNotFoundException if the class of a serialized object&#10;     *          could not be found.&#10;     * @throws  IOException if an I/O error occurs.&#10;     * @throws  NotActiveException if the stream is not currently reading&#10;     *          objects.&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 704
    label "public void registerValidation(ObjectInputValidation obj, int prio) throws NotActiveException, InvalidObjectException"
    type "method"
    comment "&#10;     * Register an object to be validated before the graph is returned.  While&#10;     * similar to resolveObject these validations are called after the entire&#10;     * graph has been reconstituted.  Typically, a readObject method will&#10;     * register the object with the stream so that when all of the objects are&#10;     * restored a final set of validations can be performed.&#10;     *&#10;     * @param   obj the object to receive the validation callback.&#10;     * @param   prio controls the order of callbacks;zero is a good default.&#10;     *          Use higher numbers to be called back earlier, lower numbers for&#10;     *          later callbacks. Within a priority, callbacks are processed in&#10;     *          no particular order.&#10;     * @throws  NotActiveException The stream is not currently reading objects&#10;     *          so it is invalid to register a callback.&#10;     * @throws  InvalidObjectException The validation object is null.&#10;     "
  ]
  node [
    id 705
    label "protected Class<?> resolveClass(ObjectStreamClass desc) throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Load the local class equivalent of the specified stream class&#10;     * description.  Subclasses may implement this method to allow classes to&#10;     * be fetched from an alternate source.&#10;     *&#10;     * <p>The corresponding method in <code>ObjectOutputStream</code> is&#10;     * <code>annotateClass</code>.  This method will be invoked only once for&#10;     * each unique class in the stream.  This method can be implemented by&#10;     * subclasses to use an alternate loading mechanism but must return a&#10;     * <code>Class</code> object. Once returned, if the class is not an array&#10;     * class, its serialVersionUID is compared to the serialVersionUID of the&#10;     * serialized class, and if there is a mismatch, the deserialization fails&#10;     * and an {@link InvalidClassException} is thrown.&#10;     *&#10;     * <p>The default implementation of this method in&#10;     * <code>ObjectInputStream</code> returns the result of calling&#10;     * <pre>&#10;     *     Class.forName(desc.getName(), false, loader)&#10;     * </pre>&#10;     * where <code>loader</code> is determined as follows: if there is a&#10;     * method on the current thread's stack whose declaring class was&#10;     * defined by a user-defined class loader (and was not a generated to&#10;     * implement reflective invocations), then <code>loader</code> is class&#10;     * loader corresponding to the closest such method to the currently&#10;     * executing frame; otherwise, <code>loader</code> is&#10;     * <code>null</code>. If this call results in a&#10;     * <code>ClassNotFoundException</code> and the name of the passed&#10;     * <code>ObjectStreamClass</code> instance is the Java language keyword&#10;     * for a primitive type or void, then the <code>Class</code> object&#10;     * representing that primitive type or void will be returned&#10;     * (e.g., an <code>ObjectStreamClass</code> with the name&#10;     * <code>&#34;int&#34;</code> will be resolved to <code>Integer.TYPE</code>).&#10;     * Otherwise, the <code>ClassNotFoundException</code> will be thrown to&#10;     * the caller of this method.&#10;     *&#10;     * @param   desc an instance of class <code>ObjectStreamClass</code>&#10;     * @return  a <code>Class</code> object corresponding to <code>desc</code>&#10;     * @throws  IOException any of the usual Input/Output exceptions.&#10;     * @throws  ClassNotFoundException if class of a serialized object cannot&#10;     *          be found.&#10;     "
  ]
  node [
    id 706
    label "InvalidClassException"
  ]
  node [
    id 707
    label "protected Class<?> resolveProxyClass(String[] interfaces) throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Returns a proxy class that implements the interfaces named in a proxy&#10;     * class descriptor; subclasses may implement this method to read custom&#10;     * data from the stream along with the descriptors for dynamic proxy&#10;     * classes, allowing them to use an alternate loading mechanism for the&#10;     * interfaces and the proxy class.&#10;     *&#10;     * <p>This method is called exactly once for each unique proxy class&#10;     * descriptor in the stream.&#10;     *&#10;     * <p>The corresponding method in <code>ObjectOutputStream</code> is&#10;     * <code>annotateProxyClass</code>.  For a given subclass of&#10;     * <code>ObjectInputStream</code> that overrides this method, the&#10;     * <code>annotateProxyClass</code> method in the corresponding subclass of&#10;     * <code>ObjectOutputStream</code> must write any data or objects read by&#10;     * this method.&#10;     *&#10;     * <p>The default implementation of this method in&#10;     * <code>ObjectInputStream</code> returns the result of calling&#10;     * <code>Proxy.getProxyClass</code> with the list of <code>Class</code>&#10;     * objects for the interfaces that are named in the <code>interfaces</code>&#10;     * parameter.  The <code>Class</code> object for each interface name&#10;     * <code>i</code> is the value returned by calling&#10;     * <pre>&#10;     *     Class.forName(i, false, loader)&#10;     * </pre>&#10;     * where <code>loader</code> is that of the first non-<code>null</code>&#10;     * class loader up the execution stack, or <code>null</code> if no&#10;     * non-<code>null</code> class loaders are on the stack (the same class&#10;     * loader choice used by the <code>resolveClass</code> method).  Unless any&#10;     * of the resolved interfaces are non-public, this same value of&#10;     * <code>loader</code> is also the class loader passed to&#10;     * <code>Proxy.getProxyClass</code>; if non-public interfaces are present,&#10;     * their class loader is passed instead (if more than one non-public&#10;     * interface class loader is encountered, an&#10;     * <code>IllegalAccessError</code> is thrown).&#10;     * If <code>Proxy.getProxyClass</code> throws an&#10;     * <code>IllegalArgumentException</code>, <code>resolveProxyClass</code>&#10;     * will throw a <code>ClassNotFoundException</code> containing the&#10;     * <code>IllegalArgumentException</code>.&#10;     *&#10;     * @param interfaces the list of interface names that were&#10;     *                deserialized in the proxy class descriptor&#10;     * @return  a proxy class for the specified interfaces&#10;     * @throws        IOException any exception thrown by the underlying&#10;     *                <code>InputStream</code>&#10;     * @throws        ClassNotFoundException if the proxy class or any of the&#10;     *                named interfaces could not be found&#10;     * @see ObjectOutputStream#annotateProxyClass(Class)&#10;     * @since 1.3&#10;     "
  ]
  node [
    id 708
    label "protected Object resolveObject(Object obj) throws IOException"
    type "method"
    comment "&#10;     * This method will allow trusted subclasses of ObjectInputStream to&#10;     * substitute one object for another during deserialization. Replacing&#10;     * objects is disabled until enableResolveObject is called. The&#10;     * enableResolveObject method checks that the stream requesting to resolve&#10;     * object can be trusted. Every reference to serializable objects is passed&#10;     * to resolveObject.  To insure that the private state of objects is not&#10;     * unintentionally exposed only trusted streams may use resolveObject.&#10;     *&#10;     * <p>This method is called after an object has been read but before it is&#10;     * returned from readObject.  The default resolveObject method just returns&#10;     * the same object.&#10;     *&#10;     * <p>When a subclass is replacing objects it must insure that the&#10;     * substituted object is compatible with every field where the reference&#10;     * will be stored.  Objects whose type is not a subclass of the type of the&#10;     * field or array element abort the serialization by raising an exception&#10;     * and the object is not be stored.&#10;     *&#10;     * <p>This method is called only once when each object is first&#10;     * encountered.  All subsequent references to the object will be redirected&#10;     * to the new object.&#10;     *&#10;     * @param   obj object to be substituted&#10;     * @return  the substituted object&#10;     * @throws  IOException Any of the usual Input/Output exceptions.&#10;     "
  ]
  node [
    id 709
    label "protected boolean enableResolveObject(boolean enable) throws SecurityException"
    type "method"
    comment "&#10;     * Enable the stream to allow objects read from the stream to be replaced.&#10;     * When enabled, the resolveObject method is called for every object being&#10;     * deserialized.&#10;     *&#10;     * <p>If <i>enable</i> is true, and there is a security manager installed,&#10;     * this method first calls the security manager's&#10;     * <code>checkPermission</code> method with the&#10;     * <code>SerializablePermission(&#34;enableSubstitution&#34;)</code> permission to&#10;     * ensure it's ok to enable the stream to allow objects read from the&#10;     * stream to be replaced.&#10;     *&#10;     * @param   enable true for enabling use of <code>resolveObject</code> for&#10;     *          every object being deserialized&#10;     * @return  the previous setting before this method was invoked&#10;     * @throws  SecurityException if a security manager exists and its&#10;     *          <code>checkPermission</code> method denies enabling the stream&#10;     *          to allow objects read from the stream to be replaced.&#10;     * @see SecurityManager#checkPermission&#10;     * @see java.io.SerializablePermission&#10;     "
  ]
  node [
    id 710
    label "protected void readStreamHeader() throws IOException, StreamCorruptedException"
    type "method"
    comment "&#10;     * The readStreamHeader method is provided to allow subclasses to read and&#10;     * verify their own stream headers. It reads and verifies the magic number&#10;     * and version number.&#10;     *&#10;     * @throws  IOException if there are I/O errors while reading from the&#10;     *          underlying <code>InputStream</code>&#10;     * @throws  StreamCorruptedException if control information in the stream&#10;     *          is inconsistent&#10;     "
  ]
  node [
    id 711
    label "protected ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Read a class descriptor from the serialization stream.  This method is&#10;     * called when the ObjectInputStream expects a class descriptor as the next&#10;     * item in the serialization stream.  Subclasses of ObjectInputStream may&#10;     * override this method to read in class descriptors that have been written&#10;     * in non-standard formats (by subclasses of ObjectOutputStream which have&#10;     * overridden the <code>writeClassDescriptor</code> method).  By default,&#10;     * this method reads class descriptors according to the format defined in&#10;     * the Object Serialization specification.&#10;     *&#10;     * @return  the class descriptor read&#10;     * @throws  IOException If an I/O error has occurred.&#10;     * @throws  ClassNotFoundException If the Class of a serialized object used&#10;     *          in the class descriptor representation cannot be found&#10;     * @see java.io.ObjectOutputStream#writeClassDescriptor(java.io.ObjectStreamClass)&#10;     * @since 1.3&#10;     "
  ]
  node [
    id 712
    label "public int read() throws IOException"
    type "method"
    comment "&#10;     * Reads a byte of data. This method will block if no input is available.&#10;     *&#10;     * @return  the byte read, or -1 if the end of the stream is reached.&#10;     * @throws  IOException If an I/O error has occurred.&#10;     "
  ]
  node [
    id 713
    label "public int read(byte[] buf, int off, int len) throws IOException"
    type "method"
    comment "&#10;     * Reads into an array of bytes.  This method will block until some input&#10;     * is available. Consider using java.io.DataInputStream.readFully to read&#10;     * exactly 'length' bytes.&#10;     *&#10;     * @param   buf the buffer into which the data is read&#10;     * @param   off the start offset of the data&#10;     * @param   len the maximum number of bytes read&#10;     * @return  the actual number of bytes read, -1 is returned when the end of&#10;     *          the stream is reached.&#10;     * @throws  IOException If an I/O error has occurred.&#10;     * @see java.io.DataInputStream#readFully(byte[],int,int)&#10;     "
  ]
  node [
    id 714
    label "public int available() throws IOException"
    type "method"
    comment "&#10;     * Returns the number of bytes that can be read without blocking.&#10;     *&#10;     * @return  the number of available bytes.&#10;     * @throws  IOException if there are I/O errors while reading from the&#10;     *          underlying <code>InputStream</code>&#10;     "
  ]
  node [
    id 715
    label "public boolean readBoolean() throws IOException"
    type "method"
    comment "&#10;     * Reads in a boolean.&#10;     *&#10;     * @return  the boolean read.&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 716
    label "public byte readByte() throws IOException"
    type "method"
    comment "&#10;     * Reads an 8 bit byte.&#10;     *&#10;     * @return  the 8 bit byte read.&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 717
    label "public int readUnsignedByte() throws IOException"
    type "method"
    comment "&#10;     * Reads an unsigned 8 bit byte.&#10;     *&#10;     * @return  the 8 bit byte read.&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 718
    label "public char readChar() throws IOException"
    type "method"
    comment "&#10;     * Reads a 16 bit char.&#10;     *&#10;     * @return  the 16 bit char read.&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 719
    label "public short readShort() throws IOException"
    type "method"
    comment "&#10;     * Reads a 16 bit short.&#10;     *&#10;     * @return  the 16 bit short read.&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 720
    label "public int readUnsignedShort() throws IOException"
    type "method"
    comment "&#10;     * Reads an unsigned 16 bit short.&#10;     *&#10;     * @return  the 16 bit short read.&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 721
    label "public int readInt() throws IOException"
    type "method"
    comment "&#10;     * Reads a 32 bit int.&#10;     *&#10;     * @return  the 32 bit integer read.&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 722
    label "public long readLong() throws IOException"
    type "method"
    comment "&#10;     * Reads a 64 bit long.&#10;     *&#10;     * @return  the read 64 bit long.&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 723
    label "public float readFloat() throws IOException"
    type "method"
    comment "&#10;     * Reads a 32 bit float.&#10;     *&#10;     * @return  the 32 bit float read.&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 724
    label "public double readDouble() throws IOException"
    type "method"
    comment "&#10;     * Reads a 64 bit double.&#10;     *&#10;     * @return  the 64 bit double read.&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 725
    label "public void readFully(byte[] buf) throws IOException"
    type "method"
    comment "&#10;     * Reads bytes, blocking until all bytes are read.&#10;     *&#10;     * @param   buf the buffer into which the data is read&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 726
    label "public void readFully(byte[] buf, int off, int len) throws IOException"
    type "method"
    comment "&#10;     * Reads bytes, blocking until all bytes are read.&#10;     *&#10;     * @param   buf the buffer into which the data is read&#10;     * @param   off the start offset of the data&#10;     * @param   len the maximum number of bytes to read&#10;     * @throws  EOFException If end of file is reached.&#10;     * @throws  IOException If other I/O error has occurred.&#10;     "
  ]
  node [
    id 727
    label "public int skipBytes(int len) throws IOException"
    type "method"
    comment "&#10;     * Skips bytes.&#10;     *&#10;     * @param   len the number of bytes to be skipped&#10;     * @return  the actual number of bytes skipped.&#10;     * @throws  IOException If an I/O error has occurred.&#10;     "
  ]
  node [
    id 728
    label "public String readUTF() throws IOException"
    type "method"
    comment "&#10;     * Reads a String in&#10;     * <a href=&#34;DataInput.html#modified-utf-8&#34;>modified UTF-8</a>&#10;     * format.&#10;     *&#10;     * @return  the String.&#10;     * @throws  IOException if there are I/O errors while reading from the&#10;     *          underlying <code>InputStream</code>&#10;     * @throws  UTFDataFormatException if read bytes do not represent a valid&#10;     *          modified UTF-8 encoding of a string&#10;     "
  ]
  node [
    id 729
    label "private void checkArray(Class<?> arrayType, int arrayLength) throws InvalidClassException"
    type "method"
    comment "&#10;     * Checks the given array type and length to ensure that creation of such&#10;     * an array is permitted by this ObjectInputStream. The arrayType argument&#10;     * must represent an actual array type.&#10;     *&#10;     * This private method is called via SharedSecrets.&#10;     *&#10;     * @param arrayType the array type&#10;     * @param arrayLength the array length&#10;     * @throws NullPointerException if arrayType is null&#10;     * @throws IllegalArgumentException if arrayType isn't actually an array type&#10;     * @throws NegativeArraySizeException if arrayLength is negative&#10;     * @throws InvalidClassException if the filter rejects creation&#10;     "
  ]
  node [
    id 730
    label "private Object readObject0(boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Underlying readObject implementation.&#10;     "
  ]
  node [
    id 731
    label "private Object checkResolve(Object obj) throws IOException"
    type "method"
    comment "&#10;     * If resolveObject has been enabled and given object does not have an&#10;     * exception associated with it, calls resolveObject to determine&#10;     * replacement for object, and updates handle table accordingly.  Returns&#10;     * replacement object, or echoes provided object if no replacement&#10;     * occurred.  Expects that passHandle is set to given object's handle prior&#10;     * to calling this method.&#10;     "
  ]
  node [
    id 732
    label " String readTypeString() throws IOException"
    type "method"
    comment "&#10;     * Reads string without allowing it to be replaced in stream.  Called from&#10;     * within ObjectStreamClass.read().&#10;     "
  ]
  node [
    id 733
    label "private Object readNull() throws IOException"
    type "method"
    comment "&#10;     * Reads in null code, sets passHandle to NULL_HANDLE and returns null.&#10;     "
  ]
  node [
    id 734
    label "private Object readHandle(boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Reads in object handle, sets passHandle to the read handle, and returns&#10;     * object associated with the handle.&#10;     "
  ]
  node [
    id 735
    label "private Class<?> readClass(boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Reads in and returns class object.  Sets passHandle to class object's&#10;     * assigned handle.  Returns null if class is unresolvable (in which case a&#10;     * ClassNotFoundException will be associated with the class' handle in the&#10;     * handle table).&#10;     "
  ]
  node [
    id 736
    label "private ObjectStreamClass readClassDesc(boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Reads in and returns (possibly null) class descriptor.  Sets passHandle&#10;     * to class descriptor's assigned handle.  If class descriptor cannot be&#10;     * resolved to a class in the local VM, a ClassNotFoundException is&#10;     * associated with the class descriptor's handle.&#10;     "
  ]
  node [
    id 737
    label "private ObjectStreamClass readProxyDesc(boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Reads in and returns class descriptor for a dynamic proxy class.  Sets&#10;     * passHandle to proxy class descriptor's assigned handle.  If proxy class&#10;     * descriptor cannot be resolved to a class in the local VM, a&#10;     * ClassNotFoundException is associated with the descriptor's handle.&#10;     "
  ]
  node [
    id 738
    label "private ObjectStreamClass readNonProxyDesc(boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Reads in and returns class descriptor for a class that is not a dynamic&#10;     * proxy class.  Sets passHandle to class descriptor's assigned handle.  If&#10;     * class descriptor cannot be resolved to a class in the local VM, a&#10;     * ClassNotFoundException is associated with the descriptor's handle.&#10;     "
  ]
  node [
    id 739
    label "private String readString(boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Reads in and returns new string.  Sets passHandle to new string's&#10;     * assigned handle.&#10;     "
  ]
  node [
    id 740
    label "private Object readArray(boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Reads in and returns array object, or null if array class is&#10;     * unresolvable.  Sets passHandle to array's assigned handle.&#10;     "
  ]
  node [
    id 741
    label "private Enum<?> readEnum(boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Reads in and returns enum constant, or null if enum type is&#10;     * unresolvable.  Sets passHandle to enum constant's assigned handle.&#10;     "
  ]
  node [
    id 742
    label "private Object readOrdinaryObject(boolean unshared) throws IOException"
    type "method"
    comment "&#10;     * Reads and returns &#34;ordinary&#34; (i.e., not a String, Class,&#10;     * ObjectStreamClass, array, or enum constant) object, or null if object's&#10;     * class is unresolvable (in which case a ClassNotFoundException will be&#10;     * associated with object's handle).  Sets passHandle to object's assigned&#10;     * handle.&#10;     "
  ]
  node [
    id 743
    label "private void readExternalData(Externalizable obj, ObjectStreamClass desc) throws IOException"
    type "method"
    comment "&#10;     * If obj is non-null, reads externalizable data by invoking readExternal()&#10;     * method of obj; otherwise, attempts to skip over externalizable data.&#10;     * Expects that passHandle is set to obj's handle before this method is&#10;     * called.&#10;     "
  ]
  node [
    id 744
    label "private Object readRecord(ObjectStreamClass desc) throws IOException"
    type "method"
    comment " Reads a record. "
  ]
  node [
    id 745
    label "private void readSerialData(Object obj, ObjectStreamClass desc) throws IOException"
    type "method"
    comment "&#10;     * Reads (or attempts to skip, if obj is null or is tagged with a&#10;     * ClassNotFoundException) instance data for each serializable class of&#10;     * object in stream, from superclass to subclass.  Expects that passHandle&#10;     * is set to obj's handle before this method is called.&#10;     "
  ]
  node [
    id 746
    label "private void skipCustomData() throws IOException"
    type "method"
    comment "&#10;     * Skips over all block data and objects until TC_ENDBLOCKDATA is&#10;     * encountered.&#10;     "
  ]
  node [
    id 747
    label "private void defaultReadFields(Object obj, ObjectStreamClass desc) throws IOException"
    type "method"
    comment "&#10;     * Reads in values of serializable fields declared by given class&#10;     * descriptor.  If obj is non-null, sets field values in obj.  Expects that&#10;     * passHandle is set to obj's handle before this method is called.&#10;     "
  ]
  node [
    id 748
    label "private IOException readFatalException() throws IOException"
    type "method"
    comment "&#10;     * Reads in and returns IOException that caused serialization to abort.&#10;     * All stream state is discarded prior to reading in fatal exception.  Sets&#10;     * passHandle to fatal exception's handle.&#10;     "
  ]
  node [
    id 749
    label "private void handleReset() throws StreamCorruptedException"
    type "method"
    comment "&#10;     * If recursion depth is 0, clears internal data structures; otherwise,&#10;     * throws a StreamCorruptedException.  This method is called when a&#10;     * TC_RESET typecode is encountered.&#10;     "
  ]
  node [
    id 750
    label "private static native void bytesToFloats(byte[] src, int srcpos, float[] dst, int dstpos, int nfloats)"
    type "method"
    comment " REMIND: remove once hotspot inlines Float.intBitsToFloat"
  ]
  node [
    id 751
    label "private static native void bytesToDoubles(byte[] src, int srcpos, double[] dst, int dstpos, int ndoubles)"
    type "method"
    comment " REMIND: remove once hotspot inlines Double.longBitsToDouble"
  ]
  node [
    id 752
    label "private static ClassLoader latestUserDefinedLoader()"
    type "method"
    comment "&#10;     * Returns the first non-null class loader (not counting class loaders of&#10;     * generated reflection implementation classes) up the execution stack, or&#10;     * null if only code from the null class loader is on the stack.  This&#10;     * method is also called via reflection by the following RMI-IIOP class:&#10;     *&#10;     *     com.sun.corba.se.internal.util.JDKClassLoader&#10;     *&#10;     * This method should not be removed or its signature changed without&#10;     * corresponding modifications to the above class.&#10;     "
  ]
  node [
    id 753
    label "private static Object cloneArray(Object array)"
    type "method"
    comment "&#10;     * Method for cloning arrays in case of using unsharing reading&#10;     "
  ]
  node [
    id 754
    label "private static int toLower(char c)"
    type "method"
    comment " US-ASCII only"
  ]
  node [
    id 755
    label "private static int toUpper(char c)"
    type "method"
    comment " US-ASCII only"
  ]
  node [
    id 756
    label "private static boolean equalIgnoringCase(String s, String t)"
    type "method"
    comment " US-ASCII only"
  ]
  node [
    id 757
    label "private static int hashIgnoringCase(int hash, String s)"
    type "method"
    comment " US-ASCII only"
  ]
  node [
    id 758
    label "private static int compareIgnoringCase(String s, String t)"
    type "method"
    comment " US-ASCII only"
  ]
  node [
    id 759
    label "private static String resolvePath(String base, String child, boolean absolute)"
    type "method"
    comment " RFC2396 5.2 (6)"
  ]
  node [
    id 760
    label "private static URI resolve(URI base, URI child)"
    type "method"
    comment " RFC2396 5.2"
  ]
  node [
    id 761
    label "private static void removeDots(char[] path, int[] segs, boolean removeLeading)"
    type "method"
    comment " private static void removeDots(char[] path, int[] segs) {"
  ]
  node [
    id 762
    label "private static long lowMask(String chars)"
    type "method"
    comment " Compute the low-order mask for the characters in the given string"
  ]
  node [
    id 763
    label "private static long highMask(String chars)"
    type "method"
    comment " Compute the high-order mask for the characters in the given string"
  ]
  node [
    id 764
    label "private static long lowMask(char first, char last)"
    type "method"
    comment " between first and last, inclusive"
  ]
  node [
    id 765
    label "private static long highMask(char first, char last)"
    type "method"
    comment " between first and last, inclusive"
  ]
  node [
    id 766
    label "private static boolean match(char c, long lowMask, long highMask)"
    type "method"
    comment " Tell whether the given character is permitted by the given mask pair"
  ]
  node [
    id 767
    label "public URLConnection openConnection() throws java.io.IOException"
    type "method"
    comment "&#10;     * Returns a {@link java.net.URLConnection URLConnection} instance that&#10;     * represents a connection to the remote object referred to by the&#10;     * {@code URL}.&#10;     *&#10;     * <P>A new instance of {@linkplain java.net.URLConnection URLConnection} is&#10;     * created every time when invoking the&#10;     * {@linkplain java.net.URLStreamHandler#openConnection(URL)&#10;     * URLStreamHandler.openConnection(URL)} method of the protocol handler for&#10;     * this URL.</P>&#10;     *&#10;     * <P>It should be noted that a URLConnection instance does not establish&#10;     * the actual network connection on creation. This will happen only when&#10;     * calling {@linkplain java.net.URLConnection#connect() URLConnection.connect()}.</P>&#10;     *&#10;     * <P>If for the URL's protocol (such as HTTP or JAR), there&#10;     * exists a public, specialized URLConnection subclass belonging&#10;     * to one of the following packages or one of their subpackages:&#10;     * java.lang, java.io, java.util, java.net, the connection&#10;     * returned will be of that subclass. For example, for HTTP an&#10;     * HttpURLConnection will be returned, and for JAR a&#10;     * JarURLConnection will be returned.</P>&#10;     *&#10;     * @return     a {@link java.net.URLConnection URLConnection} linking&#10;     *             to the URL.&#10;     * @exception  IOException  if an I/O exception occurs.&#10;     * @see        java.net.URL#URL(java.lang.String, java.lang.String,&#10;     *             int, java.lang.String)&#10;     "
  ]
  node [
    id 768
    label "java.net.URLConnection"
    type "class"
    comment "&#10; * The abstract class {@code URLConnection} is the superclass&#10; * of all classes that represent a communications link between the&#10; * application and a URL. Instances of this class can be used both to&#10; * read from and to write to the resource referenced by the URL. In&#10; * general, creating a connection to a URL is a multistep process:&#10; *&#10; * <center><table border=2 summary=&#34;Describes the process of creating a connection to a URL: openConnection() and connect() over time.&#34;>&#10; * <tr><th>{@code openConnection()}</th>&#10; *     <th>{@code connect()}</th></tr>&#10; * <tr><td>Manipulate parameters that affect the connection to the remote&#10; *         resource.</td>&#10; *     <td>Interact with the resource; query header fields and&#10; *         contents.</td></tr>&#10; * </table>&#10; * ----------------------------&#38;gt;&#10; * <br>time</center>&#10; *&#10; * <ol>&#10; * <li>The connection object is created by invoking the&#10; *     {@code openConnection} method on a URL.&#10; * <li>The setup parameters and general request properties are manipulated.&#10; * <li>The actual connection to the remote object is made, using the&#10; *    {@code connect} method.&#10; * <li>The remote object becomes available. The header fields and the contents&#10; *     of the remote object can be accessed.&#10; * </ol>&#10; * <p>&#10; * The setup parameters are modified using the following methods:&#10; * <ul>&#10; *   <li>{@code setAllowUserInteraction}&#10; *   <li>{@code setDoInput}&#10; *   <li>{@code setDoOutput}&#10; *   <li>{@code setIfModifiedSince}&#10; *   <li>{@code setUseCaches}&#10; * </ul>&#10; * <p>&#10; * and the general request properties are modified using the method:&#10; * <ul>&#10; *   <li>{@code setRequestProperty}&#10; * </ul>&#10; * <p>&#10; * Default values for the {@code AllowUserInteraction} and&#10; * {@code UseCaches} parameters can be set using the methods&#10; * {@code setDefaultAllowUserInteraction} and&#10; * {@code setDefaultUseCaches}.&#10; * <p>&#10; * Each of the above {@code set} methods has a corresponding&#10; * {@code get} method to retrieve the value of the parameter or&#10; * general request property. The specific parameters and general&#10; * request properties that are applicable are protocol specific.&#10; * <p>&#10; * The following methods are used to access the header fields and&#10; * the contents after the connection is made to the remote object:&#10; * <ul>&#10; *   <li>{@code getContent}&#10; *   <li>{@code getHeaderField}&#10; *   <li>{@code getInputStream}&#10; *   <li>{@code getOutputStream}&#10; * </ul>&#10; * <p>&#10; * Certain header fields are accessed frequently. The methods:&#10; * <ul>&#10; *   <li>{@code getContentEncoding}&#10; *   <li>{@code getContentLength}&#10; *   <li>{@code getContentType}&#10; *   <li>{@code getDate}&#10; *   <li>{@code getExpiration}&#10; *   <li>{@code getLastModifed}&#10; * </ul>&#10; * <p>&#10; * provide convenient access to these fields. The&#10; * {@code getContentType} method is used by the&#10; * {@code getContent} method to determine the type of the remote&#10; * object; subclasses may find it convenient to override the&#10; * {@code getContentType} method.&#10; * <p>&#10; * In the common case, all of the pre-connection parameters and&#10; * general request properties can be ignored: the pre-connection&#10; * parameters and request properties default to sensible values. For&#10; * most clients of this interface, there are only two interesting&#10; * methods: {@code getInputStream} and {@code getContent},&#10; * which are mirrored in the {@code URL} class by convenience methods.&#10; * <p>&#10; * More information on the request properties and header fields of&#10; * an {@code http} connection can be found at:&#10; * <blockquote><pre>&#10; * <a href=&#34;http://www.ietf.org/rfc/rfc2616.txt&#34;>http://www.ietf.org/rfc/rfc2616.txt</a>&#10; * </pre></blockquote>&#10; *&#10; * Invoking the {@code close()} methods on the {@code InputStream} or {@code OutputStream} of an&#10; * {@code URLConnection} after a request may free network resources associated with this&#10; * instance, unless particular protocol specifications specify different behaviours&#10; * for it.&#10; *&#10; * @author  James Gosling&#10; * @see     java.net.URL#openConnection()&#10; * @see     java.net.URLConnection#connect()&#10; * @see     java.net.URLConnection#getContent()&#10; * @see     java.net.URLConnection#getContentEncoding()&#10; * @see     java.net.URLConnection#getContentLength()&#10; * @see     java.net.URLConnection#getContentType()&#10; * @see     java.net.URLConnection#getDate()&#10; * @see     java.net.URLConnection#getExpiration()&#10; * @see     java.net.URLConnection#getHeaderField(int)&#10; * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10; * @see     java.net.URLConnection#getInputStream()&#10; * @see     java.net.URLConnection#getLastModified()&#10; * @see     java.net.URLConnection#getOutputStream()&#10; * @see     java.net.URLConnection#setAllowUserInteraction(boolean)&#10; * @see     java.net.URLConnection#setDefaultUseCaches(boolean)&#10; * @see     java.net.URLConnection#setDoInput(boolean)&#10; * @see     java.net.URLConnection#setDoOutput(boolean)&#10; * @see     java.net.URLConnection#setIfModifiedSince(long)&#10; * @see     java.net.URLConnection#setRequestProperty(java.lang.String, java.lang.String)&#10; * @see     java.net.URLConnection#setUseCaches(boolean)&#10; * @since   JDK1.0&#10; "
  ]
  node [
    id 769
    label "public static synchronized FileNameMap getFileNameMap()"
    type "method"
    comment "&#10;     * Returns a {@link FileNameMap} implementation suitable for guessing a&#10;     * content type based on a URL's &#34;file&#34; component.&#10;     *&#10;     * @see #guessContentTypeFromName(String)&#10;     * @see #setFileNameMap(java.net.FileNameMap)&#10;     *&#10;     "
  ]
  node [
    id 770
    label "FileNameMap"
  ]
  node [
    id 771
    label "public static void setFileNameMap(FileNameMap map)"
    type "method"
    comment "&#10;     * Sets the FileNameMap.&#10;     * <p>&#10;     * If there is a security manager, this method first calls&#10;     * the security manager's {@code checkSetFactory} method&#10;     * to ensure the operation is allowed.&#10;     * This could result in a SecurityException.&#10;     *&#10;     * @param map the FileNameMap to be set&#10;     * @exception  SecurityException  if a security manager exists and its&#10;     *             {@code checkSetFactory} method doesn't allow the operation.&#10;     * @see        SecurityManager#checkSetFactory&#10;     * @see #getFileNameMap()&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 772
    label "public abstract void connect() throws IOException"
    type "method"
    comment "&#10;     * Opens a communications link to the resource referenced by this&#10;     * URL, if such a connection has not already been established.&#10;     * <p>&#10;     * If the {@code connect} method is called when the connection&#10;     * has already been opened (indicated by the {@code connected}&#10;     * field having the value {@code true}), the call is ignored.&#10;     * <p>&#10;     * URLConnection objects go through two phases: first they are&#10;     * created, then they are connected.  After being created, and&#10;     * before being connected, various options can be specified&#10;     * (e.g., doInput and UseCaches).  After connecting, it is an&#10;     * error to try to set them.  Operations that depend on being&#10;     * connected, like getContentLength, will implicitly perform the&#10;     * connection, if necessary.&#10;     *&#10;     * @throws SocketTimeoutException if the timeout expires before&#10;     *               the connection can be established&#10;     * @exception  IOException  if an I/O error occurs while opening the&#10;     *               connection.&#10;     * @see java.net.URLConnection#connected&#10;     * @see #getConnectTimeout()&#10;     * @see #setConnectTimeout(int)&#10;     "
  ]
  node [
    id 773
    label "public void setConnectTimeout(int timeout)"
    type "method"
    comment "&#10;     * Sets a specified timeout value, in milliseconds, to be used&#10;     * when opening a communications link to the resource referenced&#10;     * by this URLConnection.  If the timeout expires before the&#10;     * connection can be established, a&#10;     * java.net.SocketTimeoutException is raised. A timeout of zero is&#10;     * interpreted as an infinite timeout.&#10;&#10;     * <p> Some non-standard implementation of this method may ignore&#10;     * the specified timeout. To see the connect timeout set, please&#10;     * call getConnectTimeout().&#10;     *&#10;     * <p><strong>Warning</strong>: If the hostname resolves to multiple IP&#10;     * addresses, Android's default implementation of {@link HttpURLConnection}&#10;     * will try each in&#10;     * <a href=&#34;http://www.ietf.org/rfc/rfc3484.txt&#34;>RFC 3484</a> order. If&#10;     * connecting to each of these addresses fails, multiple timeouts will&#10;     * elapse before the connect attempt throws an exception. Host names&#10;     * that support both IPv6 and IPv4 always have at least 2 IP addresses.&#10;     *&#10;     * @param timeout an {@code int} that specifies the connect&#10;     *               timeout value in milliseconds&#10;     * @throws IllegalArgumentException if the timeout parameter is negative&#10;     *&#10;     * @see #getConnectTimeout()&#10;     * @see #connect()&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 774
    label "HttpURLConnection"
  ]
  node [
    id 775
    label "public int getConnectTimeout()"
    type "method"
    comment "&#10;     * Returns setting for connect timeout.&#10;     * <p>&#10;     * 0 return implies that the option is disabled&#10;     * (i.e., timeout of infinity).&#10;     *&#10;     * @return an {@code int} that indicates the connect timeout&#10;     *         value in milliseconds&#10;     * @see #setConnectTimeout(int)&#10;     * @see #connect()&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 776
    label "public void setReadTimeout(int timeout)"
    type "method"
    comment "&#10;     * Sets the read timeout to a specified timeout, in&#10;     * milliseconds. A non-zero value specifies the timeout when&#10;     * reading from Input stream when a connection is established to a&#10;     * resource. If the timeout expires before there is data available&#10;     * for read, a java.net.SocketTimeoutException is raised. A&#10;     * timeout of zero is interpreted as an infinite timeout.&#10;     *&#10;     *<p> Some non-standard implementation of this method ignores the&#10;     * specified timeout. To see the read timeout set, please call&#10;     * getReadTimeout().&#10;     *&#10;     * @param timeout an {@code int} that specifies the timeout&#10;     * value to be used in milliseconds&#10;     * @throws IllegalArgumentException if the timeout parameter is negative&#10;     *&#10;     * @see #getReadTimeout()&#10;     * @see InputStream#read()&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 777
    label "public int getReadTimeout()"
    type "method"
    comment "&#10;     * Returns setting for read timeout. 0 return implies that the&#10;     * option is disabled (i.e., timeout of infinity).&#10;     *&#10;     * @return an {@code int} that indicates the read timeout&#10;     *         value in milliseconds&#10;     *&#10;     * @see #setReadTimeout(int)&#10;     * @see InputStream#read()&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 778
    label "public URL getURL()"
    type "method"
    comment "&#10;     * Returns the value of this {@code URLConnection}'s {@code URL}&#10;     * field.&#10;     *&#10;     * @return  the value of this {@code URLConnection}'s {@code URL}&#10;     *          field.&#10;     * @see     java.net.URLConnection#url&#10;     "
  ]
  node [
    id 779
    label "public int getContentLength()"
    type "method"
    comment "&#10;     * Returns the value of the {@code content-length} header field.&#10;     * <P>&#10;     * <B>Note</B>: {@link #getContentLengthLong() getContentLengthLong()}&#10;     * should be preferred over this method, since it returns a {@code long}&#10;     * instead and is therefore more portable.</P>&#10;     *&#10;     * @return  the content length of the resource that this connection's URL&#10;     *          references, {@code -1} if the content length is not known,&#10;     *          or if the content length is greater than Integer.MAX_VALUE.&#10;     "
  ]
  node [
    id 780
    label "getContentLengthLong()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 781
    label "public long getContentLengthLong()"
    type "method"
    comment "&#10;     * Returns the value of the {@code content-length} header field as a&#10;     * long.&#10;     *&#10;     * @return  the content length of the resource that this connection's URL&#10;     *          references, or {@code -1} if the content length is&#10;     *          not known.&#10;     * @since 7.0&#10;     "
  ]
  node [
    id 782
    label "public String getContentType()"
    type "method"
    comment "&#10;     * Returns the value of the {@code content-type} header field.&#10;     *&#10;     * @return  the content type of the resource that the URL references,&#10;     *          or {@code null} if not known.&#10;     * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10;     "
  ]
  node [
    id 783
    label "public String getContentEncoding()"
    type "method"
    comment "&#10;     * Returns the value of the {@code content-encoding} header field.&#10;     *&#10;     * @return  the content encoding of the resource that the URL references,&#10;     *          or {@code null} if not known.&#10;     * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10;     "
  ]
  node [
    id 784
    label "public long getExpiration()"
    type "method"
    comment "&#10;     * Returns the value of the {@code expires} header field.&#10;     *&#10;     * @return  the expiration date of the resource that this URL references,&#10;     *          or 0 if not known. The value is the number of milliseconds since&#10;     *          January 1, 1970 GMT.&#10;     * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10;     "
  ]
  node [
    id 785
    label "public long getDate()"
    type "method"
    comment "&#10;     * Returns the value of the {@code date} header field.&#10;     *&#10;     * @return  the sending date of the resource that the URL references,&#10;     *          or {@code 0} if not known. The value returned is the&#10;     *          number of milliseconds since January 1, 1970 GMT.&#10;     * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10;     "
  ]
  node [
    id 786
    label "public long getLastModified()"
    type "method"
    comment "&#10;     * Returns the value of the {@code last-modified} header field.&#10;     * The result is the number of milliseconds since January 1, 1970 GMT.&#10;     *&#10;     * @return  the date the resource referenced by this&#10;     *          {@code URLConnection} was last modified, or 0 if not known.&#10;     * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10;     "
  ]
  node [
    id 787
    label "public String getHeaderField(String name)"
    type "method"
    comment "&#10;     * Returns the value of the named header field.&#10;     * <p>&#10;     * If called on a connection that sets the same header multiple times&#10;     * with possibly different values, only the last value is returned.&#10;     *&#10;     *&#10;     * @param   name   the name of a header field.&#10;     * @return  the value of the named header field, or {@code null}&#10;     *          if there is no such field in the header.&#10;     "
  ]
  node [
    id 788
    label "public Map<String, List<String>> getHeaderFields()"
    type "method"
    comment "&#10;     * Returns an unmodifiable Map of the header fields.&#10;     * The Map keys are Strings that represent the&#10;     * response-header field names. Each Map value is an&#10;     * unmodifiable List of Strings that represents&#10;     * the corresponding field values.&#10;     *&#10;     * @return a Map of header fields&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 789
    label "public int getHeaderFieldInt(String name, int Default)"
    type "method"
    comment "&#10;     * Returns the value of the named field parsed as a number.&#10;     * <p>&#10;     * This form of {@code getHeaderField} exists because some&#10;     * connection types (e.g., {@code http-ng}) have pre-parsed&#10;     * headers. Classes for that connection type can override this method&#10;     * and short-circuit the parsing.&#10;     *&#10;     * @param   name      the name of the header field.&#10;     * @param   Default   the default value.&#10;     * @return  the value of the named field, parsed as an integer. The&#10;     *          {@code Default} value is returned if the field is&#10;     *          missing or malformed.&#10;     "
  ]
  node [
    id 790
    label "public long getHeaderFieldLong(String name, long Default)"
    type "method"
    comment "&#10;     * Returns the value of the named field parsed as a number.&#10;     * <p>&#10;     * This form of {@code getHeaderField} exists because some&#10;     * connection types (e.g., {@code http-ng}) have pre-parsed&#10;     * headers. Classes for that connection type can override this method&#10;     * and short-circuit the parsing.&#10;     *&#10;     * @param   name      the name of the header field.&#10;     * @param   Default   the default value.&#10;     * @return  the value of the named field, parsed as a long. The&#10;     *          {@code Default} value is returned if the field is&#10;     *          missing or malformed.&#10;     * @since 7.0&#10;     "
  ]
  node [
    id 791
    label "public long getHeaderFieldDate(String name, long Default)"
    type "method"
    comment "&#10;     * Returns the value of the named field parsed as date.&#10;     * The result is the number of milliseconds since January 1, 1970 GMT&#10;     * represented by the named field.&#10;     * <p>&#10;     * This form of {@code getHeaderField} exists because some&#10;     * connection types (e.g., {@code http-ng}) have pre-parsed&#10;     * headers. Classes for that connection type can override this method&#10;     * and short-circuit the parsing.&#10;     *&#10;     * @param   name     the name of the header field.&#10;     * @param   Default   a default value.&#10;     * @return  the value of the field, parsed as a date. The value of the&#10;     *          {@code Default} argument is returned if the field is&#10;     *          missing or malformed.&#10;     "
  ]
  node [
    id 792
    label "public String getHeaderFieldKey(int n)"
    type "method"
    comment "&#10;     * Returns the key for the {@code n}<sup>th</sup> header field.&#10;     * It returns {@code null} if there are fewer than {@code n+1} fields.&#10;     *&#10;     * @param   n   an index, where {@code n>=0}&#10;     * @return  the key for the {@code n}<sup>th</sup> header field,&#10;     *          or {@code null} if there are fewer than {@code n+1}&#10;     *          fields.&#10;     "
  ]
  node [
    id 793
    label "public String getHeaderField(int n)"
    type "method"
    comment "&#10;     * Returns the value for the {@code n}<sup>th</sup> header field.&#10;     * It returns {@code null} if there are fewer than&#10;     * {@code n+1}fields.&#10;     * <p>&#10;     * This method can be used in conjunction with the&#10;     * {@link #getHeaderFieldKey(int) getHeaderFieldKey} method to iterate through all&#10;     * the headers in the message.&#10;     *&#10;     * @param   n   an index, where {@code n>=0}&#10;     * @return  the value of the {@code n}<sup>th</sup> header field&#10;     *          or {@code null} if there are fewer than {@code n+1} fields&#10;     * @see     java.net.URLConnection#getHeaderFieldKey(int)&#10;     "
  ]
  node [
    id 794
    label "getHeaderFieldKey(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 795
    label "public Object getContent() throws IOException"
    type "method"
    comment "&#10;     * Retrieves the contents of this URL connection.&#10;     * <p>&#10;     * This method first determines the content type of the object by&#10;     * calling the {@code getContentType} method. If this is&#10;     * the first time that the application has seen that specific content&#10;     * type, a content handler for that content type is created:&#10;     * <ol>&#10;     * <li>If the application has set up a content handler factory instance&#10;     *     using the {@code setContentHandlerFactory} method, the&#10;     *     {@code createContentHandler} method of that instance is called&#10;     *     with the content type as an argument; the result is a content&#10;     *     handler for that content type.&#10;     * <li>If no content handler factory has yet been set up, or if the&#10;     *     factory's {@code createContentHandler} method returns&#10;     *     {@code null}, then the application loads the class named:&#10;     *     <blockquote><pre>&#10;     *         sun.net.www.content.&#38;lt;<i>contentType</i>&#38;gt;&#10;     *     </pre></blockquote>&#10;     *     where &#38;lt;<i>contentType</i>&#38;gt; is formed by taking the&#10;     *     content-type string, replacing all slash characters with a&#10;     *     {@code period} ('.'), and all other non-alphanumeric characters&#10;     *     with the underscore character '{@code _}'. The alphanumeric&#10;     *     characters are specifically the 26 uppercase ASCII letters&#10;     *     '{@code A}' through '{@code Z}', the 26 lowercase ASCII&#10;     *     letters '{@code a}' through '{@code z}', and the 10 ASCII&#10;     *     digits '{@code 0}' through '{@code 9}'. If the specified&#10;     *     class does not exist, or is not a subclass of&#10;     *     {@code ContentHandler}, then an&#10;     *     {@code UnknownServiceException} is thrown.&#10;     * </ol>&#10;     *&#10;     * @return     the object fetched. The {@code instanceof} operator&#10;     *               should be used to determine the specific kind of object&#10;     *               returned.&#10;     * @exception  IOException              if an I/O error occurs while&#10;     *               getting the content.&#10;     * @exception  UnknownServiceException  if the protocol does not support&#10;     *               the content type.&#10;     * @see        java.net.ContentHandlerFactory#createContentHandler(java.lang.String)&#10;     * @see        java.net.URLConnection#getContentType()&#10;     * @see        java.net.URLConnection#setContentHandlerFactory(java.net.ContentHandlerFactory)&#10;     "
  ]
  node [
    id 796
    label "public Object getContent(Class[] classes) throws IOException"
    type "method"
    comment "&#10;     * Retrieves the contents of this URL connection.&#10;     *&#10;     * @param classes the {@code Class} array&#10;     * indicating the requested types&#10;     * @return     the object fetched that is the first match of the type&#10;     *               specified in the classes array. null if none of&#10;     *               the requested types are supported.&#10;     *               The {@code instanceof} operator should be used to&#10;     *               determine the specific kind of object returned.&#10;     * @exception  IOException              if an I/O error occurs while&#10;     *               getting the content.&#10;     * @exception  UnknownServiceException  if the protocol does not support&#10;     *               the content type.&#10;     * @see        java.net.URLConnection#getContent()&#10;     * @see        java.net.ContentHandlerFactory#createContentHandler(java.lang.String)&#10;     * @see        java.net.URLConnection#getContent(java.lang.Class[])&#10;     * @see        java.net.URLConnection#setContentHandlerFactory(java.net.ContentHandlerFactory)&#10;     * @since 1.3&#10;     "
  ]
  node [
    id 797
    label "public Permission getPermission() throws IOException"
    type "method"
    comment "&#10;     * Returns a permission object representing the permission&#10;     * necessary to make the connection represented by this&#10;     * object. This method returns null if no permission is&#10;     * required to make the connection. By default, this method&#10;     * returns {@code java.security.AllPermission}. Subclasses&#10;     * should override this method and return the permission&#10;     * that best represents the permission required to make a&#10;     * a connection to the URL. For example, a {@code URLConnection}&#10;     * representing a {@code file:} URL would return a&#10;     * {@code java.io.FilePermission} object.&#10;     *&#10;     * <p>The permission returned may dependent upon the state of the&#10;     * connection. For example, the permission before connecting may be&#10;     * different from that after connecting. For example, an HTTP&#10;     * sever, say foo.com, may redirect the connection to a different&#10;     * host, say bar.com. Before connecting the permission returned by&#10;     * the connection will represent the permission needed to connect&#10;     * to foo.com, while the permission returned after connecting will&#10;     * be to bar.com.&#10;     *&#10;     * <p>Permissions are generally used for two purposes: to protect&#10;     * caches of objects obtained through URLConnections, and to check&#10;     * the right of a recipient to learn about a particular URL. In&#10;     * the first case, the permission should be obtained&#10;     * <em>after</em> the object has been obtained. For example, in an&#10;     * HTTP connection, this will represent the permission to connect&#10;     * to the host from which the data was ultimately fetched. In the&#10;     * second case, the permission should be obtained and tested&#10;     * <em>before</em> connecting.&#10;     *&#10;     * @return the permission object representing the permission&#10;     * necessary to make the connection represented by this&#10;     * URLConnection.&#10;     *&#10;     * @exception IOException if the computation of the permission&#10;     * requires network or file I/O and an exception occurs while&#10;     * computing it.&#10;     "
  ]
  node [
    id 798
    label "public InputStream getInputStream() throws IOException"
    type "method"
    comment "&#10;     * Returns an input stream that reads from this open connection.&#10;     *&#10;     * A SocketTimeoutException can be thrown when reading from the&#10;     * returned input stream if the read timeout expires before data&#10;     * is available for read.&#10;     *&#10;     * @return     an input stream that reads from this open connection.&#10;     * @exception  IOException              if an I/O error occurs while&#10;     *               creating the input stream.&#10;     * @exception  UnknownServiceException  if the protocol does not support&#10;     *               input.&#10;     * @see #setReadTimeout(int)&#10;     * @see #getReadTimeout()&#10;     "
  ]
  node [
    id 799
    label "public OutputStream getOutputStream() throws IOException"
    type "method"
    comment "&#10;     * Returns an output stream that writes to this connection.&#10;     *&#10;     * @return     an output stream that writes to this connection.&#10;     * @exception  IOException              if an I/O error occurs while&#10;     *               creating the output stream.&#10;     * @exception  UnknownServiceException  if the protocol does not support&#10;     *               output.&#10;     "
  ]
  node [
    id 800
    label "public void setDoInput(boolean doinput)"
    type "method"
    comment "&#10;     * Sets the value of the {@code doInput} field for this&#10;     * {@code URLConnection} to the specified value.&#10;     * <p>&#10;     * A URL connection can be used for input and/or output.  Set the DoInput&#10;     * flag to true if you intend to use the URL connection for input,&#10;     * false if not.  The default is true.&#10;     *&#10;     * @param   doinput   the new value.&#10;     * @throws IllegalStateException if already connected&#10;     * @see     java.net.URLConnection#doInput&#10;     * @see #getDoInput()&#10;     "
  ]
  node [
    id 801
    label "public boolean getDoInput()"
    type "method"
    comment "&#10;     * Returns the value of this {@code URLConnection}'s&#10;     * {@code doInput} flag.&#10;     *&#10;     * @return  the value of this {@code URLConnection}'s&#10;     *          {@code doInput} flag.&#10;     * @see     #setDoInput(boolean)&#10;     "
  ]
  node [
    id 802
    label "public void setDoOutput(boolean dooutput)"
    type "method"
    comment "&#10;     * Sets the value of the {@code doOutput} field for this&#10;     * {@code URLConnection} to the specified value.&#10;     * <p>&#10;     * A URL connection can be used for input and/or output.  Set the DoOutput&#10;     * flag to true if you intend to use the URL connection for output,&#10;     * false if not.  The default is false.&#10;     *&#10;     * @param   dooutput   the new value.&#10;     * @throws IllegalStateException if already connected&#10;     * @see #getDoOutput()&#10;     "
  ]
  node [
    id 803
    label "public boolean getDoOutput()"
    type "method"
    comment "&#10;     * Returns the value of this {@code URLConnection}'s&#10;     * {@code doOutput} flag.&#10;     *&#10;     * @return  the value of this {@code URLConnection}'s&#10;     *          {@code doOutput} flag.&#10;     * @see     #setDoOutput(boolean)&#10;     "
  ]
  node [
    id 804
    label "public void setAllowUserInteraction(boolean allowuserinteraction)"
    type "method"
    comment "&#10;     * Set the value of the {@code allowUserInteraction} field of&#10;     * this {@code URLConnection}.&#10;     *&#10;     * @param   allowuserinteraction   the new value.&#10;     * @throws IllegalStateException if already connected&#10;     * @see     #getAllowUserInteraction()&#10;     "
  ]
  node [
    id 805
    label "public boolean getAllowUserInteraction()"
    type "method"
    comment "&#10;     * Returns the value of the {@code allowUserInteraction} field for&#10;     * this object.&#10;     *&#10;     * @return  the value of the {@code allowUserInteraction} field for&#10;     *          this object.&#10;     * @see     #setAllowUserInteraction(boolean)&#10;     "
  ]
  node [
    id 806
    label "public static void setDefaultAllowUserInteraction(boolean defaultallowuserinteraction)"
    type "method"
    comment "&#10;     * Sets the default value of the&#10;     * {@code allowUserInteraction} field for all future&#10;     * {@code URLConnection} objects to the specified value.&#10;     *&#10;     * @param   defaultallowuserinteraction   the new value.&#10;     * @see     #getDefaultAllowUserInteraction()&#10;     "
  ]
  node [
    id 807
    label "public static boolean getDefaultAllowUserInteraction()"
    type "method"
    comment "&#10;     * Returns the default value of the {@code allowUserInteraction}&#10;     * field.&#10;     * <p>&#10;     * Ths default is &#34;sticky&#34;, being a part of the static state of all&#10;     * URLConnections.  This flag applies to the next, and all following&#10;     * URLConnections that are created.&#10;     *&#10;     * @return  the default value of the {@code allowUserInteraction}&#10;     *          field.&#10;     * @see     #setDefaultAllowUserInteraction(boolean)&#10;     "
  ]
  node [
    id 808
    label "public void setUseCaches(boolean usecaches)"
    type "method"
    comment "&#10;     * Sets the value of the {@code useCaches} field of this&#10;     * {@code URLConnection} to the specified value.&#10;     * <p>&#10;     * Some protocols do caching of documents.  Occasionally, it is important&#10;     * to be able to &#34;tunnel through&#34; and ignore the caches (e.g., the&#10;     * &#34;reload&#34; button in a browser).  If the UseCaches flag on a connection&#10;     * is true, the connection is allowed to use whatever caches it can.&#10;     *  If false, caches are to be ignored.&#10;     *  The default value comes from DefaultUseCaches, which defaults to&#10;     * true.&#10;     *&#10;     * @param usecaches a {@code boolean} indicating whether&#10;     * or not to allow caching&#10;     * @throws IllegalStateException if already connected&#10;     * @see #getUseCaches()&#10;     "
  ]
  node [
    id 809
    label "public boolean getUseCaches()"
    type "method"
    comment "&#10;     * Returns the value of this {@code URLConnection}'s&#10;     * {@code useCaches} field.&#10;     *&#10;     * @return  the value of this {@code URLConnection}'s&#10;     *          {@code useCaches} field.&#10;     * @see #setUseCaches(boolean)&#10;     "
  ]
  node [
    id 810
    label "public void setIfModifiedSince(long ifmodifiedsince)"
    type "method"
    comment "&#10;     * Sets the value of the {@code ifModifiedSince} field of&#10;     * this {@code URLConnection} to the specified value.&#10;     *&#10;     * @param   ifmodifiedsince   the new value.&#10;     * @throws IllegalStateException if already connected&#10;     * @see     #getIfModifiedSince()&#10;     "
  ]
  node [
    id 811
    label "public long getIfModifiedSince()"
    type "method"
    comment "&#10;     * Returns the value of this object's {@code ifModifiedSince} field.&#10;     *&#10;     * @return  the value of this object's {@code ifModifiedSince} field.&#10;     * @see #setIfModifiedSince(long)&#10;     "
  ]
  node [
    id 812
    label "public boolean getDefaultUseCaches()"
    type "method"
    comment "&#10;     * Returns the default value of a {@code URLConnection}'s&#10;     * {@code useCaches} flag.&#10;     * <p>&#10;     * Ths default is &#34;sticky&#34;, being a part of the static state of all&#10;     * URLConnections.  This flag applies to the next, and all following&#10;     * URLConnections that are created.&#10;     *&#10;     * @return  the default value of a {@code URLConnection}'s&#10;     *          {@code useCaches} flag.&#10;     * @see     #setDefaultUseCaches(boolean)&#10;     "
  ]
  node [
    id 813
    label "public void setDefaultUseCaches(boolean defaultusecaches)"
    type "method"
    comment "&#10;     * Sets the default value of the {@code useCaches} field to the&#10;     * specified value.&#10;     *&#10;     * @param   defaultusecaches   the new value.&#10;     * @see     #getDefaultUseCaches()&#10;     "
  ]
  node [
    id 814
    label "public void setRequestProperty(String key, String value)"
    type "method"
    comment "&#10;     * Sets the general request property. If a property with the key already&#10;     * exists, overwrite its value with the new value.&#10;     *&#10;     * <p> NOTE: HTTP requires all request properties which can&#10;     * legally have multiple instances with the same key&#10;     * to use a comma-separated list syntax which enables multiple&#10;     * properties to be appended into a single property.&#10;     *&#10;     * @param   key     the keyword by which the request is known&#10;     *                  (e.g., &#34;{@code Accept}&#34;).&#10;     * @param   value   the value associated with it.&#10;     * @throws IllegalStateException if already connected&#10;     * @throws NullPointerException if key is <CODE>null</CODE>&#10;     * @see #getRequestProperty(java.lang.String)&#10;     "
  ]
  node [
    id 815
    label "public void addRequestProperty(String key, String value)"
    type "method"
    comment "&#10;     * Adds a general request property specified by a&#10;     * key-value pair.  This method will not overwrite&#10;     * existing values associated with the same key.&#10;     *&#10;     * @param   key     the keyword by which the request is known&#10;     *                  (e.g., &#34;{@code Accept}&#34;).&#10;     * @param   value  the value associated with it.&#10;     * @throws IllegalStateException if already connected&#10;     * @throws NullPointerException if key is null&#10;     * @see #getRequestProperties()&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 816
    label "public String getRequestProperty(String key)"
    type "method"
    comment "&#10;     * Returns the value of the named general request property for this&#10;     * connection.&#10;     *&#10;     * @param key the keyword by which the request is known (e.g., &#34;Accept&#34;).&#10;     * @return  the value of the named general request property for this&#10;     *           connection. If key is null, then null is returned.&#10;     * @throws IllegalStateException if already connected&#10;     * @see #setRequestProperty(java.lang.String, java.lang.String)&#10;     "
  ]
  node [
    id 817
    label "public Map<String, List<String>> getRequestProperties()"
    type "method"
    comment "&#10;     * Returns an unmodifiable Map of general request&#10;     * properties for this connection. The Map keys&#10;     * are Strings that represent the request-header&#10;     * field names. Each Map value is a unmodifiable List&#10;     * of Strings that represents the corresponding&#10;     * field values.&#10;     *&#10;     * @return  a Map of the general request properties for this connection.&#10;     * @throws IllegalStateException if already connected&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 818
    label "public static synchronized void setContentHandlerFactory(ContentHandlerFactory fac)"
    type "method"
    comment "&#10;     * Sets the {@code ContentHandlerFactory} of an&#10;     * application. It can be called at most once by an application.&#10;     * <p>&#10;     * The {@code ContentHandlerFactory} instance is used to&#10;     * construct a content handler from a content type&#10;     * <p>&#10;     * If there is a security manager, this method first calls&#10;     * the security manager's {@code checkSetFactory} method&#10;     * to ensure the operation is allowed.&#10;     * This could result in a SecurityException.&#10;     *&#10;     * @param      fac   the desired factory.&#10;     * @exception  Error  if the factory has already been defined.&#10;     * @exception  SecurityException  if a security manager exists and its&#10;     *             {@code checkSetFactory} method doesn't allow the operation.&#10;     * @see        java.net.ContentHandlerFactory&#10;     * @see        java.net.URLConnection#getContent()&#10;     * @see        SecurityManager#checkSetFactory&#10;     "
  ]
  node [
    id 819
    label " synchronized ContentHandler getContentHandler() throws IOException"
    type "method"
    comment "&#10;     * Gets the Content Handler appropriate for this connection.&#10;     "
  ]
  node [
    id 820
    label "private String stripOffParameters(String contentType)"
    type "method"
    comment "&#10;     * Media types are in the format: type/subtype*(; parameter).&#10;     * For looking up the content handler, we should ignore those&#10;     * parameters.&#10;     "
  ]
  node [
    id 821
    label "private ContentHandler lookupContentHandlerClassFor(String contentType) throws InstantiationException, IllegalAccessException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Looks for a content handler in a user-defineable set of places.&#10;     * By default it looks in sun.net.www.content, but users can define a&#10;     * vertical-bar delimited set of class prefixes to search through in&#10;     * addition by defining the java.content.handler.pkgs property.&#10;     * The class name must be of the form:&#10;     * <pre>&#10;     *     {package-prefix}.{major}.{minor}&#10;     * e.g.&#10;     *     YoyoDyne.experimental.text.plain&#10;     * </pre>&#10;     "
  ]
  node [
    id 822
    label "private String typeToPackageName(String contentType)"
    type "method"
    comment "&#10;     * Utility function to map a MIME content type into an equivalent&#10;     * pair of class name components.  For example: &#34;text/html&#34; would&#10;     * be returned as &#34;text.html&#34;&#10;     "
  ]
  node [
    id 823
    label "private String getContentHandlerPkgPrefixes()"
    type "method"
    comment "&#10;     * Returns a vertical bar separated list of package prefixes for potential&#10;     * content handlers.  Tries to get the java.content.handler.pkgs property&#10;     * to use as a set of package prefixes to search.  Whether or not&#10;     * that property has been defined, the sun.net.www.content is always&#10;     * the last one on the returned package list.&#10;     "
  ]
  node [
    id 824
    label "public static String guessContentTypeFromName(String fname)"
    type "method"
    comment "&#10;     * Tries to determine the content type of an object, based&#10;     * on the specified &#34;file&#34; component of a URL.&#10;     * This is a convenience method that can be used by&#10;     * subclasses that override the {@code getContentType} method.&#10;     *&#10;     * @param   fname   a filename.&#10;     * @return  a guess as to what the content type of the object is,&#10;     *          based upon its file name.&#10;     * @see     java.net.URLConnection#getContentType()&#10;     "
  ]
  node [
    id 825
    label "public static String guessContentTypeFromStream(InputStream is) throws IOException"
    type "method"
    comment "&#10;     * Tries to determine the type of an input stream based on the&#10;     * characters at the beginning of the input stream. This method can&#10;     * be used by subclasses that override the&#10;     * {@code getContentType} method.&#10;     * <p>&#10;     * Ideally, this routine would not be needed. But many&#10;     * {@code http} servers return the incorrect content type; in&#10;     * addition, there are many nonstandard extensions. Direct inspection&#10;     * of the bytes to determine the content type is often more accurate&#10;     * than believing the content type claimed by the {@code http} server.&#10;     *&#10;     * @param      is   an input stream that supports marks.&#10;     * @return     a guess at the content type, or {@code null} if none&#10;     *             can be determined.&#10;     * @exception  IOException  if an I/O error occurs while reading the&#10;     *               input stream.&#10;     * @see        java.io.InputStream#mark(int)&#10;     * @see        java.io.InputStream#markSupported()&#10;     * @see        java.net.URLConnection#getContentType()&#10;     "
  ]
  node [
    id 826
    label "private static boolean checkfpx(InputStream is) throws IOException"
    type "method"
    comment "&#10;     * Check for FlashPix image data in InputStream is.  Return true if&#10;     * the stream has FlashPix data, false otherwise.  Before calling this&#10;     * method, the stream should have already been checked to be sure it&#10;     * contains Microsoft Structured Storage data.&#10;     "
  ]
  node [
    id 827
    label "private static int readBytes(int[] c, int len, InputStream is) throws IOException"
    type "method"
    comment "&#10;     * Tries to read the specified number of bytes from the stream&#10;     * Returns -1, If EOF is reached before len bytes are read, returns 0&#10;     * otherwise&#10;     "
  ]
  node [
    id 828
    label "private static long skipForward(InputStream is, long toSkip) throws IOException"
    type "method"
    comment "&#10;     * Skips through the specified number of bytes from the stream&#10;     * until either EOF is reached, or the specified&#10;     * number of bytes have been skipped&#10;     "
  ]
  node [
    id 829
    label "public URLConnection openConnection(Proxy proxy) throws java.io.IOException"
    type "method"
    comment "&#10;     * Same as {@link #openConnection()}, except that the connection will be&#10;     * made through the specified proxy; Protocol handlers that do not&#10;     * support proxing will ignore the proxy parameter and make a&#10;     * normal connection.&#10;     *&#10;     * Invoking this method preempts the system's default ProxySelector&#10;     * settings.&#10;     *&#10;     * @param      proxy the Proxy through which this connection&#10;     *             will be made. If direct connection is desired,&#10;     *             Proxy.NO_PROXY should be specified.&#10;     * @return     a {@code URLConnection} to the URL.&#10;     * @exception  IOException  if an I/O exception occurs.&#10;     * @exception  SecurityException if a security manager is present&#10;     *             and the caller doesn't have permission to connect&#10;     *             to the proxy.&#10;     * @exception  IllegalArgumentException will be thrown if proxy is null,&#10;     *             or proxy has the wrong type&#10;     * @exception  UnsupportedOperationException if the subclass that&#10;     *             implements the protocol handler doesn't support&#10;     *             this method.&#10;     * @see        java.net.URL#URL(java.lang.String, java.lang.String,&#10;     *             int, java.lang.String)&#10;     * @see        java.net.URLConnection&#10;     * @see        java.net.URLStreamHandler#openConnection(java.net.URL,&#10;     *             java.net.Proxy)&#10;     * @since      1.5&#10;     "
  ]
  node [
    id 830
    label "openConnection()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 831
    label "public final InputStream openStream() throws java.io.IOException"
    type "method"
    comment "&#10;     * Opens a connection to this {@code URL} and returns an&#10;     * {@code InputStream} for reading from that connection. This&#10;     * method is a shorthand for:&#10;     * <blockquote><pre>&#10;     *     openConnection().getInputStream()&#10;     * </pre></blockquote>&#10;     *&#10;     * @return     an input stream for reading from the URL connection.&#10;     * @exception  IOException  if an I/O exception occurs.&#10;     * @see        java.net.URL#openConnection()&#10;     * @see        java.net.URLConnection#getInputStream()&#10;     "
  ]
  node [
    id 832
    label "public final Object getContent() throws java.io.IOException"
    type "method"
    comment "&#10;     * Gets the contents of this URL. This method is a shorthand for:&#10;     * <blockquote><pre>&#10;     *     openConnection().getContent()&#10;     * </pre></blockquote>&#10;     *&#10;     * @return     the contents of this URL.&#10;     * @exception  IOException  if an I/O exception occurs.&#10;     * @see        java.net.URLConnection#getContent()&#10;     "
  ]
  node [
    id 833
    label "public final Object getContent(Class[] classes) throws java.io.IOException"
    type "method"
    comment "&#10;     * Gets the contents of this URL. This method is a shorthand for:&#10;     * <blockquote><pre>&#10;     *     openConnection().getContent(Class[])&#10;     * </pre></blockquote>&#10;     *&#10;     * @param classes an array of Java types&#10;     * @return     the content object of this URL that is the first match of&#10;     *               the types specified in the classes array.&#10;     *               null if none of the requested types are supported.&#10;     * @exception  IOException  if an I/O exception occurs.&#10;     * @see        java.net.URLConnection#getContent(Class[])&#10;     * @since 1.3&#10;     "
  ]
  node [
    id 834
    label "public static void setURLStreamHandlerFactory(URLStreamHandlerFactory fac)"
    type "method"
    comment "&#10;     * Sets an application's {@code URLStreamHandlerFactory}.&#10;     * This method can be called at most once in a given Java Virtual&#10;     * Machine.&#10;     *&#10;     *<p> The {@code URLStreamHandlerFactory} instance is used to&#10;     *construct a stream protocol handler from a protocol name.&#10;     *&#10;     * <p> If there is a security manager, this method first calls&#10;     * the security manager's {@code checkSetFactory} method&#10;     * to ensure the operation is allowed.&#10;     * This could result in a SecurityException.&#10;     *&#10;     * @param      fac   the desired factory.&#10;     * @exception  Error  if the application has already set a factory.&#10;     * @exception  SecurityException  if a security manager exists and its&#10;     *             {@code checkSetFactory} method doesn't allow&#10;     *             the operation.&#10;     * @see        java.net.URL#URL(java.lang.String, java.lang.String,&#10;     *             int, java.lang.String)&#10;     * @see        java.net.URLStreamHandlerFactory&#10;     * @see        SecurityManager#checkSetFactory&#10;     "
  ]
  node [
    id 835
    label " static URLStreamHandler getURLStreamHandler(String protocol)"
    type "method"
    comment "&#10;     * Returns the Stream Handler.&#10;     * @param protocol the protocol to use&#10;     "
  ]
  node [
    id 836
    label "private static URLStreamHandler createBuiltinHandler(String protocol) throws ClassNotFoundException, InstantiationException, IllegalAccessException"
    type "method"
    comment "&#10;     * Returns an instance of the built-in handler for the given protocol, or null if none exists.&#10;     "
  ]
  node [
    id 837
    label "private static Set<String> createBuiltinHandlerClassNames()"
    type "method"
    comment " Names of implementation classes returned by {@link #createBuiltinHandler(String)}. "
  ]
  node [
    id 838
    label "createBuiltinHandler(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 839
    label "private synchronized void writeObject(java.io.ObjectOutputStream s) throws IOException"
    type "method"
    comment "&#10;     * WriteObject is called to save the state of the URL to an&#10;     * ObjectOutputStream. The handler is not saved since it is&#10;     * specific to this system.&#10;     *&#10;     * @serialData the default write object value. When read back in,&#10;     * the reader must ensure that calling getURLStreamHandler with&#10;     * the protocol variable returns a valid URLStreamHandler and&#10;     * throw an IOException if it does not.&#10;     "
  ]
  node [
    id 840
    label "private synchronized void readObject(java.io.ObjectInputStream s) throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * readObject is called to restore the state of the URL from the&#10;     * stream.  It reads the components of the URL and finds the local&#10;     * stream handler.&#10;     "
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
    target 15
    type "child"
  ]
  edge [
    source 0
    target 71
    type "child"
  ]
  edge [
    source 0
    target 72
    type "child"
  ]
  edge [
    source 0
    target 73
    type "child"
  ]
  edge [
    source 0
    target 74
    type "child"
  ]
  edge [
    source 0
    target 75
    type "child"
  ]
  edge [
    source 0
    target 767
    type "child"
  ]
  edge [
    source 0
    target 829
    type "child"
  ]
  edge [
    source 0
    target 831
    type "child"
  ]
  edge [
    source 0
    target 832
    type "child"
  ]
  edge [
    source 0
    target 833
    type "child"
  ]
  edge [
    source 0
    target 834
    type "child"
  ]
  edge [
    source 0
    target 835
    type "child"
  ]
  edge [
    source 0
    target 836
    type "child"
  ]
  edge [
    source 0
    target 837
    type "child"
  ]
  edge [
    source 0
    target 839
    type "child"
  ]
  edge [
    source 0
    target 840
    type "child"
  ]
  edge [
    source 5
    target 103
    type "link"
  ]
  edge [
    source 6
    target 101
    type "link"
  ]
  edge [
    source 7
    target 99
    type "link"
  ]
  edge [
    source 8
    target 97
    type "link"
  ]
  edge [
    source 15
    target 16
    type "link"
  ]
  edge [
    source 15
    target 70
    type "link"
  ]
  edge [
    source 15
    target 36
    type "link"
  ]
  edge [
    source 16
    target 17
    type "child"
  ]
  edge [
    source 16
    target 18
    type "child"
  ]
  edge [
    source 16
    target 19
    type "child"
  ]
  edge [
    source 16
    target 20
    type "child"
  ]
  edge [
    source 16
    target 21
    type "child"
  ]
  edge [
    source 16
    target 23
    type "child"
  ]
  edge [
    source 16
    target 25
    type "child"
  ]
  edge [
    source 16
    target 26
    type "child"
  ]
  edge [
    source 16
    target 28
    type "child"
  ]
  edge [
    source 16
    target 29
    type "child"
  ]
  edge [
    source 16
    target 31
    type "child"
  ]
  edge [
    source 16
    target 33
    type "child"
  ]
  edge [
    source 16
    target 34
    type "child"
  ]
  edge [
    source 16
    target 35
    type "child"
  ]
  edge [
    source 16
    target 37
    type "child"
  ]
  edge [
    source 16
    target 38
    type "child"
  ]
  edge [
    source 16
    target 39
    type "child"
  ]
  edge [
    source 16
    target 40
    type "child"
  ]
  edge [
    source 16
    target 41
    type "child"
  ]
  edge [
    source 16
    target 42
    type "child"
  ]
  edge [
    source 16
    target 43
    type "child"
  ]
  edge [
    source 16
    target 44
    type "child"
  ]
  edge [
    source 16
    target 46
    type "child"
  ]
  edge [
    source 16
    target 47
    type "child"
  ]
  edge [
    source 16
    target 48
    type "child"
  ]
  edge [
    source 16
    target 50
    type "child"
  ]
  edge [
    source 16
    target 51
    type "child"
  ]
  edge [
    source 16
    target 52
    type "child"
  ]
  edge [
    source 16
    target 53
    type "child"
  ]
  edge [
    source 16
    target 54
    type "child"
  ]
  edge [
    source 16
    target 55
    type "child"
  ]
  edge [
    source 16
    target 56
    type "child"
  ]
  edge [
    source 16
    target 57
    type "child"
  ]
  edge [
    source 16
    target 58
    type "child"
  ]
  edge [
    source 16
    target 59
    type "child"
  ]
  edge [
    source 16
    target 60
    type "child"
  ]
  edge [
    source 16
    target 61
    type "child"
  ]
  edge [
    source 16
    target 63
    type "child"
  ]
  edge [
    source 16
    target 69
    type "child"
  ]
  edge [
    source 21
    target 22
    type "link"
  ]
  edge [
    source 23
    target 24
    type "link"
  ]
  edge [
    source 26
    target 27
    type "link"
  ]
  edge [
    source 29
    target 30
    type "link"
  ]
  edge [
    source 31
    target 32
    type "link"
  ]
  edge [
    source 33
    target 30
    type "link"
  ]
  edge [
    source 35
    target 36
    type "link"
  ]
  edge [
    source 44
    target 45
    type "link"
  ]
  edge [
    source 45
    target 37
    type "child"
  ]
  edge [
    source 45
    target 38
    type "child"
  ]
  edge [
    source 45
    target 40
    type "child"
  ]
  edge [
    source 45
    target 41
    type "child"
  ]
  edge [
    source 45
    target 42
    type "child"
  ]
  edge [
    source 45
    target 43
    type "child"
  ]
  edge [
    source 45
    target 39
    type "child"
  ]
  edge [
    source 45
    target 44
    type "child"
  ]
  edge [
    source 45
    target 46
    type "child"
  ]
  edge [
    source 45
    target 47
    type "child"
  ]
  edge [
    source 45
    target 48
    type "child"
  ]
  edge [
    source 46
    target 45
    type "link"
  ]
  edge [
    source 47
    target 49
    type "link"
  ]
  edge [
    source 47
    target 45
    type "link"
  ]
  edge [
    source 48
    target 45
    type "link"
  ]
  edge [
    source 61
    target 62
    type "link"
  ]
  edge [
    source 63
    target 64
    type "link"
  ]
  edge [
    source 63
    target 65
    type "link"
  ]
  edge [
    source 63
    target 66
    type "link"
  ]
  edge [
    source 63
    target 67
    type "link"
  ]
  edge [
    source 63
    target 68
    type "link"
  ]
  edge [
    source 75
    target 76
    type "link"
  ]
  edge [
    source 76
    target 77
    type "child"
  ]
  edge [
    source 76
    target 81
    type "child"
  ]
  edge [
    source 76
    target 82
    type "child"
  ]
  edge [
    source 76
    target 83
    type "child"
  ]
  edge [
    source 76
    target 85
    type "child"
  ]
  edge [
    source 76
    target 88
    type "child"
  ]
  edge [
    source 76
    target 89
    type "child"
  ]
  edge [
    source 76
    target 90
    type "child"
  ]
  edge [
    source 76
    target 91
    type "child"
  ]
  edge [
    source 76
    target 92
    type "child"
  ]
  edge [
    source 76
    target 93
    type "child"
  ]
  edge [
    source 76
    target 94
    type "child"
  ]
  edge [
    source 76
    target 96
    type "child"
  ]
  edge [
    source 76
    target 8
    type "child"
  ]
  edge [
    source 76
    target 98
    type "child"
  ]
  edge [
    source 76
    target 7
    type "child"
  ]
  edge [
    source 76
    target 12
    type "child"
  ]
  edge [
    source 76
    target 9
    type "child"
  ]
  edge [
    source 76
    target 100
    type "child"
  ]
  edge [
    source 76
    target 6
    type "child"
  ]
  edge [
    source 76
    target 102
    type "child"
  ]
  edge [
    source 76
    target 5
    type "child"
  ]
  edge [
    source 76
    target 104
    type "child"
  ]
  edge [
    source 76
    target 105
    type "child"
  ]
  edge [
    source 76
    target 107
    type "child"
  ]
  edge [
    source 76
    target 111
    type "child"
  ]
  edge [
    source 76
    target 124
    type "child"
  ]
  edge [
    source 76
    target 73
    type "child"
  ]
  edge [
    source 76
    target 637
    type "child"
  ]
  edge [
    source 76
    target 639
    type "child"
  ]
  edge [
    source 76
    target 696
    type "child"
  ]
  edge [
    source 76
    target 754
    type "child"
  ]
  edge [
    source 76
    target 755
    type "child"
  ]
  edge [
    source 76
    target 756
    type "child"
  ]
  edge [
    source 76
    target 757
    type "child"
  ]
  edge [
    source 76
    target 758
    type "child"
  ]
  edge [
    source 76
    target 759
    type "child"
  ]
  edge [
    source 76
    target 760
    type "child"
  ]
  edge [
    source 76
    target 761
    type "child"
  ]
  edge [
    source 76
    target 762
    type "child"
  ]
  edge [
    source 76
    target 763
    type "child"
  ]
  edge [
    source 76
    target 764
    type "child"
  ]
  edge [
    source 76
    target 765
    type "child"
  ]
  edge [
    source 76
    target 766
    type "child"
  ]
  edge [
    source 77
    target 78
    type "link"
  ]
  edge [
    source 77
    target 79
    type "link"
  ]
  edge [
    source 77
    target 80
    type "link"
  ]
  edge [
    source 83
    target 84
    type "link"
  ]
  edge [
    source 85
    target 86
    type "link"
  ]
  edge [
    source 85
    target 87
    type "link"
  ]
  edge [
    source 94
    target 95
    type "link"
  ]
  edge [
    source 105
    target 106
    type "link"
  ]
  edge [
    source 107
    target 108
    type "link"
  ]
  edge [
    source 109
    target 110
    type "child"
  ]
  edge [
    source 109
    target 111
    type "child"
  ]
  edge [
    source 109
    target 113
    type "child"
  ]
  edge [
    source 109
    target 114
    type "child"
  ]
  edge [
    source 109
    target 15
    type "child"
  ]
  edge [
    source 109
    target 115
    type "child"
  ]
  edge [
    source 109
    target 116
    type "child"
  ]
  edge [
    source 109
    target 73
    type "child"
  ]
  edge [
    source 109
    target 117
    type "child"
  ]
  edge [
    source 109
    target 118
    type "child"
  ]
  edge [
    source 109
    target 119
    type "child"
  ]
  edge [
    source 109
    target 120
    type "child"
  ]
  edge [
    source 109
    target 121
    type "child"
  ]
  edge [
    source 109
    target 123
    type "child"
  ]
  edge [
    source 111
    target 108
    type "link"
  ]
  edge [
    source 111
    target 112
    type "link"
  ]
  edge [
    source 111
    target 109
    type "link"
  ]
  edge [
    source 121
    target 122
    type "link"
  ]
  edge [
    source 124
    target 125
    type "link"
  ]
  edge [
    source 124
    target 634
    type "link"
  ]
  edge [
    source 126
    target 127
    type "child"
  ]
  edge [
    source 126
    target 128
    type "child"
  ]
  edge [
    source 126
    target 130
    type "child"
  ]
  edge [
    source 126
    target 131
    type "child"
  ]
  edge [
    source 126
    target 132
    type "child"
  ]
  edge [
    source 126
    target 133
    type "child"
  ]
  edge [
    source 126
    target 134
    type "child"
  ]
  edge [
    source 126
    target 135
    type "child"
  ]
  edge [
    source 126
    target 136
    type "child"
  ]
  edge [
    source 126
    target 137
    type "child"
  ]
  edge [
    source 126
    target 138
    type "child"
  ]
  edge [
    source 126
    target 303
    type "child"
  ]
  edge [
    source 126
    target 304
    type "child"
  ]
  edge [
    source 126
    target 305
    type "child"
  ]
  edge [
    source 126
    target 322
    type "child"
  ]
  edge [
    source 126
    target 323
    type "child"
  ]
  edge [
    source 126
    target 324
    type "child"
  ]
  edge [
    source 126
    target 325
    type "child"
  ]
  edge [
    source 126
    target 326
    type "child"
  ]
  edge [
    source 126
    target 327
    type "child"
  ]
  edge [
    source 126
    target 328
    type "child"
  ]
  edge [
    source 126
    target 329
    type "child"
  ]
  edge [
    source 126
    target 330
    type "child"
  ]
  edge [
    source 126
    target 331
    type "child"
  ]
  edge [
    source 126
    target 111
    type "child"
  ]
  edge [
    source 126
    target 332
    type "child"
  ]
  edge [
    source 126
    target 333
    type "child"
  ]
  edge [
    source 126
    target 334
    type "child"
  ]
  edge [
    source 126
    target 335
    type "child"
  ]
  edge [
    source 126
    target 336
    type "child"
  ]
  edge [
    source 126
    target 337
    type "child"
  ]
  edge [
    source 126
    target 338
    type "child"
  ]
  edge [
    source 126
    target 339
    type "child"
  ]
  edge [
    source 126
    target 340
    type "child"
  ]
  edge [
    source 126
    target 341
    type "child"
  ]
  edge [
    source 126
    target 342
    type "child"
  ]
  edge [
    source 126
    target 343
    type "child"
  ]
  edge [
    source 126
    target 344
    type "child"
  ]
  edge [
    source 126
    target 345
    type "child"
  ]
  edge [
    source 126
    target 346
    type "child"
  ]
  edge [
    source 126
    target 347
    type "child"
  ]
  edge [
    source 126
    target 348
    type "child"
  ]
  edge [
    source 126
    target 349
    type "child"
  ]
  edge [
    source 126
    target 350
    type "child"
  ]
  edge [
    source 126
    target 352
    type "child"
  ]
  edge [
    source 126
    target 353
    type "child"
  ]
  edge [
    source 126
    target 354
    type "child"
  ]
  edge [
    source 126
    target 355
    type "child"
  ]
  edge [
    source 126
    target 379
    type "child"
  ]
  edge [
    source 126
    target 380
    type "child"
  ]
  edge [
    source 126
    target 445
    type "child"
  ]
  edge [
    source 126
    target 446
    type "child"
  ]
  edge [
    source 126
    target 447
    type "child"
  ]
  edge [
    source 126
    target 448
    type "child"
  ]
  edge [
    source 126
    target 450
    type "child"
  ]
  edge [
    source 126
    target 451
    type "child"
  ]
  edge [
    source 126
    target 452
    type "child"
  ]
  edge [
    source 126
    target 587
    type "child"
  ]
  edge [
    source 126
    target 588
    type "child"
  ]
  edge [
    source 126
    target 589
    type "child"
  ]
  edge [
    source 126
    target 590
    type "child"
  ]
  edge [
    source 126
    target 591
    type "child"
  ]
  edge [
    source 126
    target 592
    type "child"
  ]
  edge [
    source 126
    target 593
    type "child"
  ]
  edge [
    source 126
    target 594
    type "child"
  ]
  edge [
    source 126
    target 595
    type "child"
  ]
  edge [
    source 126
    target 596
    type "child"
  ]
  edge [
    source 126
    target 598
    type "child"
  ]
  edge [
    source 126
    target 600
    type "child"
  ]
  edge [
    source 126
    target 601
    type "child"
  ]
  edge [
    source 126
    target 73
    type "child"
  ]
  edge [
    source 126
    target 602
    type "child"
  ]
  edge [
    source 126
    target 603
    type "child"
  ]
  edge [
    source 126
    target 604
    type "child"
  ]
  edge [
    source 126
    target 605
    type "child"
  ]
  edge [
    source 126
    target 608
    type "child"
  ]
  edge [
    source 126
    target 609
    type "child"
  ]
  edge [
    source 126
    target 610
    type "child"
  ]
  edge [
    source 126
    target 611
    type "child"
  ]
  edge [
    source 126
    target 612
    type "child"
  ]
  edge [
    source 126
    target 613
    type "child"
  ]
  edge [
    source 126
    target 615
    type "child"
  ]
  edge [
    source 126
    target 616
    type "child"
  ]
  edge [
    source 126
    target 617
    type "child"
  ]
  edge [
    source 126
    target 618
    type "child"
  ]
  edge [
    source 126
    target 619
    type "child"
  ]
  edge [
    source 126
    target 620
    type "child"
  ]
  edge [
    source 126
    target 621
    type "child"
  ]
  edge [
    source 126
    target 622
    type "child"
  ]
  edge [
    source 126
    target 623
    type "child"
  ]
  edge [
    source 126
    target 624
    type "child"
  ]
  edge [
    source 126
    target 625
    type "child"
  ]
  edge [
    source 126
    target 626
    type "child"
  ]
  edge [
    source 126
    target 627
    type "child"
  ]
  edge [
    source 126
    target 629
    type "child"
  ]
  edge [
    source 126
    target 630
    type "child"
  ]
  edge [
    source 126
    target 631
    type "child"
  ]
  edge [
    source 126
    target 632
    type "child"
  ]
  edge [
    source 126
    target 633
    type "child"
  ]
  edge [
    source 128
    target 129
    type "link"
  ]
  edge [
    source 131
    target 129
    type "link"
  ]
  edge [
    source 132
    target 129
    type "link"
  ]
  edge [
    source 138
    target 139
    type "link"
  ]
  edge [
    source 139
    target 140
    type "child"
  ]
  edge [
    source 139
    target 141
    type "child"
  ]
  edge [
    source 139
    target 142
    type "child"
  ]
  edge [
    source 139
    target 146
    type "child"
  ]
  edge [
    source 139
    target 147
    type "child"
  ]
  edge [
    source 139
    target 148
    type "child"
  ]
  edge [
    source 139
    target 149
    type "child"
  ]
  edge [
    source 139
    target 151
    type "child"
  ]
  edge [
    source 139
    target 152
    type "child"
  ]
  edge [
    source 139
    target 153
    type "child"
  ]
  edge [
    source 139
    target 155
    type "child"
  ]
  edge [
    source 139
    target 156
    type "child"
  ]
  edge [
    source 139
    target 157
    type "child"
  ]
  edge [
    source 139
    target 158
    type "child"
  ]
  edge [
    source 139
    target 289
    type "child"
  ]
  edge [
    source 139
    target 293
    type "child"
  ]
  edge [
    source 139
    target 294
    type "child"
  ]
  edge [
    source 139
    target 296
    type "child"
  ]
  edge [
    source 139
    target 297
    type "child"
  ]
  edge [
    source 139
    target 299
    type "child"
  ]
  edge [
    source 139
    target 300
    type "child"
  ]
  edge [
    source 139
    target 302
    type "child"
  ]
  edge [
    source 142
    target 143
    type "link"
  ]
  edge [
    source 142
    target 144
    type "link"
  ]
  edge [
    source 142
    target 145
    type "link"
  ]
  edge [
    source 149
    target 150
    type "link"
  ]
  edge [
    source 153
    target 154
    type "link"
  ]
  edge [
    source 158
    target 159
    type "link"
  ]
  edge [
    source 158
    target 160
    type "link"
  ]
  edge [
    source 158
    target 161
    type "link"
  ]
  edge [
    source 158
    target 162
    type "link"
  ]
  edge [
    source 158
    target 163
    type "link"
  ]
  edge [
    source 158
    target 129
    type "link"
  ]
  edge [
    source 158
    target 287
    type "link"
  ]
  edge [
    source 158
    target 288
    type "link"
  ]
  edge [
    source 164
    target 165
    type "child"
  ]
  edge [
    source 164
    target 166
    type "child"
  ]
  edge [
    source 164
    target 167
    type "child"
  ]
  edge [
    source 164
    target 168
    type "child"
  ]
  edge [
    source 164
    target 169
    type "child"
  ]
  edge [
    source 164
    target 170
    type "child"
  ]
  edge [
    source 164
    target 171
    type "child"
  ]
  edge [
    source 164
    target 172
    type "child"
  ]
  edge [
    source 164
    target 173
    type "child"
  ]
  edge [
    source 164
    target 174
    type "child"
  ]
  edge [
    source 164
    target 175
    type "child"
  ]
  edge [
    source 164
    target 176
    type "child"
  ]
  edge [
    source 164
    target 177
    type "child"
  ]
  edge [
    source 164
    target 215
    type "child"
  ]
  edge [
    source 164
    target 273
    type "child"
  ]
  edge [
    source 164
    target 274
    type "child"
  ]
  edge [
    source 164
    target 275
    type "child"
  ]
  edge [
    source 164
    target 276
    type "child"
  ]
  edge [
    source 164
    target 277
    type "child"
  ]
  edge [
    source 164
    target 278
    type "child"
  ]
  edge [
    source 164
    target 217
    type "child"
  ]
  edge [
    source 164
    target 279
    type "child"
  ]
  edge [
    source 164
    target 280
    type "child"
  ]
  edge [
    source 164
    target 281
    type "child"
  ]
  edge [
    source 164
    target 282
    type "child"
  ]
  edge [
    source 164
    target 283
    type "child"
  ]
  edge [
    source 164
    target 284
    type "child"
  ]
  edge [
    source 164
    target 285
    type "child"
  ]
  edge [
    source 177
    target 178
    type "link"
  ]
  edge [
    source 179
    target 180
    type "child"
  ]
  edge [
    source 179
    target 183
    type "child"
  ]
  edge [
    source 179
    target 186
    type "child"
  ]
  edge [
    source 179
    target 187
    type "child"
  ]
  edge [
    source 179
    target 188
    type "child"
  ]
  edge [
    source 179
    target 189
    type "child"
  ]
  edge [
    source 179
    target 191
    type "child"
  ]
  edge [
    source 179
    target 192
    type "child"
  ]
  edge [
    source 179
    target 194
    type "child"
  ]
  edge [
    source 179
    target 195
    type "child"
  ]
  edge [
    source 179
    target 196
    type "child"
  ]
  edge [
    source 179
    target 197
    type "child"
  ]
  edge [
    source 179
    target 198
    type "child"
  ]
  edge [
    source 179
    target 200
    type "child"
  ]
  edge [
    source 179
    target 201
    type "child"
  ]
  edge [
    source 179
    target 202
    type "child"
  ]
  edge [
    source 179
    target 203
    type "child"
  ]
  edge [
    source 179
    target 205
    type "child"
  ]
  edge [
    source 179
    target 206
    type "child"
  ]
  edge [
    source 179
    target 207
    type "child"
  ]
  edge [
    source 179
    target 208
    type "child"
  ]
  edge [
    source 179
    target 209
    type "child"
  ]
  edge [
    source 179
    target 210
    type "child"
  ]
  edge [
    source 179
    target 213
    type "child"
  ]
  edge [
    source 179
    target 214
    type "child"
  ]
  edge [
    source 179
    target 169
    type "child"
  ]
  edge [
    source 179
    target 172
    type "child"
  ]
  edge [
    source 179
    target 174
    type "child"
  ]
  edge [
    source 179
    target 175
    type "child"
  ]
  edge [
    source 179
    target 176
    type "child"
  ]
  edge [
    source 179
    target 177
    type "child"
  ]
  edge [
    source 179
    target 215
    type "child"
  ]
  edge [
    source 179
    target 216
    type "child"
  ]
  edge [
    source 179
    target 217
    type "child"
  ]
  edge [
    source 179
    target 73
    type "child"
  ]
  edge [
    source 179
    target 111
    type "child"
  ]
  edge [
    source 179
    target 107
    type "child"
  ]
  edge [
    source 179
    target 218
    type "child"
  ]
  edge [
    source 179
    target 220
    type "child"
  ]
  edge [
    source 179
    target 223
    type "child"
  ]
  edge [
    source 179
    target 225
    type "child"
  ]
  edge [
    source 179
    target 227
    type "child"
  ]
  edge [
    source 179
    target 228
    type "child"
  ]
  edge [
    source 179
    target 229
    type "child"
  ]
  edge [
    source 179
    target 230
    type "child"
  ]
  edge [
    source 179
    target 231
    type "child"
  ]
  edge [
    source 179
    target 232
    type "child"
  ]
  edge [
    source 179
    target 233
    type "child"
  ]
  edge [
    source 179
    target 234
    type "child"
  ]
  edge [
    source 179
    target 235
    type "child"
  ]
  edge [
    source 179
    target 236
    type "child"
  ]
  edge [
    source 179
    target 237
    type "child"
  ]
  edge [
    source 179
    target 238
    type "child"
  ]
  edge [
    source 179
    target 239
    type "child"
  ]
  edge [
    source 179
    target 240
    type "child"
  ]
  edge [
    source 179
    target 241
    type "child"
  ]
  edge [
    source 179
    target 242
    type "child"
  ]
  edge [
    source 179
    target 243
    type "child"
  ]
  edge [
    source 179
    target 244
    type "child"
  ]
  edge [
    source 179
    target 245
    type "child"
  ]
  edge [
    source 179
    target 246
    type "child"
  ]
  edge [
    source 179
    target 247
    type "child"
  ]
  edge [
    source 179
    target 248
    type "child"
  ]
  edge [
    source 179
    target 249
    type "child"
  ]
  edge [
    source 179
    target 250
    type "child"
  ]
  edge [
    source 179
    target 251
    type "child"
  ]
  edge [
    source 179
    target 252
    type "child"
  ]
  edge [
    source 179
    target 253
    type "child"
  ]
  edge [
    source 179
    target 254
    type "child"
  ]
  edge [
    source 179
    target 255
    type "child"
  ]
  edge [
    source 179
    target 256
    type "child"
  ]
  edge [
    source 179
    target 257
    type "child"
  ]
  edge [
    source 179
    target 258
    type "child"
  ]
  edge [
    source 179
    target 259
    type "child"
  ]
  edge [
    source 179
    target 260
    type "child"
  ]
  edge [
    source 179
    target 261
    type "child"
  ]
  edge [
    source 179
    target 262
    type "child"
  ]
  edge [
    source 179
    target 263
    type "child"
  ]
  edge [
    source 179
    target 264
    type "child"
  ]
  edge [
    source 179
    target 265
    type "child"
  ]
  edge [
    source 179
    target 266
    type "child"
  ]
  edge [
    source 179
    target 267
    type "child"
  ]
  edge [
    source 179
    target 268
    type "child"
  ]
  edge [
    source 179
    target 269
    type "child"
  ]
  edge [
    source 179
    target 270
    type "child"
  ]
  edge [
    source 179
    target 271
    type "child"
  ]
  edge [
    source 179
    target 272
    type "child"
  ]
  edge [
    source 180
    target 181
    type "link"
  ]
  edge [
    source 180
    target 182
    type "link"
  ]
  edge [
    source 183
    target 184
    type "link"
  ]
  edge [
    source 183
    target 185
    type "link"
  ]
  edge [
    source 183
    target 181
    type "link"
  ]
  edge [
    source 186
    target 184
    type "link"
  ]
  edge [
    source 186
    target 185
    type "link"
  ]
  edge [
    source 186
    target 181
    type "link"
  ]
  edge [
    source 187
    target 184
    type "link"
  ]
  edge [
    source 187
    target 185
    type "link"
  ]
  edge [
    source 187
    target 181
    type "link"
  ]
  edge [
    source 188
    target 181
    type "link"
  ]
  edge [
    source 189
    target 190
    type "link"
  ]
  edge [
    source 189
    target 181
    type "link"
  ]
  edge [
    source 191
    target 181
    type "link"
  ]
  edge [
    source 192
    target 193
    type "link"
  ]
  edge [
    source 192
    target 181
    type "link"
  ]
  edge [
    source 198
    target 199
    type "link"
  ]
  edge [
    source 203
    target 204
    type "link"
  ]
  edge [
    source 206
    target 204
    type "link"
  ]
  edge [
    source 210
    target 211
    type "link"
  ]
  edge [
    source 210
    target 212
    type "link"
  ]
  edge [
    source 213
    target 182
    type "link"
  ]
  edge [
    source 214
    target 182
    type "link"
  ]
  edge [
    source 218
    target 219
    type "link"
  ]
  edge [
    source 220
    target 221
    type "link"
  ]
  edge [
    source 220
    target 222
    type "link"
  ]
  edge [
    source 223
    target 224
    type "link"
  ]
  edge [
    source 225
    target 226
    type "link"
  ]
  edge [
    source 225
    target 181
    type "link"
  ]
  edge [
    source 228
    target 181
    type "link"
  ]
  edge [
    source 276
    target 211
    type "link"
  ]
  edge [
    source 276
    target 212
    type "link"
  ]
  edge [
    source 277
    target 182
    type "link"
  ]
  edge [
    source 278
    target 182
    type "link"
  ]
  edge [
    source 280
    target 190
    type "link"
  ]
  edge [
    source 283
    target 199
    type "link"
  ]
  edge [
    source 284
    target 204
    type "link"
  ]
  edge [
    source 285
    target 286
    type "link"
  ]
  edge [
    source 289
    target 290
    type "link"
  ]
  edge [
    source 289
    target 160
    type "link"
  ]
  edge [
    source 289
    target 291
    type "link"
  ]
  edge [
    source 289
    target 162
    type "link"
  ]
  edge [
    source 289
    target 163
    type "link"
  ]
  edge [
    source 289
    target 292
    type "link"
  ]
  edge [
    source 293
    target 160
    type "link"
  ]
  edge [
    source 293
    target 162
    type "link"
  ]
  edge [
    source 294
    target 295
    type "link"
  ]
  edge [
    source 297
    target 298
    type "link"
  ]
  edge [
    source 297
    target 162
    type "link"
  ]
  edge [
    source 297
    target 163
    type "link"
  ]
  edge [
    source 297
    target 288
    type "link"
  ]
  edge [
    source 299
    target 287
    type "link"
  ]
  edge [
    source 300
    target 301
    type "link"
  ]
  edge [
    source 303
    target 139
    type "link"
  ]
  edge [
    source 304
    target 139
    type "link"
  ]
  edge [
    source 305
    target 306
    type "link"
  ]
  edge [
    source 306
    target 307
    type "child"
  ]
  edge [
    source 306
    target 308
    type "child"
  ]
  edge [
    source 306
    target 309
    type "child"
  ]
  edge [
    source 306
    target 310
    type "child"
  ]
  edge [
    source 306
    target 311
    type "child"
  ]
  edge [
    source 306
    target 312
    type "child"
  ]
  edge [
    source 306
    target 313
    type "child"
  ]
  edge [
    source 306
    target 314
    type "child"
  ]
  edge [
    source 306
    target 315
    type "child"
  ]
  edge [
    source 306
    target 316
    type "child"
  ]
  edge [
    source 306
    target 317
    type "child"
  ]
  edge [
    source 306
    target 318
    type "child"
  ]
  edge [
    source 306
    target 319
    type "child"
  ]
  edge [
    source 306
    target 320
    type "child"
  ]
  edge [
    source 306
    target 321
    type "child"
  ]
  edge [
    source 322
    target 306
    type "link"
  ]
  edge [
    source 323
    target 306
    type "link"
  ]
  edge [
    source 324
    target 306
    type "link"
  ]
  edge [
    source 326
    target 306
    type "link"
  ]
  edge [
    source 327
    target 306
    type "link"
  ]
  edge [
    source 328
    target 306
    type "link"
  ]
  edge [
    source 330
    target 108
    type "link"
  ]
  edge [
    source 331
    target 108
    type "link"
  ]
  edge [
    source 350
    target 351
    type "link"
  ]
  edge [
    source 355
    target 356
    type "link"
  ]
  edge [
    source 356
    target 357
    type "child"
  ]
  edge [
    source 356
    target 358
    type "child"
  ]
  edge [
    source 356
    target 366
    type "child"
  ]
  edge [
    source 356
    target 73
    type "child"
  ]
  edge [
    source 356
    target 367
    type "child"
  ]
  edge [
    source 356
    target 368
    type "child"
  ]
  edge [
    source 356
    target 369
    type "child"
  ]
  edge [
    source 356
    target 370
    type "child"
  ]
  edge [
    source 356
    target 371
    type "child"
  ]
  edge [
    source 356
    target 373
    type "child"
  ]
  edge [
    source 356
    target 374
    type "child"
  ]
  edge [
    source 356
    target 375
    type "child"
  ]
  edge [
    source 356
    target 376
    type "child"
  ]
  edge [
    source 356
    target 377
    type "child"
  ]
  edge [
    source 356
    target 378
    type "child"
  ]
  edge [
    source 358
    target 359
    type "link"
  ]
  edge [
    source 358
    target 360
    type "link"
  ]
  edge [
    source 358
    target 361
    type "link"
  ]
  edge [
    source 358
    target 362
    type "link"
  ]
  edge [
    source 358
    target 363
    type "link"
  ]
  edge [
    source 358
    target 364
    type "link"
  ]
  edge [
    source 358
    target 365
    type "link"
  ]
  edge [
    source 371
    target 372
    type "link"
  ]
  edge [
    source 380
    target 381
    type "link"
  ]
  edge [
    source 380
    target 356
    type "link"
  ]
  edge [
    source 380
    target 382
    type "link"
  ]
  edge [
    source 382
    target 383
    type "child"
  ]
  edge [
    source 382
    target 384
    type "child"
  ]
  edge [
    source 382
    target 386
    type "child"
  ]
  edge [
    source 382
    target 387
    type "child"
  ]
  edge [
    source 382
    target 388
    type "child"
  ]
  edge [
    source 382
    target 389
    type "child"
  ]
  edge [
    source 382
    target 390
    type "child"
  ]
  edge [
    source 382
    target 391
    type "child"
  ]
  edge [
    source 382
    target 392
    type "child"
  ]
  edge [
    source 382
    target 393
    type "child"
  ]
  edge [
    source 382
    target 394
    type "child"
  ]
  edge [
    source 382
    target 395
    type "child"
  ]
  edge [
    source 382
    target 396
    type "child"
  ]
  edge [
    source 382
    target 397
    type "child"
  ]
  edge [
    source 382
    target 398
    type "child"
  ]
  edge [
    source 382
    target 399
    type "child"
  ]
  edge [
    source 382
    target 400
    type "child"
  ]
  edge [
    source 382
    target 401
    type "child"
  ]
  edge [
    source 382
    target 403
    type "child"
  ]
  edge [
    source 382
    target 405
    type "child"
  ]
  edge [
    source 382
    target 407
    type "child"
  ]
  edge [
    source 382
    target 413
    type "child"
  ]
  edge [
    source 382
    target 415
    type "child"
  ]
  edge [
    source 382
    target 417
    type "child"
  ]
  edge [
    source 382
    target 419
    type "child"
  ]
  edge [
    source 382
    target 421
    type "child"
  ]
  edge [
    source 382
    target 424
    type "child"
  ]
  edge [
    source 382
    target 426
    type "child"
  ]
  edge [
    source 382
    target 427
    type "child"
  ]
  edge [
    source 382
    target 428
    type "child"
  ]
  edge [
    source 382
    target 431
    type "child"
  ]
  edge [
    source 382
    target 434
    type "child"
  ]
  edge [
    source 382
    target 435
    type "child"
  ]
  edge [
    source 382
    target 436
    type "child"
  ]
  edge [
    source 382
    target 437
    type "child"
  ]
  edge [
    source 382
    target 438
    type "child"
  ]
  edge [
    source 382
    target 73
    type "child"
  ]
  edge [
    source 382
    target 439
    type "child"
  ]
  edge [
    source 382
    target 440
    type "child"
  ]
  edge [
    source 382
    target 441
    type "child"
  ]
  edge [
    source 382
    target 442
    type "child"
  ]
  edge [
    source 382
    target 443
    type "child"
  ]
  edge [
    source 382
    target 444
    type "child"
  ]
  edge [
    source 384
    target 385
    type "link"
  ]
  edge [
    source 401
    target 402
    type "link"
  ]
  edge [
    source 403
    target 404
    type "link"
  ]
  edge [
    source 405
    target 406
    type "link"
  ]
  edge [
    source 407
    target 408
    type "link"
  ]
  edge [
    source 407
    target 409
    type "link"
  ]
  edge [
    source 407
    target 410
    type "link"
  ]
  edge [
    source 407
    target 411
    type "link"
  ]
  edge [
    source 407
    target 402
    type "link"
  ]
  edge [
    source 407
    target 412
    type "link"
  ]
  edge [
    source 413
    target 409
    type "link"
  ]
  edge [
    source 413
    target 410
    type "link"
  ]
  edge [
    source 413
    target 414
    type "link"
  ]
  edge [
    source 413
    target 402
    type "link"
  ]
  edge [
    source 413
    target 412
    type "link"
  ]
  edge [
    source 415
    target 416
    type "link"
  ]
  edge [
    source 417
    target 418
    type "link"
  ]
  edge [
    source 419
    target 420
    type "link"
  ]
  edge [
    source 421
    target 422
    type "link"
  ]
  edge [
    source 421
    target 423
    type "link"
  ]
  edge [
    source 424
    target 423
    type "link"
  ]
  edge [
    source 424
    target 425
    type "link"
  ]
  edge [
    source 426
    target 420
    type "link"
  ]
  edge [
    source 427
    target 422
    type "link"
  ]
  edge [
    source 427
    target 423
    type "link"
  ]
  edge [
    source 428
    target 429
    type "link"
  ]
  edge [
    source 428
    target 430
    type "link"
  ]
  edge [
    source 431
    target 432
    type "link"
  ]
  edge [
    source 431
    target 433
    type "link"
  ]
  edge [
    source 434
    target 432
    type "link"
  ]
  edge [
    source 434
    target 433
    type "link"
  ]
  edge [
    source 435
    target 429
    type "link"
  ]
  edge [
    source 437
    target 430
    type "link"
  ]
  edge [
    source 445
    target 356
    type "link"
  ]
  edge [
    source 445
    target 382
    type "link"
  ]
  edge [
    source 447
    target 356
    type "link"
  ]
  edge [
    source 447
    target 372
    type "link"
  ]
  edge [
    source 448
    target 449
    type "link"
  ]
  edge [
    source 452
    target 453
    type "link"
  ]
  edge [
    source 453
    target 454
    type "child"
  ]
  edge [
    source 453
    target 456
    type "child"
  ]
  edge [
    source 453
    target 111
    type "child"
  ]
  edge [
    source 453
    target 457
    type "child"
  ]
  edge [
    source 453
    target 15
    type "child"
  ]
  edge [
    source 453
    target 73
    type "child"
  ]
  edge [
    source 453
    target 458
    type "child"
  ]
  edge [
    source 453
    target 459
    type "child"
  ]
  edge [
    source 453
    target 460
    type "child"
  ]
  edge [
    source 453
    target 463
    type "child"
  ]
  edge [
    source 453
    target 466
    type "child"
  ]
  edge [
    source 453
    target 468
    type "child"
  ]
  edge [
    source 453
    target 471
    type "child"
  ]
  edge [
    source 453
    target 474
    type "child"
  ]
  edge [
    source 453
    target 477
    type "child"
  ]
  edge [
    source 453
    target 478
    type "child"
  ]
  edge [
    source 453
    target 480
    type "child"
  ]
  edge [
    source 453
    target 482
    type "child"
  ]
  edge [
    source 453
    target 483
    type "child"
  ]
  edge [
    source 453
    target 484
    type "child"
  ]
  edge [
    source 453
    target 485
    type "child"
  ]
  edge [
    source 453
    target 486
    type "child"
  ]
  edge [
    source 453
    target 487
    type "child"
  ]
  edge [
    source 453
    target 488
    type "child"
  ]
  edge [
    source 453
    target 489
    type "child"
  ]
  edge [
    source 453
    target 490
    type "child"
  ]
  edge [
    source 453
    target 495
    type "child"
  ]
  edge [
    source 453
    target 498
    type "child"
  ]
  edge [
    source 453
    target 499
    type "child"
  ]
  edge [
    source 453
    target 500
    type "child"
  ]
  edge [
    source 453
    target 501
    type "child"
  ]
  edge [
    source 453
    target 502
    type "child"
  ]
  edge [
    source 453
    target 503
    type "child"
  ]
  edge [
    source 453
    target 504
    type "child"
  ]
  edge [
    source 453
    target 506
    type "child"
  ]
  edge [
    source 453
    target 507
    type "child"
  ]
  edge [
    source 453
    target 509
    type "child"
  ]
  edge [
    source 453
    target 510
    type "child"
  ]
  edge [
    source 453
    target 512
    type "child"
  ]
  edge [
    source 453
    target 513
    type "child"
  ]
  edge [
    source 453
    target 515
    type "child"
  ]
  edge [
    source 453
    target 516
    type "child"
  ]
  edge [
    source 453
    target 518
    type "child"
  ]
  edge [
    source 453
    target 519
    type "child"
  ]
  edge [
    source 453
    target 521
    type "child"
  ]
  edge [
    source 453
    target 522
    type "child"
  ]
  edge [
    source 453
    target 524
    type "child"
  ]
  edge [
    source 453
    target 525
    type "child"
  ]
  edge [
    source 453
    target 526
    type "child"
  ]
  edge [
    source 453
    target 527
    type "child"
  ]
  edge [
    source 453
    target 531
    type "child"
  ]
  edge [
    source 453
    target 532
    type "child"
  ]
  edge [
    source 453
    target 534
    type "child"
  ]
  edge [
    source 453
    target 535
    type "child"
  ]
  edge [
    source 453
    target 537
    type "child"
  ]
  edge [
    source 453
    target 538
    type "child"
  ]
  edge [
    source 453
    target 540
    type "child"
  ]
  edge [
    source 453
    target 541
    type "child"
  ]
  edge [
    source 453
    target 543
    type "child"
  ]
  edge [
    source 453
    target 544
    type "child"
  ]
  edge [
    source 453
    target 547
    type "child"
  ]
  edge [
    source 453
    target 548
    type "child"
  ]
  edge [
    source 453
    target 551
    type "child"
  ]
  edge [
    source 453
    target 552
    type "child"
  ]
  edge [
    source 453
    target 554
    type "child"
  ]
  edge [
    source 453
    target 555
    type "child"
  ]
  edge [
    source 453
    target 557
    type "child"
  ]
  edge [
    source 453
    target 558
    type "child"
  ]
  edge [
    source 453
    target 560
    type "child"
  ]
  edge [
    source 453
    target 561
    type "child"
  ]
  edge [
    source 453
    target 563
    type "child"
  ]
  edge [
    source 453
    target 564
    type "child"
  ]
  edge [
    source 453
    target 566
    type "child"
  ]
  edge [
    source 453
    target 567
    type "child"
  ]
  edge [
    source 453
    target 569
    type "child"
  ]
  edge [
    source 453
    target 570
    type "child"
  ]
  edge [
    source 453
    target 572
    type "child"
  ]
  edge [
    source 453
    target 573
    type "child"
  ]
  edge [
    source 453
    target 574
    type "child"
  ]
  edge [
    source 453
    target 576
    type "child"
  ]
  edge [
    source 453
    target 577
    type "child"
  ]
  edge [
    source 453
    target 579
    type "child"
  ]
  edge [
    source 453
    target 580
    type "child"
  ]
  edge [
    source 453
    target 581
    type "child"
  ]
  edge [
    source 453
    target 582
    type "child"
  ]
  edge [
    source 453
    target 583
    type "child"
  ]
  edge [
    source 453
    target 585
    type "child"
  ]
  edge [
    source 453
    target 586
    type "child"
  ]
  edge [
    source 454
    target 455
    type "link"
  ]
  edge [
    source 460
    target 461
    type "link"
  ]
  edge [
    source 460
    target 462
    type "link"
  ]
  edge [
    source 463
    target 464
    type "link"
  ]
  edge [
    source 463
    target 465
    type "link"
  ]
  edge [
    source 466
    target 467
    type "link"
  ]
  edge [
    source 466
    target 462
    type "link"
  ]
  edge [
    source 468
    target 469
    type "link"
  ]
  edge [
    source 468
    target 470
    type "link"
  ]
  edge [
    source 471
    target 472
    type "link"
  ]
  edge [
    source 471
    target 473
    type "link"
  ]
  edge [
    source 474
    target 475
    type "link"
  ]
  edge [
    source 474
    target 476
    type "link"
  ]
  edge [
    source 478
    target 479
    type "link"
  ]
  edge [
    source 480
    target 481
    type "link"
  ]
  edge [
    source 482
    target 129
    type "link"
  ]
  edge [
    source 486
    target 129
    type "link"
  ]
  edge [
    source 490
    target 491
    type "link"
  ]
  edge [
    source 490
    target 492
    type "link"
  ]
  edge [
    source 490
    target 493
    type "link"
  ]
  edge [
    source 490
    target 494
    type "link"
  ]
  edge [
    source 495
    target 496
    type "link"
  ]
  edge [
    source 495
    target 491
    type "link"
  ]
  edge [
    source 495
    target 492
    type "link"
  ]
  edge [
    source 495
    target 497
    type "link"
  ]
  edge [
    source 504
    target 505
    type "link"
  ]
  edge [
    source 507
    target 508
    type "link"
  ]
  edge [
    source 510
    target 511
    type "link"
  ]
  edge [
    source 513
    target 514
    type "link"
  ]
  edge [
    source 516
    target 517
    type "link"
  ]
  edge [
    source 519
    target 520
    type "link"
  ]
  edge [
    source 522
    target 523
    type "link"
  ]
  edge [
    source 527
    target 528
    type "link"
  ]
  edge [
    source 527
    target 529
    type "link"
  ]
  edge [
    source 527
    target 530
    type "link"
  ]
  edge [
    source 532
    target 533
    type "link"
  ]
  edge [
    source 535
    target 528
    type "link"
  ]
  edge [
    source 535
    target 529
    type "link"
  ]
  edge [
    source 535
    target 536
    type "link"
  ]
  edge [
    source 538
    target 539
    type "link"
  ]
  edge [
    source 541
    target 542
    type "link"
  ]
  edge [
    source 544
    target 545
    type "link"
  ]
  edge [
    source 544
    target 546
    type "link"
  ]
  edge [
    source 548
    target 549
    type "link"
  ]
  edge [
    source 548
    target 550
    type "link"
  ]
  edge [
    source 552
    target 553
    type "link"
  ]
  edge [
    source 555
    target 556
    type "link"
  ]
  edge [
    source 558
    target 559
    type "link"
  ]
  edge [
    source 561
    target 562
    type "link"
  ]
  edge [
    source 564
    target 565
    type "link"
  ]
  edge [
    source 567
    target 568
    type "link"
  ]
  edge [
    source 570
    target 571
    type "link"
  ]
  edge [
    source 574
    target 575
    type "link"
  ]
  edge [
    source 577
    target 578
    type "link"
  ]
  edge [
    source 583
    target 584
    type "link"
  ]
  edge [
    source 588
    target 453
    type "link"
  ]
  edge [
    source 591
    target 565
    type "link"
  ]
  edge [
    source 592
    target 565
    type "link"
  ]
  edge [
    source 593
    target 565
    type "link"
  ]
  edge [
    source 594
    target 565
    type "link"
  ]
  edge [
    source 596
    target 597
    type "link"
  ]
  edge [
    source 598
    target 599
    type "link"
  ]
  edge [
    source 605
    target 606
    type "link"
  ]
  edge [
    source 605
    target 607
    type "link"
  ]
  edge [
    source 613
    target 614
    type "link"
  ]
  edge [
    source 615
    target 614
    type "link"
  ]
  edge [
    source 627
    target 628
    type "link"
  ]
  edge [
    source 634
    target 635
    type "child"
  ]
  edge [
    source 635
    target 636
    type "link"
  ]
  edge [
    source 637
    target 638
    type "link"
  ]
  edge [
    source 639
    target 640
    type "link"
  ]
  edge [
    source 641
    target 642
    type "child"
  ]
  edge [
    source 641
    target 643
    type "child"
  ]
  edge [
    source 641
    target 644
    type "child"
  ]
  edge [
    source 641
    target 645
    type "child"
  ]
  edge [
    source 641
    target 646
    type "child"
  ]
  edge [
    source 641
    target 647
    type "child"
  ]
  edge [
    source 641
    target 648
    type "child"
  ]
  edge [
    source 641
    target 649
    type "child"
  ]
  edge [
    source 641
    target 650
    type "child"
  ]
  edge [
    source 641
    target 651
    type "child"
  ]
  edge [
    source 641
    target 652
    type "child"
  ]
  edge [
    source 641
    target 653
    type "child"
  ]
  edge [
    source 641
    target 654
    type "child"
  ]
  edge [
    source 641
    target 655
    type "child"
  ]
  edge [
    source 641
    target 656
    type "child"
  ]
  edge [
    source 641
    target 657
    type "child"
  ]
  edge [
    source 641
    target 658
    type "child"
  ]
  edge [
    source 641
    target 659
    type "child"
  ]
  edge [
    source 641
    target 660
    type "child"
  ]
  edge [
    source 641
    target 661
    type "child"
  ]
  edge [
    source 641
    target 662
    type "child"
  ]
  edge [
    source 641
    target 663
    type "child"
  ]
  edge [
    source 641
    target 664
    type "child"
  ]
  edge [
    source 641
    target 665
    type "child"
  ]
  edge [
    source 641
    target 666
    type "child"
  ]
  edge [
    source 641
    target 667
    type "child"
  ]
  edge [
    source 641
    target 668
    type "child"
  ]
  edge [
    source 641
    target 669
    type "child"
  ]
  edge [
    source 641
    target 670
    type "child"
  ]
  edge [
    source 641
    target 671
    type "child"
  ]
  edge [
    source 641
    target 672
    type "child"
  ]
  edge [
    source 641
    target 673
    type "child"
  ]
  edge [
    source 641
    target 674
    type "child"
  ]
  edge [
    source 641
    target 675
    type "child"
  ]
  edge [
    source 641
    target 676
    type "child"
  ]
  edge [
    source 641
    target 677
    type "child"
  ]
  edge [
    source 641
    target 678
    type "child"
  ]
  edge [
    source 641
    target 679
    type "child"
  ]
  edge [
    source 641
    target 680
    type "child"
  ]
  edge [
    source 641
    target 681
    type "child"
  ]
  edge [
    source 641
    target 682
    type "child"
  ]
  edge [
    source 641
    target 683
    type "child"
  ]
  edge [
    source 641
    target 684
    type "child"
  ]
  edge [
    source 641
    target 685
    type "child"
  ]
  edge [
    source 641
    target 686
    type "child"
  ]
  edge [
    source 641
    target 687
    type "child"
  ]
  edge [
    source 641
    target 688
    type "child"
  ]
  edge [
    source 641
    target 689
    type "child"
  ]
  edge [
    source 641
    target 690
    type "child"
  ]
  edge [
    source 641
    target 691
    type "child"
  ]
  edge [
    source 641
    target 692
    type "child"
  ]
  edge [
    source 641
    target 693
    type "child"
  ]
  edge [
    source 641
    target 694
    type "child"
  ]
  edge [
    source 641
    target 695
    type "child"
  ]
  edge [
    source 696
    target 697
    type "link"
  ]
  edge [
    source 698
    target 699
    type "child"
  ]
  edge [
    source 698
    target 700
    type "child"
  ]
  edge [
    source 698
    target 701
    type "child"
  ]
  edge [
    source 698
    target 702
    type "child"
  ]
  edge [
    source 698
    target 703
    type "child"
  ]
  edge [
    source 698
    target 704
    type "child"
  ]
  edge [
    source 698
    target 705
    type "child"
  ]
  edge [
    source 698
    target 707
    type "child"
  ]
  edge [
    source 698
    target 708
    type "child"
  ]
  edge [
    source 698
    target 709
    type "child"
  ]
  edge [
    source 698
    target 710
    type "child"
  ]
  edge [
    source 698
    target 711
    type "child"
  ]
  edge [
    source 698
    target 712
    type "child"
  ]
  edge [
    source 698
    target 713
    type "child"
  ]
  edge [
    source 698
    target 714
    type "child"
  ]
  edge [
    source 698
    target 661
    type "child"
  ]
  edge [
    source 698
    target 715
    type "child"
  ]
  edge [
    source 698
    target 716
    type "child"
  ]
  edge [
    source 698
    target 717
    type "child"
  ]
  edge [
    source 698
    target 718
    type "child"
  ]
  edge [
    source 698
    target 719
    type "child"
  ]
  edge [
    source 698
    target 720
    type "child"
  ]
  edge [
    source 698
    target 721
    type "child"
  ]
  edge [
    source 698
    target 722
    type "child"
  ]
  edge [
    source 698
    target 723
    type "child"
  ]
  edge [
    source 698
    target 724
    type "child"
  ]
  edge [
    source 698
    target 725
    type "child"
  ]
  edge [
    source 698
    target 726
    type "child"
  ]
  edge [
    source 698
    target 727
    type "child"
  ]
  edge [
    source 698
    target 728
    type "child"
  ]
  edge [
    source 698
    target 729
    type "child"
  ]
  edge [
    source 698
    target 675
    type "child"
  ]
  edge [
    source 698
    target 676
    type "child"
  ]
  edge [
    source 698
    target 677
    type "child"
  ]
  edge [
    source 698
    target 730
    type "child"
  ]
  edge [
    source 698
    target 731
    type "child"
  ]
  edge [
    source 698
    target 732
    type "child"
  ]
  edge [
    source 698
    target 733
    type "child"
  ]
  edge [
    source 698
    target 734
    type "child"
  ]
  edge [
    source 698
    target 735
    type "child"
  ]
  edge [
    source 698
    target 736
    type "child"
  ]
  edge [
    source 698
    target 737
    type "child"
  ]
  edge [
    source 698
    target 738
    type "child"
  ]
  edge [
    source 698
    target 739
    type "child"
  ]
  edge [
    source 698
    target 740
    type "child"
  ]
  edge [
    source 698
    target 741
    type "child"
  ]
  edge [
    source 698
    target 742
    type "child"
  ]
  edge [
    source 698
    target 743
    type "child"
  ]
  edge [
    source 698
    target 744
    type "child"
  ]
  edge [
    source 698
    target 745
    type "child"
  ]
  edge [
    source 698
    target 746
    type "child"
  ]
  edge [
    source 698
    target 747
    type "child"
  ]
  edge [
    source 698
    target 748
    type "child"
  ]
  edge [
    source 698
    target 749
    type "child"
  ]
  edge [
    source 698
    target 750
    type "child"
  ]
  edge [
    source 698
    target 751
    type "child"
  ]
  edge [
    source 698
    target 752
    type "child"
  ]
  edge [
    source 698
    target 753
    type "child"
  ]
  edge [
    source 705
    target 706
    type "link"
  ]
  edge [
    source 767
    target 768
    type "link"
  ]
  edge [
    source 768
    target 769
    type "child"
  ]
  edge [
    source 768
    target 771
    type "child"
  ]
  edge [
    source 768
    target 772
    type "child"
  ]
  edge [
    source 768
    target 773
    type "child"
  ]
  edge [
    source 768
    target 775
    type "child"
  ]
  edge [
    source 768
    target 776
    type "child"
  ]
  edge [
    source 768
    target 777
    type "child"
  ]
  edge [
    source 768
    target 778
    type "child"
  ]
  edge [
    source 768
    target 779
    type "child"
  ]
  edge [
    source 768
    target 781
    type "child"
  ]
  edge [
    source 768
    target 782
    type "child"
  ]
  edge [
    source 768
    target 783
    type "child"
  ]
  edge [
    source 768
    target 784
    type "child"
  ]
  edge [
    source 768
    target 785
    type "child"
  ]
  edge [
    source 768
    target 786
    type "child"
  ]
  edge [
    source 768
    target 787
    type "child"
  ]
  edge [
    source 768
    target 788
    type "child"
  ]
  edge [
    source 768
    target 789
    type "child"
  ]
  edge [
    source 768
    target 790
    type "child"
  ]
  edge [
    source 768
    target 791
    type "child"
  ]
  edge [
    source 768
    target 792
    type "child"
  ]
  edge [
    source 768
    target 793
    type "child"
  ]
  edge [
    source 768
    target 795
    type "child"
  ]
  edge [
    source 768
    target 796
    type "child"
  ]
  edge [
    source 768
    target 797
    type "child"
  ]
  edge [
    source 768
    target 798
    type "child"
  ]
  edge [
    source 768
    target 799
    type "child"
  ]
  edge [
    source 768
    target 73
    type "child"
  ]
  edge [
    source 768
    target 800
    type "child"
  ]
  edge [
    source 768
    target 801
    type "child"
  ]
  edge [
    source 768
    target 802
    type "child"
  ]
  edge [
    source 768
    target 803
    type "child"
  ]
  edge [
    source 768
    target 804
    type "child"
  ]
  edge [
    source 768
    target 805
    type "child"
  ]
  edge [
    source 768
    target 806
    type "child"
  ]
  edge [
    source 768
    target 807
    type "child"
  ]
  edge [
    source 768
    target 808
    type "child"
  ]
  edge [
    source 768
    target 809
    type "child"
  ]
  edge [
    source 768
    target 810
    type "child"
  ]
  edge [
    source 768
    target 811
    type "child"
  ]
  edge [
    source 768
    target 812
    type "child"
  ]
  edge [
    source 768
    target 813
    type "child"
  ]
  edge [
    source 768
    target 814
    type "child"
  ]
  edge [
    source 768
    target 815
    type "child"
  ]
  edge [
    source 768
    target 816
    type "child"
  ]
  edge [
    source 768
    target 817
    type "child"
  ]
  edge [
    source 768
    target 818
    type "child"
  ]
  edge [
    source 768
    target 819
    type "child"
  ]
  edge [
    source 768
    target 820
    type "child"
  ]
  edge [
    source 768
    target 821
    type "child"
  ]
  edge [
    source 768
    target 822
    type "child"
  ]
  edge [
    source 768
    target 823
    type "child"
  ]
  edge [
    source 768
    target 824
    type "child"
  ]
  edge [
    source 768
    target 825
    type "child"
  ]
  edge [
    source 768
    target 826
    type "child"
  ]
  edge [
    source 768
    target 827
    type "child"
  ]
  edge [
    source 768
    target 828
    type "child"
  ]
  edge [
    source 769
    target 770
    type "link"
  ]
  edge [
    source 773
    target 774
    type "link"
  ]
  edge [
    source 779
    target 780
    type "link"
  ]
  edge [
    source 793
    target 794
    type "link"
  ]
  edge [
    source 829
    target 830
    type "link"
  ]
  edge [
    source 837
    target 838
    type "link"
  ]
]
