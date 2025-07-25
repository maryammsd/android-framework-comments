graph [
  directed 1
  node [
    id 0
    label "android.net.Uri"
    type "class"
    comment "&#10; * Immutable URI reference. A URI reference includes a URI and a fragment, the&#10; * component of the URI following a '#'. Builds and parses URI references&#10; * which conform to&#10; * <a href=&#34;http://www.faqs.org/rfcs/rfc2396.html&#34;>RFC 2396</a>.&#10; *&#10; * <p>In the interest of performance, this class performs little to no&#10; * validation. Behavior is undefined for invalid input. This class is very&#10; * forgiving--in the face of invalid input, it will return garbage&#10; * rather than throw an exception unless otherwise specified.&#10; "
  ]
  node [
    id 1
    label "public abstract boolean isHierarchical()"
    type "method"
    comment "&#10;     * Returns true if this URI is hierarchical like &#34;http://google.com&#34;.&#10;     * Absolute URIs are hierarchical if the scheme-specific part starts with&#10;     * a '/'. Relative URIs are always hierarchical.&#10;     "
  ]
  node [
    id 2
    label "public boolean isOpaque()"
    type "method"
    comment "&#10;     * Returns true if this URI is opaque like &#34;mailto:nobody@google.com&#34;. The&#10;     * scheme-specific part of an opaque URI cannot start with a '/'.&#10;     "
  ]
  node [
    id 3
    label "public abstract boolean isRelative()"
    type "method"
    comment "&#10;     * Returns true if this URI is relative, i.e.&#38;nbsp;if it doesn't contain an&#10;     * explicit scheme.&#10;     *&#10;     * @return true if this URI is relative, false if it's absolute&#10;     "
  ]
  node [
    id 4
    label "public boolean isAbsolute()"
    type "method"
    comment "&#10;     * Returns true if this URI is absolute, i.e.&#38;nbsp;if it contains an&#10;     * explicit scheme.&#10;     *&#10;     * @return true if this URI is absolute, false if it's relative&#10;     "
  ]
  node [
    id 5
    label "public abstract String getScheme()"
    type "method"
    comment "&#10;     * Gets the scheme of this URI. Example: &#34;http&#34;&#10;     *&#10;     * @return the scheme or null if this is a relative URI&#10;     "
  ]
  node [
    id 6
    label "public abstract String getSchemeSpecificPart()"
    type "method"
    comment "&#10;     * Gets the scheme-specific part of this URI, i.e.&#38;nbsp;everything between&#10;     * the scheme separator ':' and the fragment separator '#'. If this is a&#10;     * relative URI, this method returns the entire URI. Decodes escaped octets.&#10;     *&#10;     * <p>Example: &#34;//www.google.com/search?q=android&#34;&#10;     *&#10;     * @return the decoded scheme-specific-part&#10;     "
  ]
  node [
    id 7
    label "public abstract String getEncodedSchemeSpecificPart()"
    type "method"
    comment "&#10;     * Gets the scheme-specific part of this URI, i.e.&#38;nbsp;everything between&#10;     * the scheme separator ':' and the fragment separator '#'. If this is a&#10;     * relative URI, this method returns the entire URI. Leaves escaped octets&#10;     * intact.&#10;     *&#10;     * <p>Example: &#34;//www.google.com/search?q=android&#34;&#10;     *&#10;     * @return the encoded scheme-specific-part&#10;     "
  ]
  node [
    id 8
    label "public abstract String getAuthority()"
    type "method"
    comment "&#10;     * Gets the decoded authority part of this URI. For&#10;     * server addresses, the authority is structured as follows:&#10;     * {@code [ userinfo '@' ] host [ ':' port ]}&#10;     *&#10;     * <p>Examples: &#34;google.com&#34;, &#34;bob@google.com:80&#34;&#10;     *&#10;     * @return the authority for this URI or null if not present&#10;     "
  ]
  node [
    id 9
    label "public abstract String getEncodedAuthority()"
    type "method"
    comment "&#10;     * Gets the encoded authority part of this URI. For&#10;     * server addresses, the authority is structured as follows:&#10;     * {@code [ userinfo '@' ] host [ ':' port ]}&#10;     *&#10;     * <p>Examples: &#34;google.com&#34;, &#34;bob@google.com:80&#34;&#10;     *&#10;     * @return the authority for this URI or null if not present&#10;     "
  ]
  node [
    id 10
    label "public abstract String getUserInfo()"
    type "method"
    comment "&#10;     * Gets the decoded user information from the authority.&#10;     * For example, if the authority is &#34;nobody@google.com&#34;, this method will&#10;     * return &#34;nobody&#34;.&#10;     *&#10;     * @return the user info for this URI or null if not present&#10;     "
  ]
  node [
    id 11
    label "public abstract String getEncodedUserInfo()"
    type "method"
    comment "&#10;     * Gets the encoded user information from the authority.&#10;     * For example, if the authority is &#34;nobody@google.com&#34;, this method will&#10;     * return &#34;nobody&#34;.&#10;     *&#10;     * @return the user info for this URI or null if not present&#10;     "
  ]
  node [
    id 12
    label "public abstract String getHost()"
    type "method"
    comment "&#10;     * Gets the encoded host from the authority for this URI. For example,&#10;     * if the authority is &#34;bob@google.com&#34;, this method will return&#10;     * &#34;google.com&#34;.&#10;     *&#10;     * @return the host for this URI or null if not present&#10;     "
  ]
  node [
    id 13
    label "public abstract int getPort()"
    type "method"
    comment "&#10;     * Gets the port from the authority for this URI. For example,&#10;     * if the authority is &#34;google.com:80&#34;, this method will return 80.&#10;     *&#10;     * @return the port for this URI or -1 if invalid or not present&#10;     "
  ]
  node [
    id 14
    label "public abstract String getPath()"
    type "method"
    comment "&#10;     * Gets the decoded path.&#10;     *&#10;     * @return the decoded path, or null if this is not a hierarchical URI&#10;     * (like &#34;mailto:nobody@google.com&#34;) or the URI is invalid&#10;     "
  ]
  node [
    id 15
    label "public abstract String getEncodedPath()"
    type "method"
    comment "&#10;     * Gets the encoded path.&#10;     *&#10;     * @return the encoded path, or null if this is not a hierarchical URI&#10;     * (like &#34;mailto:nobody@google.com&#34;) or the URI is invalid&#10;     "
  ]
  node [
    id 16
    label "public abstract String getQuery()"
    type "method"
    comment "&#10;     * Gets the decoded query component from this URI. The query comes after&#10;     * the query separator ('?') and before the fragment separator ('#'). This&#10;     * method would return &#34;q=android&#34; for&#10;     * &#34;http://www.google.com/search?q=android&#34;.&#10;     *&#10;     * @return the decoded query or null if there isn't one&#10;     "
  ]
  node [
    id 17
    label "public abstract String getEncodedQuery()"
    type "method"
    comment "&#10;     * Gets the encoded query component from this URI. The query comes after&#10;     * the query separator ('?') and before the fragment separator ('#'). This&#10;     * method would return &#34;q=android&#34; for&#10;     * &#34;http://www.google.com/search?q=android&#34;.&#10;     *&#10;     * @return the encoded query or null if there isn't one&#10;     "
  ]
  node [
    id 18
    label "public abstract String getFragment()"
    type "method"
    comment "&#10;     * Gets the decoded fragment part of this URI, everything after the '#'.&#10;     *&#10;     * @return the decoded fragment or null if there isn't one&#10;     "
  ]
  node [
    id 19
    label "public abstract String getEncodedFragment()"
    type "method"
    comment "&#10;     * Gets the encoded fragment part of this URI, everything after the '#'.&#10;     *&#10;     * @return the encoded fragment or null if there isn't one&#10;     "
  ]
  node [
    id 20
    label "public abstract List<String> getPathSegments()"
    type "method"
    comment "&#10;     * Gets the decoded path segments.&#10;     *&#10;     * @return decoded path segments, each without a leading or trailing '/'&#10;     "
  ]
  node [
    id 21
    label "public abstract String getLastPathSegment()"
    type "method"
    comment "&#10;     * Gets the decoded last segment in the path.&#10;     *&#10;     * @return the decoded last segment or null if the path is empty&#10;     "
  ]
  node [
    id 22
    label "public boolean equals(@Nullable Object o)"
    type "method"
    comment "&#10;     * Compares this Uri to another object for equality. Returns true if the&#10;     * encoded string representations of this Uri and the given Uri are&#10;     * equal. Case counts. Paths are not normalized. If one Uri specifies a&#10;     * default port explicitly and the other leaves it implicit, they will not&#10;     * be considered equal.&#10;     "
  ]
  node [
    id 23
    label "public int hashCode()"
    type "method"
    comment "&#10;     * Hashes the encoded string represention of this Uri consistently with&#10;     * {@link #equals(Object)}.&#10;     "
  ]
  node [
    id 24
    label "equals(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 25
    label "public int compareTo(Uri other)"
    type "method"
    comment "&#10;     * Compares the string representation of this Uri with that of&#10;     * another.&#10;     "
  ]
  node [
    id 26
    label "public abstract String toString()"
    type "method"
    comment "&#10;     * Returns the encoded string representation of this URI.&#10;     * Example: &#34;http://google.com/&#34;&#10;     "
  ]
  node [
    id 27
    label "public abstract Builder buildUpon()"
    type "method"
    comment "&#10;     * Constructs a new builder, copying the attributes from this Uri.&#10;     "
  ]
  node [
    id 28
    label "public static Uri parse(String uriString)"
    type "method"
    comment "&#10;     * Creates a Uri which parses the given encoded URI string.&#10;     *&#10;     * @param uriString an RFC 2396-compliant, encoded URI&#10;     * @throws NullPointerException if uriString is null&#10;     * @return Uri for this given uri string&#10;     "
  ]
  node [
    id 29
    label "public static Uri fromFile(File file)"
    type "method"
    comment "&#10;     * Creates a Uri from a file. The URI has the form&#10;     * &#34;file://<absolute path>&#34;. Encodes path characters with the exception of&#10;     * '/'.&#10;     *&#10;     * <p>Example: &#34;file:///tmp/android.txt&#34;&#10;     *&#10;     * @throws NullPointerException if file is null&#10;     * @return a Uri for the given file&#10;     "
  ]
  node [
    id 30
    label "public static Uri fromParts(String scheme, String ssp, String fragment)"
    type "method"
    comment "&#10;     * Creates an opaque Uri from the given components. Encodes the ssp&#10;     * which means this method cannot be used to create hierarchical URIs.&#10;     *&#10;     * @param scheme of the URI&#10;     * @param ssp scheme-specific-part, everything between the&#10;     *  scheme separator (':') and the fragment separator ('#'), which will&#10;     *  get encoded&#10;     * @param fragment fragment, everything after the '#', null if undefined,&#10;     *  will get encoded&#10;     *&#10;     * @throws NullPointerException if scheme or ssp is null&#10;     * @return Uri composed of the given scheme, ssp, and fragment&#10;     *&#10;     * @see Builder if you don't want the ssp and fragment to be encoded&#10;     "
  ]
  node [
    id 31
    label "public Set<String> getQueryParameterNames()"
    type "method"
    comment "&#10;     * Returns a set of the unique names of all query parameters. Iterating&#10;     * over the set will return the names in order of their first occurrence.&#10;     *&#10;     * @throws UnsupportedOperationException if this isn't a hierarchical URI&#10;     *&#10;     * @return a set of decoded names&#10;     "
  ]
  node [
    id 32
    label "public List<String> getQueryParameters(String key)"
    type "method"
    comment "&#10;     * Searches the query string for parameter values with the given key.&#10;     *&#10;     * @param key which will be encoded&#10;     *&#10;     * @throws UnsupportedOperationException if this isn't a hierarchical URI&#10;     * @throws NullPointerException if key is null&#10;     * @return a list of decoded values&#10;     "
  ]
  node [
    id 33
    label "public String getQueryParameter(String key)"
    type "method"
    comment "&#10;     * Searches the query string for the first value with the given key.&#10;     *&#10;     * <p><strong>Warning:</strong> Prior to Jelly Bean, this decoded&#10;     * the '+' character as '+' rather than ' '.&#10;     *&#10;     * @param key which will be encoded&#10;     * @throws UnsupportedOperationException if this isn't a hierarchical URI&#10;     * @throws NullPointerException if key is null&#10;     * @return the decoded value or null if no parameter is found&#10;     "
  ]
  node [
    id 34
    label "public boolean getBooleanQueryParameter(String key, boolean defaultValue)"
    type "method"
    comment "&#10;     * Searches the query string for the first value with the given key and interprets it&#10;     * as a boolean value. &#34;false&#34; and &#34;0&#34; are interpreted as <code>false</code>, everything&#10;     * else is interpreted as <code>true</code>.&#10;     *&#10;     * @param key which will be decoded&#10;     * @param defaultValue the default value to return if there is no query parameter for key&#10;     * @return the boolean interpretation of the query parameter key&#10;     "
  ]
  node [
    id 35
    label "public Uri normalizeScheme()"
    type "method"
    comment "&#10;     * Return an equivalent URI with a lowercase scheme component.&#10;     * This aligns the Uri with Android best practices for&#10;     * intent filtering.&#10;     *&#10;     * <p>For example, &#34;HTTP://www.android.com&#34; becomes&#10;     * &#34;http://www.android.com&#34;&#10;     *&#10;     * <p>All URIs received from outside Android (such as user input,&#10;     * or external sources like Bluetooth, NFC, or the Internet) should&#10;     * be normalized before they are used to create an Intent.&#10;     *&#10;     * <p class=&#34;note&#34;>This method does <em>not</em> validate bad URIs,&#10;     * or 'fix' poorly formatted URIs - so do not use it for input validation.&#10;     * A Uri will always be returned, even if the Uri is badly formatted to&#10;     * begin with and a scheme component cannot be found.&#10;     *&#10;     * @return normalized Uri (never null)&#10;     * @see android.content.Intent#setData&#10;     * @see android.content.Intent#setDataAndNormalize&#10;     "
  ]
  node [
    id 36
    label "public static void writeToParcel(Parcel out, Uri uri)"
    type "method"
    comment "&#10;     * Writes a Uri to a Parcel.&#10;     *&#10;     * @param out parcel to write to&#10;     * @param uri to write, can be null&#10;     "
  ]
  node [
    id 37
    label "public static String encode(String s)"
    type "method"
    comment "&#10;     * Encodes characters in the given string as '%'-escaped octets&#10;     * using the UTF-8 scheme. Leaves letters (&#34;A-Z&#34;, &#34;a-z&#34;), numbers&#10;     * (&#34;0-9&#34;), and unreserved characters (&#34;_-!.~'()*&#34;) intact. Encodes&#10;     * all other characters.&#10;     *&#10;     * @param s string to encode&#10;     * @return an encoded version of s suitable for use as a URI component,&#10;     *  or null if s is null&#10;     "
  ]
  node [
    id 38
    label "public static String encode(String s, String allow)"
    type "method"
    comment "&#10;     * Encodes characters in the given string as '%'-escaped octets&#10;     * using the UTF-8 scheme. Leaves letters (&#34;A-Z&#34;, &#34;a-z&#34;), numbers&#10;     * (&#34;0-9&#34;), and unreserved characters (&#34;_-!.~'()*&#34;) intact. Encodes&#10;     * all other characters with the exception of those specified in the&#10;     * allow argument.&#10;     *&#10;     * @param s string to encode&#10;     * @param allow set of additional characters to allow in the encoded form,&#10;     *  null if no characters should be skipped&#10;     * @return an encoded version of s suitable for use as a URI component,&#10;     *  or null if s is null&#10;     "
  ]
  node [
    id 39
    label "private static boolean isAllowed(char c, String allow)"
    type "method"
    comment "&#10;     * Returns true if the given character is allowed.&#10;     *&#10;     * @param c character to check&#10;     * @param allow characters to allow&#10;     * @return true if the character is allowed or false if it should be&#10;     *  encoded&#10;     "
  ]
  node [
    id 40
    label "private static boolean isEncoded(@Nullable String value, @Nullable String allow)"
    type "method"
    comment "&#10;     * Returns true if the given string is already encoded to safe characters.&#10;     *&#10;     * @param value string to check&#10;     * @param allow characters to allow&#10;     * @return true if the string is already encoded or false if it should be encoded&#10;     "
  ]
  node [
    id 41
    label "public static String decode(String s)"
    type "method"
    comment "&#10;     * Decodes '%'-escaped octets in the given string using the UTF-8 scheme.&#10;     * Replaces invalid octets with the unicode replacement character&#10;     * (&#34;\\uFFFD&#34;).&#10;     *&#10;     * @param s encoded string to decode&#10;     * @return the given string with escaped octets decoded, or null if&#10;     *  s is null&#10;     "
  ]
  node [
    id 42
    label "public static Uri withAppendedPath(Uri baseUri, String pathSegment)"
    type "method"
    comment "&#10;     * Creates a new Uri by appending an already-encoded path segment to a&#10;     * base Uri.&#10;     *&#10;     * @param baseUri Uri to append path segment to&#10;     * @param pathSegment encoded path segment to append&#10;     * @return a new Uri based on baseUri with the given segment appended to&#10;     *  the path&#10;     * @throws NullPointerException if baseUri is null&#10;     "
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
    source 0
    target 31
    type "child"
  ]
  edge [
    source 0
    target 32
    type "child"
  ]
  edge [
    source 0
    target 33
    type "child"
  ]
  edge [
    source 0
    target 34
    type "child"
  ]
  edge [
    source 0
    target 35
    type "child"
  ]
  edge [
    source 0
    target 36
    type "child"
  ]
  edge [
    source 0
    target 37
    type "child"
  ]
  edge [
    source 0
    target 38
    type "child"
  ]
  edge [
    source 0
    target 39
    type "child"
  ]
  edge [
    source 0
    target 40
    type "child"
  ]
  edge [
    source 0
    target 41
    type "child"
  ]
  edge [
    source 0
    target 42
    type "child"
  ]
  edge [
    source 23
    target 24
    type "link"
  ]
]
