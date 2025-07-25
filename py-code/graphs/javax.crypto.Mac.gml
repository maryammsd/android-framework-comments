graph [
  directed 1
  node [
    id 0
    label "javax.crypto.Mac"
    type "class"
    comment ""
  ]
  node [
    id 1
    label "public final String getAlgorithm()"
    type "method"
    comment "&#10;     * Returns the algorithm name of this <code>Mac</code> object.&#10;     *&#10;     * <p>This is the same name that was specified in one of the&#10;     * <code>getInstance</code> calls that created this&#10;     * <code>Mac</code> object.&#10;     *&#10;     * @return the algorithm name of this <code>Mac</code> object.&#10;     "
  ]
  node [
    id 2
    label "public static final Mac getInstance(String algorithm) throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns a <code>Mac</code> object that implements the&#10;     * specified MAC algorithm.&#10;     *&#10;     * <p> This method traverses the list of registered security Providers,&#10;     * starting with the most preferred Provider.&#10;     * A new Mac object encapsulating the&#10;     * MacSpi implementation from the first&#10;     * Provider that supports the specified algorithm is returned.&#10;     *&#10;     * <p> Note that the list of registered providers may be retrieved via&#10;     * the {@link Security#getProviders() Security.getProviders()} method.&#10;     *&#10;     * @param algorithm the standard name of the requested MAC algorithm.&#10;     * See the Mac section in the <a href=&#10;     *   &#34;{@docRoot}/../technotes/guides/security/StandardNames.html#Mac&#34;>&#10;     * Java Cryptography Architecture Standard Algorithm Name Documentation</a>&#10;     * for information about standard algorithm names.&#10;     *&#10;     * @return the new <code>Mac</code> object.&#10;     *&#10;     * @exception NoSuchAlgorithmException if no Provider supports a&#10;     *          MacSpi implementation for the&#10;     *          specified algorithm.&#10;     *&#10;     * @see java.security.Provider&#10;     "
  ]
  node [
    id 3
    label "getProviders()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "public static final Mac getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException"
    type "method"
    comment "&#10;     * Returns a <code>Mac</code> object that implements the&#10;     * specified MAC algorithm.&#10;     *&#10;     * <p> A new Mac object encapsulating the&#10;     * MacSpi implementation from the specified provider&#10;     * is returned.  The specified provider must be registered&#10;     * in the security provider list.&#10;     *&#10;     * <p> Note that the list of registered providers may be retrieved via&#10;     * the {@link Security#getProviders() Security.getProviders()} method.&#10;     *&#10;     * @param algorithm the standard name of the requested MAC algorithm.&#10;     * See the Mac section in the <a href=&#10;     *   &#34;{@docRoot}/../technotes/guides/security/StandardNames.html#Mac&#34;>&#10;     * Java Cryptography Architecture Standard Algorithm Name Documentation</a>&#10;     * for information about standard algorithm names.&#10;     *&#10;     * @param provider the name of the provider.&#10;     *&#10;     * @return the new <code>Mac</code> object.&#10;     *&#10;     * @exception NoSuchAlgorithmException if a MacSpi&#10;     *          implementation for the specified algorithm is not&#10;     *          available from the specified provider.&#10;     *&#10;     * @exception NoSuchProviderException if the specified provider is not&#10;     *          registered in the security provider list.&#10;     *&#10;     * @exception IllegalArgumentException if the <code>provider</code>&#10;     *          is null or empty.&#10;     *&#10;     * @see java.security.Provider&#10;     "
  ]
  node [
    id 5
    label "public static final Mac getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns a <code>Mac</code> object that implements the&#10;     * specified MAC algorithm.&#10;     *&#10;     * <p> A new Mac object encapsulating the&#10;     * MacSpi implementation from the specified Provider&#10;     * object is returned.  Note that the specified Provider object&#10;     * does not have to be registered in the provider list.&#10;     *&#10;     * @param algorithm the standard name of the requested MAC algorithm.&#10;     * See the Mac section in the <a href=&#10;     *   &#34;{@docRoot}/../technotes/guides/security/StandardNames.html#Mac&#34;>&#10;     * Java Cryptography Architecture Standard Algorithm Name Documentation</a>&#10;     * for information about standard algorithm names.&#10;     *&#10;     * @param provider the provider.&#10;     *&#10;     * @return the new <code>Mac</code> object.&#10;     *&#10;     * @exception NoSuchAlgorithmException if a MacSpi&#10;     *          implementation for the specified algorithm is not available&#10;     *          from the specified Provider object.&#10;     *&#10;     * @exception IllegalArgumentException if the <code>provider</code>&#10;     *          is null.&#10;     *&#10;     * @see java.security.Provider&#10;     "
  ]
  node [
    id 6
    label " void chooseFirstProvider()"
    type "method"
    comment "&#10;     * Choose the Spi from the first provider available. Used if&#10;     * delayed provider selection is not possible because init()&#10;     * is not the first method called.&#10;     "
  ]
  node [
    id 7
    label "public final Provider getProvider()"
    type "method"
    comment "&#10;     * Returns the provider of this <code>Mac</code> object.&#10;     *&#10;     * @return the provider of this <code>Mac</code> object.&#10;     "
  ]
  node [
    id 8
    label "public final int getMacLength()"
    type "method"
    comment "&#10;     * Returns the length of the MAC in bytes.&#10;     *&#10;     * @return the MAC length in bytes.&#10;     "
  ]
  node [
    id 9
    label "public final void init(Key key) throws InvalidKeyException"
    type "method"
    comment "&#10;     * Initializes this <code>Mac</code> object with the given key.&#10;     *&#10;     * @param key the key.&#10;     *&#10;     * @exception InvalidKeyException if the given key is inappropriate for&#10;     * initializing this MAC.&#10;     "
  ]
  node [
    id 10
    label "public final void init(Key key, AlgorithmParameterSpec params) throws InvalidKeyException, InvalidAlgorithmParameterException"
    type "method"
    comment "&#10;     * Initializes this <code>Mac</code> object with the given key and&#10;     * algorithm parameters.&#10;     *&#10;     * @param key the key.&#10;     * @param params the algorithm parameters.&#10;     *&#10;     * @exception InvalidKeyException if the given key is inappropriate for&#10;     * initializing this MAC.&#10;     * @exception InvalidAlgorithmParameterException if the given algorithm&#10;     * parameters are inappropriate for this MAC.&#10;     "
  ]
  node [
    id 11
    label "public final void update(byte input) throws IllegalStateException"
    type "method"
    comment "&#10;     * Processes the given byte.&#10;     *&#10;     * @param input the input byte to be processed.&#10;     *&#10;     * @exception IllegalStateException if this <code>Mac</code> has not been&#10;     * initialized.&#10;     "
  ]
  node [
    id 12
    label "public final void update(byte[] input) throws IllegalStateException"
    type "method"
    comment "&#10;     * Processes the given array of bytes.&#10;     *&#10;     * @param input the array of bytes to be processed.&#10;     *&#10;     * @exception IllegalStateException if this <code>Mac</code> has not been&#10;     * initialized.&#10;     "
  ]
  node [
    id 13
    label "public final void update(byte[] input, int offset, int len) throws IllegalStateException"
    type "method"
    comment "&#10;     * Processes the first <code>len</code> bytes in <code>input</code>,&#10;     * starting at <code>offset</code> inclusive.&#10;     *&#10;     * @param input the input buffer.&#10;     * @param offset the offset in <code>input</code> where the input starts.&#10;     * @param len the number of bytes to process.&#10;     *&#10;     * @exception IllegalStateException if this <code>Mac</code> has not been&#10;     * initialized.&#10;     "
  ]
  node [
    id 14
    label "public final void update(ByteBuffer input)"
    type "method"
    comment "&#10;     * Processes <code>input.remaining()</code> bytes in the ByteBuffer&#10;     * <code>input</code>, starting at <code>input.position()</code>.&#10;     * Upon return, the buffer's position will be equal to its limit;&#10;     * its limit will not have changed.&#10;     *&#10;     * @param input the ByteBuffer&#10;     *&#10;     * @exception IllegalStateException if this <code>Mac</code> has not been&#10;     * initialized.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 15
    label "public final byte[] doFinal() throws IllegalStateException"
    type "method"
    comment "&#10;     * Finishes the MAC operation.&#10;     *&#10;     * <p>A call to this method resets this <code>Mac</code> object to the&#10;     * state it was in when previously initialized via a call to&#10;     * <code>init(Key)</code> or&#10;     * <code>init(Key, AlgorithmParameterSpec)</code>.&#10;     * That is, the object is reset and available to generate another MAC from&#10;     * the same key, if desired, via new calls to <code>update</code> and&#10;     * <code>doFinal</code>.&#10;     * (In order to reuse this <code>Mac</code> object with a different key,&#10;     * it must be reinitialized via a call to <code>init(Key)</code> or&#10;     * <code>init(Key, AlgorithmParameterSpec)</code>.&#10;     *&#10;     * @return the MAC result.&#10;     *&#10;     * @exception IllegalStateException if this <code>Mac</code> has not been&#10;     * initialized.&#10;     "
  ]
  node [
    id 16
    label "public final void doFinal(byte[] output, int outOffset) throws ShortBufferException, IllegalStateException"
    type "method"
    comment "&#10;     * Finishes the MAC operation.&#10;     *&#10;     * <p>A call to this method resets this <code>Mac</code> object to the&#10;     * state it was in when previously initialized via a call to&#10;     * <code>init(Key)</code> or&#10;     * <code>init(Key, AlgorithmParameterSpec)</code>.&#10;     * That is, the object is reset and available to generate another MAC from&#10;     * the same key, if desired, via new calls to <code>update</code> and&#10;     * <code>doFinal</code>.&#10;     * (In order to reuse this <code>Mac</code> object with a different key,&#10;     * it must be reinitialized via a call to <code>init(Key)</code> or&#10;     * <code>init(Key, AlgorithmParameterSpec)</code>.&#10;     *&#10;     * <p>The MAC result is stored in <code>output</code>, starting at&#10;     * <code>outOffset</code> inclusive.&#10;     *&#10;     * @param output the buffer where the MAC result is stored&#10;     * @param outOffset the offset in <code>output</code> where the MAC is&#10;     * stored&#10;     *&#10;     * @exception ShortBufferException if the given output buffer is too small&#10;     * to hold the result&#10;     * @exception IllegalStateException if this <code>Mac</code> has not been&#10;     * initialized.&#10;     "
  ]
  node [
    id 17
    label "public final byte[] doFinal(byte[] input) throws IllegalStateException"
    type "method"
    comment "&#10;     * Processes the given array of bytes and finishes the MAC operation.&#10;     *&#10;     * <p>A call to this method resets this <code>Mac</code> object to the&#10;     * state it was in when previously initialized via a call to&#10;     * <code>init(Key)</code> or&#10;     * <code>init(Key, AlgorithmParameterSpec)</code>.&#10;     * That is, the object is reset and available to generate another MAC from&#10;     * the same key, if desired, via new calls to <code>update</code> and&#10;     * <code>doFinal</code>.&#10;     * (In order to reuse this <code>Mac</code> object with a different key,&#10;     * it must be reinitialized via a call to <code>init(Key)</code> or&#10;     * <code>init(Key, AlgorithmParameterSpec)</code>.&#10;     *&#10;     * @param input data in bytes&#10;     * @return the MAC result.&#10;     *&#10;     * @exception IllegalStateException if this <code>Mac</code> has not been&#10;     * initialized.&#10;     "
  ]
  node [
    id 18
    label "public final void reset()"
    type "method"
    comment "&#10;     * Resets this <code>Mac</code> object.&#10;     *&#10;     * <p>A call to this method resets this <code>Mac</code> object to the&#10;     * state it was in when previously initialized via a call to&#10;     * <code>init(Key)</code> or&#10;     * <code>init(Key, AlgorithmParameterSpec)</code>.&#10;     * That is, the object is reset and available to generate another MAC from&#10;     * the same key, if desired, via new calls to <code>update</code> and&#10;     * <code>doFinal</code>.&#10;     * (In order to reuse this <code>Mac</code> object with a different key,&#10;     * it must be reinitialized via a call to <code>init(Key)</code> or&#10;     * <code>init(Key, AlgorithmParameterSpec)</code>.&#10;     "
  ]
  node [
    id 19
    label "public final Object clone() throws CloneNotSupportedException"
    type "method"
    comment "&#10;     * Returns a clone if the provider implementation is cloneable.&#10;     *&#10;     * @return a clone if the provider implementation is cloneable.&#10;     *&#10;     * @exception CloneNotSupportedException if this is called on a&#10;     * delegate that does not support <code>Cloneable</code>.&#10;     "
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
    source 2
    target 3
    type "link"
  ]
  edge [
    source 4
    target 3
    type "link"
  ]
]
