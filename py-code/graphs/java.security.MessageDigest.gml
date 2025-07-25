graph [
  directed 1
  node [
    id 0
    label "java.security.MessageDigest"
    type "class"
    comment ""
  ]
  node [
    id 1
    label "public static MessageDigest getInstance(String algorithm) throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns a MessageDigest object that implements the specified digest&#10;     * algorithm.&#10;     *&#10;     * <p> This method traverses the list of registered security Providers,&#10;     * starting with the most preferred Provider.&#10;     * A new MessageDigest object encapsulating the&#10;     * MessageDigestSpi implementation from the first&#10;     * Provider that supports the specified algorithm is returned.&#10;     *&#10;     * <p> Note that the list of registered providers may be retrieved via&#10;     * the {@link Security#getProviders() Security.getProviders()} method.&#10;     *&#10;     * @implNote&#10;     * The JDK Reference Implementation additionally uses the&#10;     * {@code jdk.security.provider.preferred}&#10;     * {@link Security#getProperty(String) Security} property to determine&#10;     * the preferred provider order for the specified algorithm. This&#10;     * may be different than the order of providers returned by&#10;     * {@link Security#getProviders() Security.getProviders()}.&#10;     *&#10;     * @param algorithm the name of the algorithm requested.&#10;     * See the MessageDigest section in the <a href=&#10;     * &#34;{@docRoot}/../specs/security/standard-names.html#messagedigest-algorithms&#34;>&#10;     * Java Security Standard Algorithm Names Specification</a>&#10;     * for information about standard algorithm names.&#10;     *&#10;     * @return a {@code MessageDigest} object that implements the&#10;     *         specified algorithm&#10;     *&#10;     * @throws NoSuchAlgorithmException if no {@code Provider} supports a&#10;     *         {@code MessageDigestSpi} implementation for the&#10;     *         specified algorithm&#10;     *&#10;     * @throws NullPointerException if {@code algorithm} is {@code null}&#10;     *&#10;     * @see Provider&#10;     "
  ]
  node [
    id 2
    label "getProperty(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 3
    label "getProviders()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "public static MessageDigest getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException"
    type "method"
    comment "&#10;     * Returns a MessageDigest object that implements the specified digest&#10;     * algorithm.&#10;     *&#10;     * <p> A new MessageDigest object encapsulating the&#10;     * MessageDigestSpi implementation from the specified provider&#10;     * is returned.  The specified provider must be registered&#10;     * in the security provider list.&#10;     *&#10;     * <p> Note that the list of registered providers may be retrieved via&#10;     * the {@link Security#getProviders() Security.getProviders()} method.&#10;     *&#10;     * @param algorithm the name of the algorithm requested.&#10;     * See the MessageDigest section in the <a href=&#10;     * &#34;{@docRoot}/../specs/security/standard-names.html#messagedigest-algorithms&#34;>&#10;     * Java Security Standard Algorithm Names Specification</a>&#10;     * for information about standard algorithm names.&#10;     *&#10;     * @param provider the name of the provider.&#10;     *&#10;     * @return a {@code MessageDigest} object that implements the&#10;     *         specified algorithm&#10;     *&#10;     * @throws IllegalArgumentException if the provider name is {@code null}&#10;     *         or empty&#10;     *&#10;     * @throws NoSuchAlgorithmException if a {@code MessageDigestSpi}&#10;     *         implementation for the specified algorithm is not&#10;     *         available from the specified provider&#10;     *&#10;     * @throws NoSuchProviderException if the specified provider is not&#10;     *         registered in the security provider list&#10;     *&#10;     * @throws NullPointerException if {@code algorithm} is {@code null}&#10;     *&#10;     * @see Provider&#10;     "
  ]
  node [
    id 5
    label "public static MessageDigest getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns a MessageDigest object that implements the specified digest&#10;     * algorithm.&#10;     *&#10;     * <p> A new MessageDigest object encapsulating the&#10;     * MessageDigestSpi implementation from the specified Provider&#10;     * object is returned.  Note that the specified Provider object&#10;     * does not have to be registered in the provider list.&#10;     *&#10;     * @param algorithm the name of the algorithm requested.&#10;     * See the MessageDigest section in the <a href=&#10;     * &#34;{@docRoot}/../specs/security/standard-names.html#messagedigest-algorithms&#34;>&#10;     * Java Security Standard Algorithm Names Specification</a>&#10;     * for information about standard algorithm names.&#10;     *&#10;     * @param provider the provider.&#10;     *&#10;     * @return a {@code MessageDigest} object that implements the&#10;     *         specified algorithm&#10;     *&#10;     * @throws IllegalArgumentException if the specified provider is&#10;     *         {@code null}&#10;     *&#10;     * @throws NoSuchAlgorithmException if a {@code MessageDigestSpi}&#10;     *         implementation for the specified algorithm is not available&#10;     *         from the specified {@code Provider} object&#10;     *&#10;     * @throws NullPointerException if {@code algorithm} is {@code null}&#10;     *&#10;     * @see Provider&#10;     *&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 6
    label "public final Provider getProvider()"
    type "method"
    comment "&#10;     * Returns the provider of this message digest object.&#10;     *&#10;     * @return the provider of this message digest object&#10;     "
  ]
  node [
    id 7
    label "public void update(byte input)"
    type "method"
    comment "&#10;     * Updates the digest using the specified byte.&#10;     *&#10;     * @param input the byte with which to update the digest.&#10;     "
  ]
  node [
    id 8
    label "public void update(byte[] input, int offset, int len)"
    type "method"
    comment "&#10;     * Updates the digest using the specified array of bytes, starting&#10;     * at the specified offset.&#10;     *&#10;     * @param input the array of bytes.&#10;     *&#10;     * @param offset the offset to start from in the array of bytes.&#10;     *&#10;     * @param len the number of bytes to use, starting at&#10;     * {@code offset}.&#10;     "
  ]
  node [
    id 9
    label "public void update(byte[] input)"
    type "method"
    comment "&#10;     * Updates the digest using the specified array of bytes.&#10;     *&#10;     * @param input the array of bytes.&#10;     "
  ]
  node [
    id 10
    label "public final void update(ByteBuffer input)"
    type "method"
    comment "&#10;     * Update the digest using the specified ByteBuffer. The digest is&#10;     * updated using the {@code input.remaining()} bytes starting&#10;     * at {@code input.position()}.&#10;     * Upon return, the buffer's position will be equal to its limit;&#10;     * its limit will not have changed.&#10;     *&#10;     * @param input the ByteBuffer&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 11
    label "public byte[] digest()"
    type "method"
    comment "&#10;     * Completes the hash computation by performing final operations&#10;     * such as padding. The digest is reset after this call is made.&#10;     *&#10;     * @return the array of bytes for the resulting hash value.&#10;     "
  ]
  node [
    id 12
    label "public int digest(byte[] buf, int offset, int len) throws DigestException"
    type "method"
    comment "&#10;     * Completes the hash computation by performing final operations&#10;     * such as padding. The digest is reset after this call is made.&#10;     *&#10;     * @param buf output buffer for the computed digest&#10;     *&#10;     * @param offset offset into the output buffer to begin storing the digest&#10;     *&#10;     * @param len number of bytes within buf allotted for the digest&#10;     *&#10;     * @return the number of bytes placed into {@code buf}&#10;     *&#10;     * @exception DigestException if an error occurs.&#10;     "
  ]
  node [
    id 13
    label "public byte[] digest(byte[] input)"
    type "method"
    comment "&#10;     * Performs a final update on the digest using the specified array&#10;     * of bytes, then completes the digest computation. That is, this&#10;     * method first calls {@link #update(byte[]) update(input)},&#10;     * passing the <i>input</i> array to the {@code update} method,&#10;     * then calls {@link #digest() digest()}.&#10;     *&#10;     * @param input the input to be updated before the digest is&#10;     * completed.&#10;     *&#10;     * @return the array of bytes for the resulting hash value.&#10;     "
  ]
  node [
    id 14
    label "update(byte"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 15
    label "digest()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 16
    label "public String toString()"
    type "method"
    comment "&#10;     * Returns a string representation of this message digest object.&#10;     "
  ]
  node [
    id 17
    label "public static boolean isEqual(byte[] digesta, byte[] digestb)"
    type "method"
    comment "&#10;     * Compares two digests for equality. Two digests are equal if they have&#10;     * the same length and all bytes at corresponding positions are equal.&#10;     *&#10;     * @implNote&#10;     * All bytes in {@code digesta} are examined to determine equality.&#10;     * The calculation time depends only on the length of {@code digesta}.&#10;     * It does not depend on the length of {@code digestb} or the contents&#10;     * of {@code digesta} and {@code digestb}.&#10;     *&#10;     * @param digesta one of the digests to compare.&#10;     *&#10;     * @param digestb the other digest to compare.&#10;     *&#10;     * @return true if the digests are equal, false otherwise.&#10;     "
  ]
  node [
    id 18
    label "public void reset()"
    type "method"
    comment "&#10;     * Resets the digest for further use.&#10;     "
  ]
  node [
    id 19
    label "public final String getAlgorithm()"
    type "method"
    comment "&#10;     * Returns a string that identifies the algorithm, independent of&#10;     * implementation details. The name should be a standard&#10;     * Java Security name (such as &#34;SHA-256&#34;).&#10;     * See the MessageDigest section in the <a href=&#10;     * &#34;{@docRoot}/../specs/security/standard-names.html#messagedigest-algorithms&#34;>&#10;     * Java Security Standard Algorithm Names Specification</a>&#10;     * for information about standard algorithm names.&#10;     *&#10;     * @return the name of the algorithm&#10;     "
  ]
  node [
    id 20
    label "public final int getDigestLength()"
    type "method"
    comment "&#10;     * Returns the length of the digest in bytes, or 0 if this operation is&#10;     * not supported by the provider and the implementation is not cloneable.&#10;     *&#10;     * @return the digest length in bytes, or 0 if this operation is not&#10;     * supported by the provider and the implementation is not cloneable.&#10;     *&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 21
    label "public Object clone() throws CloneNotSupportedException"
    type "method"
    comment "&#10;     * Returns a clone if the implementation is cloneable.&#10;     *&#10;     * @return a clone if the implementation is cloneable.&#10;     *&#10;     * @exception CloneNotSupportedException if this is called on an&#10;     * implementation that does not support {@code Cloneable}.&#10;     "
  ]
  edge [
    source 0
    target 1
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
    source 1
    target 2
    type "link"
  ]
  edge [
    source 1
    target 3
    type "link"
  ]
  edge [
    source 4
    target 3
    type "link"
  ]
  edge [
    source 13
    target 14
    type "link"
  ]
  edge [
    source 13
    target 15
    type "link"
  ]
]
