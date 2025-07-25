graph [
  directed 1
  node [
    id 0
    label "javax.crypto.Cipher"
    type "class"
    comment ""
  ]
  node [
    id 1
    label "public static final Cipher getInstance(String transformation) throws NoSuchAlgorithmException, NoSuchPaddingException"
    type "method"
    comment "&#10;     * Returns a <code>Cipher</code> object that implements the specified&#10;     * transformation.&#10;     *&#10;     * <p> This method traverses the list of registered security Providers,&#10;     * starting with the most preferred Provider.&#10;     * A new Cipher object encapsulating the&#10;     * CipherSpi implementation from the first&#10;     * Provider that supports the specified algorithm is returned.&#10;     *&#10;     * <p> Note that the list of registered providers may be retrieved via&#10;     * the {@link Security#getProviders() Security.getProviders()} method.&#10;     *&#10;     * @param transformation the name of the transformation, e.g.,&#10;     * <i>DES/CBC/PKCS5Padding</i>.&#10;     * See the Cipher section in the <a href=&#10;     *   &#34;{@docRoot}/../technotes/guides/security/StandardNames.html#Cipher&#34;>&#10;     * Java Cryptography Architecture Standard Algorithm Name Documentation</a>&#10;     * for information about standard transformation names.&#10;     *&#10;     * @return a cipher that implements the requested transformation.&#10;     *&#10;     * @exception NoSuchAlgorithmException if <code>transformation</code>&#10;     *          is null, empty, in an invalid format,&#10;     *          or if no Provider supports a CipherSpi implementation for the&#10;     *          specified algorithm.&#10;     *&#10;     * @exception NoSuchPaddingException if <code>transformation</code>&#10;     *          contains a padding scheme that is not available.&#10;     *&#10;     * @see java.security.Provider&#10;     "
  ]
  node [
    id 2
    label "getProviders()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 3
    label "public static final Cipher getInstance(String transformation, String provider) throws NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException"
    type "method"
    comment "&#10;     * Returns a <code>Cipher</code> object that implements the specified&#10;     * transformation.&#10;     *&#10;     * <p> A new Cipher object encapsulating the&#10;     * CipherSpi implementation from the specified provider&#10;     * is returned.  The specified provider must be registered&#10;     * in the security provider list.&#10;     *&#10;     * <p> Note that the list of registered providers may be retrieved via&#10;     * the {@link Security#getProviders() Security.getProviders()} method.&#10;     *&#10;     * @param transformation the name of the transformation,&#10;     * e.g., <i>DES/CBC/PKCS5Padding</i>.&#10;     * See the Cipher section in the <a href=&#10;     *   &#34;{@docRoot}/../technotes/guides/security/StandardNames.html#Cipher&#34;>&#10;     * Java Cryptography Architecture Standard Algorithm Name Documentation</a>&#10;     * for information about standard transformation names.&#10;     *&#10;     * @param provider the name of the provider.&#10;     *&#10;     * @return a cipher that implements the requested transformation.&#10;     *&#10;     * @exception NoSuchAlgorithmException if <code>transformation</code>&#10;     *          is null, empty, in an invalid format,&#10;     *          or if a CipherSpi implementation for the specified algorithm&#10;     *          is not available from the specified provider.&#10;     *&#10;     * @exception NoSuchProviderException if the specified provider is not&#10;     *          registered in the security provider list.&#10;     *&#10;     * @exception NoSuchPaddingException if <code>transformation</code>&#10;     *          contains a padding scheme that is not available.&#10;     *&#10;     * @exception IllegalArgumentException if the <code>provider</code>&#10;     *          is null or empty.&#10;     *&#10;     * @see java.security.Provider&#10;     "
  ]
  node [
    id 4
    label "public static final Cipher getInstance(String transformation, Provider provider) throws NoSuchAlgorithmException, NoSuchPaddingException"
    type "method"
    comment "&#10;     * Returns a <code>Cipher</code> object that implements the specified&#10;     * transformation.&#10;     *&#10;     * <p> A new Cipher object encapsulating the&#10;     * CipherSpi implementation from the specified Provider&#10;     * object is returned.  Note that the specified Provider object&#10;     * does not have to be registered in the provider list.&#10;     *&#10;     * @param transformation the name of the transformation,&#10;     * e.g., <i>DES/CBC/PKCS5Padding</i>.&#10;     * See the Cipher section in the <a href=&#10;     *   &#34;{@docRoot}/../technotes/guides/security/StandardNames.html#Cipher&#34;>&#10;     * Java Cryptography Architecture Standard Algorithm Name Documentation</a>&#10;     * for information about standard transformation names.&#10;     *&#10;     * @param provider the provider.&#10;     *&#10;     * @return a cipher that implements the requested transformation.&#10;     *&#10;     * @exception NoSuchAlgorithmException if <code>transformation</code>&#10;     *          is null, empty, in an invalid format,&#10;     *          or if a CipherSpi implementation for the specified algorithm&#10;     *          is not available from the specified Provider object.&#10;     *&#10;     * @exception NoSuchPaddingException if <code>transformation</code>&#10;     *          contains a padding scheme that is not available.&#10;     *&#10;     * @exception IllegalArgumentException if the <code>provider</code>&#10;     *          is null.&#10;     *&#10;     * @see java.security.Provider&#10;     "
  ]
  node [
    id 5
    label " void updateProviderIfNeeded()"
    type "method"
    comment "&#10;     * Choose the Spi from the first provider available. Used if&#10;     * delayed provider selection is not possible because init()&#10;     * is not the first method called.&#10;     "
  ]
  node [
    id 6
    label "public final Provider getProvider()"
    type "method"
    comment "&#10;     * Returns the provider of this {@code SecureRandom} object.&#10;     *&#10;     * @return the provider of this {@code SecureRandom} object.&#10;     "
  ]
  node [
    id 7
    label "public final String getAlgorithm()"
    type "method"
    comment "&#10;     * Returns the algorithm name of this <code>Cipher</code> object.&#10;     *&#10;     * <p>This is the same name that was specified in one of the&#10;     * <code>getInstance</code> calls that created this <code>Cipher</code>&#10;     * object..&#10;     *&#10;     * @return the algorithm name of this <code>Cipher</code> object.&#10;     "
  ]
  node [
    id 8
    label "public final int getBlockSize()"
    type "method"
    comment "&#10;     * Returns the block size (in bytes).&#10;     *&#10;     * @return the block size (in bytes), or 0 if the underlying algorithm is&#10;     * not a block cipher&#10;     "
  ]
  node [
    id 9
    label "public final int getOutputSize(int inputLen)"
    type "method"
    comment "&#10;     * Returns the length in bytes that an output buffer would need to be in&#10;     * order to hold the result of the next <code>update</code> or&#10;     * <code>doFinal</code> operation, given the input length&#10;     * <code>inputLen</code> (in bytes).&#10;     *&#10;     * <p>This call takes into account any unprocessed (buffered) data from a&#10;     * previous <code>update</code> call, padding, and AEAD tagging.&#10;     *&#10;     * <p>The actual output length of the next <code>update</code> or&#10;     * <code>doFinal</code> call may be smaller than the length returned by&#10;     * this method.&#10;     *&#10;     * @param inputLen the input length (in bytes)&#10;     *&#10;     * @return the required output buffer size (in bytes)&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not yet been initialized)&#10;     "
  ]
  node [
    id 10
    label "public final byte[] getIV()"
    type "method"
    comment "&#10;     * Returns the initialization vector (IV) in a new buffer.&#10;     *&#10;     * <p>This is useful in the case where a random IV was created,&#10;     * or in the context of password-based encryption or&#10;     * decryption, where the IV is derived from a user-supplied password.&#10;     *&#10;     * @return the initialization vector in a new buffer, or null if the&#10;     * underlying algorithm does not use an IV, or if the IV has not yet&#10;     * been set.&#10;     "
  ]
  node [
    id 11
    label "public final AlgorithmParameters getParameters()"
    type "method"
    comment "&#10;     * Returns the parameters used with this cipher.&#10;     *&#10;     * <p>The returned parameters may be the same that were used to initialize&#10;     * this cipher, or may contain a combination of default and random&#10;     * parameter values used by the underlying cipher implementation if this&#10;     * cipher requires algorithm parameters but was not initialized with any.&#10;     *&#10;     * @return the parameters used with this cipher, or null if this cipher&#10;     * does not use any parameters.&#10;     "
  ]
  node [
    id 12
    label "public final ExemptionMechanism getExemptionMechanism()"
    type "method"
    comment "&#10;     * Returns the exemption mechanism object used with this cipher.&#10;     *&#10;     * @return the exemption mechanism object used with this cipher, or&#10;     * null if this cipher does not use any exemption mechanism.&#10;     "
  ]
  node [
    id 13
    label "private static void checkOpmode(int opmode)"
    type "method"
    comment " throw InvalidParameterExeption if not"
  ]
  node [
    id 14
    label "public final void init(int opmode, Key key) throws InvalidKeyException"
    type "method"
    comment "&#10;     * Initializes this cipher with a key.&#10;     *&#10;     * <p>The cipher is initialized for one of the following four operations:&#10;     * encryption, decryption, key wrapping or key unwrapping, depending&#10;     * on the value of <code>opmode</code>.&#10;     *&#10;     * <p>If this cipher requires any algorithm parameters that cannot be&#10;     * derived from the given <code>key</code>, the underlying cipher&#10;     * implementation is supposed to generate the required parameters itself&#10;     * (using provider-specific default or random values) if it is being&#10;     * initialized for encryption or key wrapping, and raise an&#10;     * <code>InvalidKeyException</code> if it is being&#10;     * initialized for decryption or key unwrapping.&#10;     * The generated parameters can be retrieved using&#10;     * {@link #getParameters() getParameters} or&#10;     * {@link #getIV() getIV} (if the parameter is an IV).&#10;     *&#10;     * <p>If this cipher requires algorithm parameters that cannot be&#10;     * derived from the input parameters, and there are no reasonable&#10;     * provider-specific default values, initialization will&#10;     * necessarily fail.&#10;     *&#10;     * <p>If this cipher (including its underlying feedback or padding scheme)&#10;     * requires any random bytes (e.g., for parameter generation), it will get&#10;     * them using the {@link java.security.SecureRandom}&#10;     * implementation of the highest-priority&#10;     * installed provider as the source of randomness.&#10;     * (If none of the installed providers supply an implementation of&#10;     * SecureRandom, a system-provided source of randomness will be used.)&#10;     *&#10;     * <p>Note that when a Cipher object is initialized, it loses all&#10;     * previously-acquired state. In other words, initializing a Cipher is&#10;     * equivalent to creating a new instance of that Cipher and initializing&#10;     * it.&#10;     *&#10;     * @param opmode the operation mode of this cipher (this is one of&#10;     * the following:&#10;     * <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,&#10;     * <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)&#10;     * @param key the key&#10;     *&#10;     * @exception InvalidKeyException if the given key is inappropriate for&#10;     * initializing this cipher, or requires&#10;     * algorithm parameters that cannot be&#10;     * determined from the given key, or if the given key has a keysize that&#10;     * exceeds the maximum allowable keysize (as determined from the&#10;     * configured jurisdiction policy files).&#10;     * @throws UnsupportedOperationException if (@code opmode} is&#10;     * {@code WRAP_MODE} or {@code UNWRAP_MODE} but the mode is not implemented&#10;     * by the underlying {@code CipherSpi}.&#10;     "
  ]
  node [
    id 15
    label "java.security.SecureRandom"
    type "class"
    comment ""
  ]
  node [
    id 16
    label "private static String getPrngAlgorithm()"
    type "method"
    comment "&#10;     * Gets a default PRNG algorithm by looking through all registered&#10;     * providers. Returns the first PRNG algorithm of the first provider that&#10;     * has registered a SecureRandom implementation, or null if none of the&#10;     * registered providers supplies a SecureRandom implementation.&#10;     "
  ]
  node [
    id 17
    label "public static SecureRandom getInstance(String algorithm) throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns a {@code SecureRandom} object that implements the specified&#10;     * Random Number Generator (RNG) algorithm.&#10;     *&#10;     * <p> This method traverses the list of registered security Providers,&#10;     * starting with the most preferred Provider.&#10;     * A new {@code SecureRandom} object encapsulating the&#10;     * {@code SecureRandomSpi} implementation from the first&#10;     * Provider that supports the specified algorithm is returned.&#10;     *&#10;     * <p> Note that the list of registered providers may be retrieved via&#10;     * the {@link Security#getProviders() Security.getProviders()} method.&#10;     *&#10;     * @implNote&#10;     * The JDK Reference Implementation additionally uses the&#10;     * {@code jdk.security.provider.preferred}&#10;     * {@link Security#getProperty(String) Security} property to determine&#10;     * the preferred provider order for the specified algorithm. This&#10;     * may be different than the order of providers returned by&#10;     * {@link Security#getProviders() Security.getProviders()}.&#10;     *&#10;     * @param algorithm the name of the RNG algorithm.&#10;     * See the {@code SecureRandom} section in the <a href=&#10;     * &#34;{@docRoot}/../specs/security/standard-names.html#securerandom-number-generation-algorithms&#34;>&#10;     * Java Security Standard Algorithm Names Specification</a>&#10;     * for information about standard RNG algorithm names.&#10;     *&#10;     * @return the new {@code SecureRandom} object&#10;     *&#10;     * @throws NoSuchAlgorithmException if no {@code Provider} supports a&#10;     *         {@code SecureRandomSpi} implementation for the&#10;     *         specified algorithm&#10;     *&#10;     * @throws NullPointerException if {@code algorithm} is {@code null}&#10;     *&#10;     * @see Provider&#10;     *&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 18
    label "getProperty(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 19
    label "public static SecureRandom getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException"
    type "method"
    comment "&#10;     * Returns a {@code SecureRandom} object that implements the specified&#10;     * Random Number Generator (RNG) algorithm.&#10;     *&#10;     * <p> A new {@code SecureRandom} object encapsulating the&#10;     * {@code SecureRandomSpi} implementation from the specified provider&#10;     * is returned.  The specified provider must be registered&#10;     * in the security provider list.&#10;     *&#10;     * <p> Note that the list of registered providers may be retrieved via&#10;     * the {@link Security#getProviders() Security.getProviders()} method.&#10;     *&#10;     * @param algorithm the name of the RNG algorithm.&#10;     * See the {@code SecureRandom} section in the <a href=&#10;     * &#34;{@docRoot}/../specs/security/standard-names.html#securerandom-number-generation-algorithms&#34;>&#10;     * Java Security Standard Algorithm Names Specification</a>&#10;     * for information about standard RNG algorithm names.&#10;     *&#10;     * @param provider the name of the provider.&#10;     *&#10;     * @return the new {@code SecureRandom} object&#10;     *&#10;     * @throws IllegalArgumentException if the provider name is {@code null}&#10;     *         or empty&#10;     *&#10;     * @throws NoSuchAlgorithmException if a {@code SecureRandomSpi}&#10;     *         implementation for the specified algorithm is not&#10;     *         available from the specified provider&#10;     *&#10;     * @throws NoSuchProviderException if the specified provider is not&#10;     *         registered in the security provider list&#10;     *&#10;     * @throws NullPointerException if {@code algorithm} is {@code null}&#10;     *&#10;     * @see Provider&#10;     *&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 20
    label "public static SecureRandom getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns a {@code SecureRandom} object that implements the specified&#10;     * Random Number Generator (RNG) algorithm.&#10;     *&#10;     * <p> A new {@code SecureRandom} object encapsulating the&#10;     * {@code SecureRandomSpi} implementation from the specified {@code Provider}&#10;     * object is returned.  Note that the specified {@code Provider} object&#10;     * does not have to be registered in the provider list.&#10;     *&#10;     * @param algorithm the name of the RNG algorithm.&#10;     * See the {@code SecureRandom} section in the <a href=&#10;     * &#34;{@docRoot}/../specs/security/standard-names.html#securerandom-number-generation-algorithms&#34;>&#10;     * Java Security Standard Algorithm Names Specification</a>&#10;     * for information about standard RNG algorithm names.&#10;     *&#10;     * @param provider the provider.&#10;     *&#10;     * @return the new {@code SecureRandom} object&#10;     *&#10;     * @throws IllegalArgumentException if the specified provider is&#10;     *         {@code null}&#10;     *&#10;     * @throws NoSuchAlgorithmException if a {@code SecureRandomSpi}&#10;     *         implementation for the specified algorithm is not available&#10;     *         from the specified {@code Provider} object&#10;     *&#10;     * @throws NullPointerException if {@code algorithm} is {@code null}&#10;     *&#10;     * @see Provider&#10;     *&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 21
    label "public static SecureRandom getInstance(String algorithm, SecureRandomParameters params) throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns a {@code SecureRandom} object that implements the specified&#10;     * Random Number Generator (RNG) algorithm and supports the specified&#10;     * {@code SecureRandomParameters} request.&#10;     *&#10;     * <p> This method traverses the list of registered security Providers,&#10;     * starting with the most preferred Provider.&#10;     * A new {@code SecureRandom} object encapsulating the&#10;     * {@code SecureRandomSpi} implementation from the first&#10;     * Provider that supports the specified algorithm and the specified&#10;     * {@code SecureRandomParameters} is returned.&#10;     *&#10;     * <p> Note that the list of registered providers may be retrieved via&#10;     * the {@link Security#getProviders() Security.getProviders()} method.&#10;     *&#10;     * @implNote&#10;     * The JDK Reference Implementation additionally uses the&#10;     * {@code jdk.security.provider.preferred} property to determine&#10;     * the preferred provider order for the specified algorithm. This&#10;     * may be different than the order of providers returned by&#10;     * {@link Security#getProviders() Security.getProviders()}.&#10;     *&#10;     * @param algorithm the name of the RNG algorithm.&#10;     * See the {@code SecureRandom} section in the <a href=&#10;     * &#34;{@docRoot}/../specs/security/standard-names.html#securerandom-number-generation-algorithms&#34;>&#10;     * Java Security Standard Algorithm Names Specification</a>&#10;     * for information about standard RNG algorithm names.&#10;     *&#10;     * @param params the {@code SecureRandomParameters}&#10;     *               the newly created {@code SecureRandom} object must support.&#10;     *&#10;     * @return the new {@code SecureRandom} object&#10;     *&#10;     * @throws IllegalArgumentException if the specified params is&#10;     *         {@code null}&#10;     *&#10;     * @throws NoSuchAlgorithmException if no Provider supports a&#10;     *         {@code SecureRandomSpi} implementation for the specified&#10;     *         algorithm and parameters&#10;     *&#10;     * @throws NullPointerException if {@code algorithm} is {@code null}&#10;     *&#10;     * @see Provider&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 22
    label "public static SecureRandom getInstance(String algorithm, SecureRandomParameters params, String provider) throws NoSuchAlgorithmException, NoSuchProviderException"
    type "method"
    comment "&#10;     * Returns a {@code SecureRandom} object that implements the specified&#10;     * Random Number Generator (RNG) algorithm and supports the specified&#10;     * {@code SecureRandomParameters} request.&#10;     *&#10;     * <p> A new {@code SecureRandom} object encapsulating the&#10;     * {@code SecureRandomSpi} implementation from the specified provider&#10;     * is returned.  The specified provider must be registered&#10;     * in the security provider list.&#10;     *&#10;     * <p> Note that the list of registered providers may be retrieved via&#10;     * the {@link Security#getProviders() Security.getProviders()} method.&#10;     *&#10;     * @param algorithm the name of the RNG algorithm.&#10;     * See the {@code SecureRandom} section in the <a href=&#10;     * &#34;{@docRoot}/../specs/security/standard-names.html#securerandom-number-generation-algorithms&#34;>&#10;     * Java Security Standard Algorithm Names Specification</a>&#10;     * for information about standard RNG algorithm names.&#10;     *&#10;     * @param params the {@code SecureRandomParameters}&#10;     *               the newly created {@code SecureRandom} object must support.&#10;     *&#10;     * @param provider the name of the provider.&#10;     *&#10;     * @return the new {@code SecureRandom} object&#10;     *&#10;     * @throws IllegalArgumentException if the provider name is {@code null}&#10;     *         or empty, or params is {@code null}&#10;     *&#10;     * @throws NoSuchAlgorithmException if the specified provider does not&#10;     *         support a {@code SecureRandomSpi} implementation for the&#10;     *         specified algorithm and parameters&#10;     *&#10;     * @throws NoSuchProviderException if the specified provider is not&#10;     *         registered in the security provider list&#10;     *&#10;     * @throws NullPointerException if {@code algorithm} is {@code null}&#10;     *&#10;     * @see Provider&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 23
    label "public static SecureRandom getInstance(String algorithm, SecureRandomParameters params, Provider provider) throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns a {@code SecureRandom} object that implements the specified&#10;     * Random Number Generator (RNG) algorithm and supports the specified&#10;     * {@code SecureRandomParameters} request.&#10;     *&#10;     * <p> A new {@code SecureRandom} object encapsulating the&#10;     * {@code SecureRandomSpi} implementation from the specified&#10;     * {@code Provider} object is returned.  Note that the specified&#10;     * {@code Provider} object does not have to be registered in the&#10;     * provider list.&#10;     *&#10;     * @param algorithm the name of the RNG algorithm.&#10;     * See the {@code SecureRandom} section in the <a href=&#10;     * &#34;{@docRoot}/../specs/security/standard-names.html#securerandom-number-generation-algorithms&#34;>&#10;     * Java Security Standard Algorithm Names Specification</a>&#10;     * for information about standard RNG algorithm names.&#10;     *&#10;     * @param params the {@code SecureRandomParameters}&#10;     *               the newly created {@code SecureRandom} object must support.&#10;     *&#10;     * @param provider the provider.&#10;     *&#10;     * @return the new {@code SecureRandom} object&#10;     *&#10;     * @throws IllegalArgumentException if the specified provider or params&#10;     *         is {@code null}&#10;     *&#10;     * @throws NoSuchAlgorithmException if the specified provider does not&#10;     *         support a {@code SecureRandomSpi} implementation for the&#10;     *         specified algorithm and parameters&#10;     *&#10;     * @throws NullPointerException if {@code algorithm} is {@code null}&#10;     *&#10;     * @see Provider&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 24
    label "public String getAlgorithm()"
    type "method"
    comment "&#10;     * Returns the name of the algorithm implemented by this&#10;     * {@code SecureRandom} object.&#10;     *&#10;     * @return the name of the algorithm or {@code unknown}&#10;     *          if the algorithm name cannot be determined.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 25
    label "public String toString()"
    type "method"
    comment "&#10;     * Returns a Human-readable string representation of this&#10;     * {@code SecureRandom}.&#10;     *&#10;     * @return the string representation&#10;     "
  ]
  node [
    id 26
    label "public SecureRandomParameters getParameters()"
    type "method"
    comment "&#10;     * Returns the effective {@link SecureRandomParameters} for this&#10;     * {@code SecureRandom} instance.&#10;     * <p>&#10;     * The returned value can be different from the&#10;     * {@code SecureRandomParameters} object passed into a {@code getInstance}&#10;     * method, but it cannot change during the lifetime of this&#10;     * {@code SecureRandom} object.&#10;     * <p>&#10;     * A caller can use the returned value to find out what features this&#10;     * {@code SecureRandom} supports.&#10;     *&#10;     * @return the effective {@link SecureRandomParameters} parameters,&#10;     * or {@code null} if no parameters were used.&#10;     *&#10;     * @since 9&#10;     * @see SecureRandomSpi&#10;     "
  ]
  node [
    id 27
    label "SecureRandomParameters"
  ]
  node [
    id 28
    label "public void setSeed(byte[] seed)"
    type "method"
    comment "&#10;     * Reseeds this random object with the given seed. The seed supplements,&#10;     * rather than replaces, the existing seed. Thus, repeated calls are&#10;     * guaranteed never to reduce randomness.&#10;     * <p>&#10;     * A PRNG {@code SecureRandom} will not seed itself automatically if&#10;     * {@code setSeed} is called before any {@code nextBytes} or {@code reseed}&#10;     * calls. The caller should make sure that the {@code seed} argument&#10;     * contains enough entropy for the security of this {@code SecureRandom}.&#10;     *&#10;     * @param seed the seed.&#10;     *&#10;     * @see #getSeed&#10;     "
  ]
  node [
    id 29
    label "public void setSeed(long seed)"
    type "method"
    comment "&#10;     * Reseeds this random object, using the eight bytes contained&#10;     * in the given {@code long seed}. The given seed supplements,&#10;     * rather than replaces, the existing seed. Thus, repeated calls&#10;     * are guaranteed never to reduce randomness.&#10;     *&#10;     * <p>This method is defined for compatibility with&#10;     * {@code java.util.Random}.&#10;     *&#10;     * @param seed the seed.&#10;     *&#10;     * @see #getSeed&#10;     "
  ]
  node [
    id 30
    label "public void nextBytes(byte[] bytes)"
    type "method"
    comment "&#10;     * Generates a user-specified number of random bytes.&#10;     *&#10;     * @param bytes the array to be filled in with random bytes.&#10;     "
  ]
  node [
    id 31
    label "public void nextBytes(byte[] bytes, SecureRandomParameters params)"
    type "method"
    comment "&#10;     * Generates a user-specified number of random bytes with&#10;     * additional parameters.&#10;     *&#10;     * @param bytes the array to be filled in with random bytes&#10;     * @param params additional parameters&#10;     * @throws NullPointerException if {@code bytes} is null&#10;     * @throws UnsupportedOperationException if the underlying provider&#10;     *         implementation has not overridden this method&#10;     * @throws IllegalArgumentException if {@code params} is {@code null},&#10;     *         illegal or unsupported by this {@code SecureRandom}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 32
    label "protected final int next(int numBits)"
    type "method"
    comment "&#10;     * Generates an integer containing the user-specified number of&#10;     * pseudo-random bits (right justified, with leading zeros).  This&#10;     * method overrides a {@code java.util.Random} method, and serves&#10;     * to provide a source of random bits to all of the methods inherited&#10;     * from that class (for example, {@code nextInt},&#10;     * {@code nextLong}, and {@code nextFloat}).&#10;     *&#10;     * @param numBits number of pseudo-random bits to be generated, where&#10;     * {@code 0 <= numBits <= 32}.&#10;     *&#10;     * @return an {@code int} containing the user-specified number&#10;     * of pseudo-random bits (right justified, with leading zeros).&#10;     "
  ]
  node [
    id 33
    label "public static byte[] getSeed(int numBytes)"
    type "method"
    comment "&#10;     * Returns the given number of seed bytes, computed using the seed&#10;     * generation algorithm that this class uses to seed itself.  This&#10;     * call may be used to seed other random number generators.&#10;     *&#10;     * <p>This method is only included for backwards compatibility.&#10;     * The caller is encouraged to use one of the alternative&#10;     * {@code getInstance} methods to obtain a {@code SecureRandom} object, and&#10;     * then call the {@code generateSeed} method to obtain seed bytes&#10;     * from that object.&#10;     *&#10;     * @param numBytes the number of seed bytes to generate.&#10;     *&#10;     * @throws IllegalArgumentException if {@code numBytes} is negative&#10;     * @return the seed bytes.&#10;     *&#10;     * @see #setSeed&#10;     "
  ]
  node [
    id 34
    label "public byte[] generateSeed(int numBytes)"
    type "method"
    comment "&#10;     * Returns the given number of seed bytes, computed using the seed&#10;     * generation algorithm that this class uses to seed itself.  This&#10;     * call may be used to seed other random number generators.&#10;     *&#10;     * @param numBytes the number of seed bytes to generate.&#10;     * @throws IllegalArgumentException if {@code numBytes} is negative&#10;     * @return the seed bytes.&#10;     "
  ]
  node [
    id 35
    label "private static byte[] longToByteArray(long l)"
    type "method"
    comment "&#10;     * Helper function to convert a long into a byte array (least significant&#10;     * byte first).&#10;     "
  ]
  node [
    id 36
    label "public static SecureRandom getInstanceStrong() throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns a {@code SecureRandom} object.&#10;     *&#10;     * In Android this is equivalent to get a SHA1PRNG from AndroidOpenSSL.&#10;     *&#10;     * Some situations require strong random values, such as when&#10;     * creating high-value/long-lived secrets like RSA public/private&#10;     * keys.  To help guide applications in selecting a suitable strong&#10;     * {@code SecureRandom} implementation, Java distributions&#10;     * include a list of known strong {@code SecureRandom}&#10;     * implementations in the {@code securerandom.strongAlgorithms}&#10;     * Security property.&#10;     * <p>&#10;     * Every implementation of the Java platform is required to&#10;     * support at least one strong {@code SecureRandom} implementation.&#10;     *&#10;     * @return a strong {@code SecureRandom} implementation&#10;     *&#10;     * @throws NoSuchAlgorithmException if no algorithm is available&#10;     *&#10;     * @see Security#getProperty(String)&#10;     *&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 37
    label "public void reseed()"
    type "method"
    comment "&#10;     * Reseeds this {@code SecureRandom} with entropy input read from its&#10;     * entropy source.&#10;     *&#10;     * @throws UnsupportedOperationException if the underlying provider&#10;     *         implementation has not overridden this method.&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 38
    label "public void reseed(SecureRandomParameters params)"
    type "method"
    comment "&#10;     * Reseeds this {@code SecureRandom} with entropy input read from its&#10;     * entropy source with additional parameters.&#10;     * <p>&#10;     * Note that entropy is obtained from an entropy source. While&#10;     * some data in {@code params} may contain entropy, its main usage is to&#10;     * provide diversity.&#10;     *&#10;     * @param params extra parameters&#10;     * @throws UnsupportedOperationException if the underlying provider&#10;     *         implementation has not overridden this method.&#10;     * @throws IllegalArgumentException if {@code params} is {@code null},&#10;     *         illegal or unsupported by this {@code SecureRandom}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 39
    label "getIV()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 40
    label "getParameters()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 41
    label "public final void init(int opmode, Key key, SecureRandom random) throws InvalidKeyException"
    type "method"
    comment "&#10;     * Initializes this cipher with a key and a source of randomness.&#10;     *&#10;     * <p>The cipher is initialized for one of the following four operations:&#10;     * encryption, decryption, key wrapping or  key unwrapping, depending&#10;     * on the value of <code>opmode</code>.&#10;     *&#10;     * <p>If this cipher requires any algorithm parameters that cannot be&#10;     * derived from the given <code>key</code>, the underlying cipher&#10;     * implementation is supposed to generate the required parameters itself&#10;     * (using provider-specific default or random values) if it is being&#10;     * initialized for encryption or key wrapping, and raise an&#10;     * <code>InvalidKeyException</code> if it is being&#10;     * initialized for decryption or key unwrapping.&#10;     * The generated parameters can be retrieved using&#10;     * {@link #getParameters() getParameters} or&#10;     * {@link #getIV() getIV} (if the parameter is an IV).&#10;     *&#10;     * <p>If this cipher requires algorithm parameters that cannot be&#10;     * derived from the input parameters, and there are no reasonable&#10;     * provider-specific default values, initialization will&#10;     * necessarily fail.&#10;     *&#10;     * <p>If this cipher (including its underlying feedback or padding scheme)&#10;     * requires any random bytes (e.g., for parameter generation), it will get&#10;     * them from <code>random</code>.&#10;     *&#10;     * <p>Note that when a Cipher object is initialized, it loses all&#10;     * previously-acquired state. In other words, initializing a Cipher is&#10;     * equivalent to creating a new instance of that Cipher and initializing&#10;     * it.&#10;     *&#10;     * @param opmode the operation mode of this cipher (this is one of the&#10;     * following:&#10;     * <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,&#10;     * <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)&#10;     * @param key the encryption key&#10;     * @param random the source of randomness&#10;     *&#10;     * @exception InvalidKeyException if the given key is inappropriate for&#10;     * initializing this cipher, or requires&#10;     * algorithm parameters that cannot be&#10;     * determined from the given key, or if the given key has a keysize that&#10;     * exceeds the maximum allowable keysize (as determined from the&#10;     * configured jurisdiction policy files).&#10;     * @throws UnsupportedOperationException if (@code opmode} is&#10;     * {@code WRAP_MODE} or {@code UNWRAP_MODE} but the mode is not implemented&#10;     * by the underlying {@code CipherSpi}.&#10;     "
  ]
  node [
    id 42
    label "public final void init(int opmode, Key key, AlgorithmParameterSpec params) throws InvalidKeyException, InvalidAlgorithmParameterException"
    type "method"
    comment "&#10;     * Initializes this cipher with a key and a set of algorithm&#10;     * parameters.&#10;     *&#10;     * <p>The cipher is initialized for one of the following four operations:&#10;     * encryption, decryption, key wrapping or  key unwrapping, depending&#10;     * on the value of <code>opmode</code>.&#10;     *&#10;     * <p>If this cipher requires any algorithm parameters and&#10;     * <code>params</code> is null, the underlying cipher implementation is&#10;     * supposed to generate the required parameters itself (using&#10;     * provider-specific default or random values) if it is being&#10;     * initialized for encryption or key wrapping, and raise an&#10;     * <code>InvalidAlgorithmParameterException</code> if it is being&#10;     * initialized for decryption or key unwrapping.&#10;     * The generated parameters can be retrieved using&#10;     * {@link #getParameters() getParameters} or&#10;     * {@link #getIV() getIV} (if the parameter is an IV).&#10;     *&#10;     * <p>If this cipher requires algorithm parameters that cannot be&#10;     * derived from the input parameters, and there are no reasonable&#10;     * provider-specific default values, initialization will&#10;     * necessarily fail.&#10;     *&#10;     * <p>If this cipher (including its underlying feedback or padding scheme)&#10;     * requires any random bytes (e.g., for parameter generation), it will get&#10;     * them using the {@link java.security.SecureRandom}&#10;     * implementation of the highest-priority&#10;     * installed provider as the source of randomness.&#10;     * (If none of the installed providers supply an implementation of&#10;     * SecureRandom, a system-provided source of randomness will be used.)&#10;     *&#10;     * <p>Note that when a Cipher object is initialized, it loses all&#10;     * previously-acquired state. In other words, initializing a Cipher is&#10;     * equivalent to creating a new instance of that Cipher and initializing&#10;     * it.&#10;     *&#10;     * @param opmode the operation mode of this cipher (this is one of the&#10;     * following:&#10;     * <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,&#10;     * <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)&#10;     * @param key the encryption key&#10;     * @param params the algorithm parameters&#10;     *&#10;     * @exception InvalidKeyException if the given key is inappropriate for&#10;     * initializing this cipher, or its keysize exceeds the maximum allowable&#10;     * keysize (as determined from the configured jurisdiction policy files).&#10;     * @exception InvalidAlgorithmParameterException if the given algorithm&#10;     * parameters are inappropriate for this cipher,&#10;     * or this cipher requires&#10;     * algorithm parameters and <code>params</code> is null, or the given&#10;     * algorithm parameters imply a cryptographic strength that would exceed&#10;     * the legal limits (as determined from the configured jurisdiction&#10;     * policy files).&#10;     * @throws UnsupportedOperationException if (@code opmode} is&#10;     * {@code WRAP_MODE} or {@code UNWRAP_MODE} but the mode is not implemented&#10;     * by the underlying {@code CipherSpi}.&#10;     "
  ]
  node [
    id 43
    label "public final void init(int opmode, Key key, AlgorithmParameterSpec params, SecureRandom random) throws InvalidKeyException, InvalidAlgorithmParameterException"
    type "method"
    comment "&#10;     * Initializes this cipher with a key, a set of algorithm&#10;     * parameters, and a source of randomness.&#10;     *&#10;     * <p>The cipher is initialized for one of the following four operations:&#10;     * encryption, decryption, key wrapping or  key unwrapping, depending&#10;     * on the value of <code>opmode</code>.&#10;     *&#10;     * <p>If this cipher requires any algorithm parameters and&#10;     * <code>params</code> is null, the underlying cipher implementation is&#10;     * supposed to generate the required parameters itself (using&#10;     * provider-specific default or random values) if it is being&#10;     * initialized for encryption or key wrapping, and raise an&#10;     * <code>InvalidAlgorithmParameterException</code> if it is being&#10;     * initialized for decryption or key unwrapping.&#10;     * The generated parameters can be retrieved using&#10;     * {@link #getParameters() getParameters} or&#10;     * {@link #getIV() getIV} (if the parameter is an IV).&#10;     *&#10;     * <p>If this cipher requires algorithm parameters that cannot be&#10;     * derived from the input parameters, and there are no reasonable&#10;     * provider-specific default values, initialization will&#10;     * necessarily fail.&#10;     *&#10;     * <p>If this cipher (including its underlying feedback or padding scheme)&#10;     * requires any random bytes (e.g., for parameter generation), it will get&#10;     * them from <code>random</code>.&#10;     *&#10;     * <p>Note that when a Cipher object is initialized, it loses all&#10;     * previously-acquired state. In other words, initializing a Cipher is&#10;     * equivalent to creating a new instance of that Cipher and initializing&#10;     * it.&#10;     *&#10;     * @param opmode the operation mode of this cipher (this is one of the&#10;     * following:&#10;     * <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,&#10;     * <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)&#10;     * @param key the encryption key&#10;     * @param params the algorithm parameters&#10;     * @param random the source of randomness&#10;     *&#10;     * @exception InvalidKeyException if the given key is inappropriate for&#10;     * initializing this cipher, or its keysize exceeds the maximum allowable&#10;     * keysize (as determined from the configured jurisdiction policy files).&#10;     * @exception InvalidAlgorithmParameterException if the given algorithm&#10;     * parameters are inappropriate for this cipher,&#10;     * or this cipher requires&#10;     * algorithm parameters and <code>params</code> is null, or the given&#10;     * algorithm parameters imply a cryptographic strength that would exceed&#10;     * the legal limits (as determined from the configured jurisdiction&#10;     * policy files).&#10;     * @throws UnsupportedOperationException if (@code opmode} is&#10;     * {@code WRAP_MODE} or {@code UNWRAP_MODE} but the mode is not implemented&#10;     * by the underlying {@code CipherSpi}.&#10;     "
  ]
  node [
    id 44
    label "public final void init(int opmode, Key key, AlgorithmParameters params) throws InvalidKeyException, InvalidAlgorithmParameterException"
    type "method"
    comment "&#10;     * Initializes this cipher with a key and a set of algorithm&#10;     * parameters.&#10;     *&#10;     * <p>The cipher is initialized for one of the following four operations:&#10;     * encryption, decryption, key wrapping or  key unwrapping, depending&#10;     * on the value of <code>opmode</code>.&#10;     *&#10;     * <p>If this cipher requires any algorithm parameters and&#10;     * <code>params</code> is null, the underlying cipher implementation is&#10;     * supposed to generate the required parameters itself (using&#10;     * provider-specific default or random values) if it is being&#10;     * initialized for encryption or key wrapping, and raise an&#10;     * <code>InvalidAlgorithmParameterException</code> if it is being&#10;     * initialized for decryption or key unwrapping.&#10;     * The generated parameters can be retrieved using&#10;     * {@link #getParameters() getParameters} or&#10;     * {@link #getIV() getIV} (if the parameter is an IV).&#10;     *&#10;     * <p>If this cipher requires algorithm parameters that cannot be&#10;     * derived from the input parameters, and there are no reasonable&#10;     * provider-specific default values, initialization will&#10;     * necessarily fail.&#10;     *&#10;     * <p>If this cipher (including its underlying feedback or padding scheme)&#10;     * requires any random bytes (e.g., for parameter generation), it will get&#10;     * them using the {@link java.security.SecureRandom}&#10;     * implementation of the highest-priority&#10;     * installed provider as the source of randomness.&#10;     * (If none of the installed providers supply an implementation of&#10;     * SecureRandom, a system-provided source of randomness will be used.)&#10;     *&#10;     * <p>Note that when a Cipher object is initialized, it loses all&#10;     * previously-acquired state. In other words, initializing a Cipher is&#10;     * equivalent to creating a new instance of that Cipher and initializing&#10;     * it.&#10;     *&#10;     * @param opmode the operation mode of this cipher (this is one of the&#10;     * following: <code>ENCRYPT_MODE</code>,&#10;     * <code>DECRYPT_MODE</code>, <code>WRAP_MODE</code>&#10;     * or <code>UNWRAP_MODE</code>)&#10;     * @param key the encryption key&#10;     * @param params the algorithm parameters&#10;     *&#10;     * @exception InvalidKeyException if the given key is inappropriate for&#10;     * initializing this cipher, or its keysize exceeds the maximum allowable&#10;     * keysize (as determined from the configured jurisdiction policy files).&#10;     * @exception InvalidAlgorithmParameterException if the given algorithm&#10;     * parameters are inappropriate for this cipher,&#10;     * or this cipher requires&#10;     * algorithm parameters and <code>params</code> is null, or the given&#10;     * algorithm parameters imply a cryptographic strength that would exceed&#10;     * the legal limits (as determined from the configured jurisdiction&#10;     * policy files).&#10;     * @throws UnsupportedOperationException if (@code opmode} is&#10;     * {@code WRAP_MODE} or {@code UNWRAP_MODE} but the mode is not implemented&#10;     * by the underlying {@code CipherSpi}.&#10;     "
  ]
  node [
    id 45
    label "public final void init(int opmode, Key key, AlgorithmParameters params, SecureRandom random) throws InvalidKeyException, InvalidAlgorithmParameterException"
    type "method"
    comment "&#10;     * Initializes this cipher with a key, a set of algorithm&#10;     * parameters, and a source of randomness.&#10;     *&#10;     * <p>The cipher is initialized for one of the following four operations:&#10;     * encryption, decryption, key wrapping or  key unwrapping, depending&#10;     * on the value of <code>opmode</code>.&#10;     *&#10;     * <p>If this cipher requires any algorithm parameters and&#10;     * <code>params</code> is null, the underlying cipher implementation is&#10;     * supposed to generate the required parameters itself (using&#10;     * provider-specific default or random values) if it is being&#10;     * initialized for encryption or key wrapping, and raise an&#10;     * <code>InvalidAlgorithmParameterException</code> if it is being&#10;     * initialized for decryption or key unwrapping.&#10;     * The generated parameters can be retrieved using&#10;     * {@link #getParameters() getParameters} or&#10;     * {@link #getIV() getIV} (if the parameter is an IV).&#10;     *&#10;     * <p>If this cipher requires algorithm parameters that cannot be&#10;     * derived from the input parameters, and there are no reasonable&#10;     * provider-specific default values, initialization will&#10;     * necessarily fail.&#10;     *&#10;     * <p>If this cipher (including its underlying feedback or padding scheme)&#10;     * requires any random bytes (e.g., for parameter generation), it will get&#10;     * them from <code>random</code>.&#10;     *&#10;     * <p>Note that when a Cipher object is initialized, it loses all&#10;     * previously-acquired state. In other words, initializing a Cipher is&#10;     * equivalent to creating a new instance of that Cipher and initializing&#10;     * it.&#10;     *&#10;     * @param opmode the operation mode of this cipher (this is one of the&#10;     * following: <code>ENCRYPT_MODE</code>,&#10;     * <code>DECRYPT_MODE</code>, <code>WRAP_MODE</code>&#10;     * or <code>UNWRAP_MODE</code>)&#10;     * @param key the encryption key&#10;     * @param params the algorithm parameters&#10;     * @param random the source of randomness&#10;     *&#10;     * @exception InvalidKeyException if the given key is inappropriate for&#10;     * initializing this cipher, or its keysize exceeds the maximum allowable&#10;     * keysize (as determined from the configured jurisdiction policy files).&#10;     * @exception InvalidAlgorithmParameterException if the given algorithm&#10;     * parameters are inappropriate for this cipher,&#10;     * or this cipher requires&#10;     * algorithm parameters and <code>params</code> is null, or the given&#10;     * algorithm parameters imply a cryptographic strength that would exceed&#10;     * the legal limits (as determined from the configured jurisdiction&#10;     * policy files).&#10;     * @throws UnsupportedOperationException if (@code opmode} is&#10;     * {@code WRAP_MODE} or {@code UNWRAP_MODE} but the mode is not implemented&#10;     * by the underlying {@code CipherSpi}.&#10;     "
  ]
  node [
    id 46
    label "public final void init(int opmode, Certificate certificate) throws InvalidKeyException"
    type "method"
    comment "&#10;     * Initializes this cipher with the public key from the given certificate.&#10;     * <p> The cipher is initialized for one of the following four operations:&#10;     * encryption, decryption, key wrapping or  key unwrapping, depending&#10;     * on the value of <code>opmode</code>.&#10;     *&#10;     * <p>If the certificate is of type X.509 and has a <i>key usage</i>&#10;     * extension field marked as critical, and the value of the <i>key usage</i>&#10;     * extension field implies that the public key in&#10;     * the certificate and its corresponding private key are not&#10;     * supposed to be used for the operation represented by the value&#10;     * of <code>opmode</code>,&#10;     * an <code>InvalidKeyException</code>&#10;     * is thrown.&#10;     *&#10;     * <p> If this cipher requires any algorithm parameters that cannot be&#10;     * derived from the public key in the given certificate, the underlying&#10;     * cipher&#10;     * implementation is supposed to generate the required parameters itself&#10;     * (using provider-specific default or random values) if it is being&#10;     * initialized for encryption or key wrapping, and raise an <code>&#10;     * InvalidKeyException</code> if it is being initialized for decryption or&#10;     * key unwrapping.&#10;     * The generated parameters can be retrieved using&#10;     * {@link #getParameters() getParameters} or&#10;     * {@link #getIV() getIV} (if the parameter is an IV).&#10;     *&#10;     * <p>If this cipher requires algorithm parameters that cannot be&#10;     * derived from the input parameters, and there are no reasonable&#10;     * provider-specific default values, initialization will&#10;     * necessarily fail.&#10;     *&#10;     * <p>If this cipher (including its underlying feedback or padding scheme)&#10;     * requires any random bytes (e.g., for parameter generation), it will get&#10;     * them using the&#10;     * <code>SecureRandom</code>&#10;     * implementation of the highest-priority&#10;     * installed provider as the source of randomness.&#10;     * (If none of the installed providers supply an implementation of&#10;     * SecureRandom, a system-provided source of randomness will be used.)&#10;     *&#10;     * <p>Note that when a Cipher object is initialized, it loses all&#10;     * previously-acquired state. In other words, initializing a Cipher is&#10;     * equivalent to creating a new instance of that Cipher and initializing&#10;     * it.&#10;     *&#10;     * @param opmode the operation mode of this cipher (this is one of the&#10;     * following:&#10;     * <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,&#10;     * <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)&#10;     * @param certificate the certificate&#10;     *&#10;     * @exception InvalidKeyException if the public key in the given&#10;     * certificate is inappropriate for initializing this cipher, or this&#10;     * cipher requires algorithm parameters that cannot be determined from the&#10;     * public key in the given certificate, or the keysize of the public key&#10;     * in the given certificate has a keysize that exceeds the maximum&#10;     * allowable keysize (as determined by the configured jurisdiction policy&#10;     * files).&#10;     * @throws UnsupportedOperationException if (@code opmode} is&#10;     * {@code WRAP_MODE} or {@code UNWRAP_MODE} but the mode is not implemented&#10;     * by the underlying {@code CipherSpi}.&#10;     "
  ]
  node [
    id 47
    label "public final void init(int opmode, Certificate certificate, SecureRandom random) throws InvalidKeyException"
    type "method"
    comment "&#10;     * Initializes this cipher with the public key from the given certificate&#10;     * and&#10;     * a source of randomness.&#10;     *&#10;     * <p>The cipher is initialized for one of the following four operations:&#10;     * encryption, decryption, key wrapping&#10;     * or key unwrapping, depending on&#10;     * the value of <code>opmode</code>.&#10;     *&#10;     * <p>If the certificate is of type X.509 and has a <i>key usage</i>&#10;     * extension field marked as critical, and the value of the <i>key usage</i>&#10;     * extension field implies that the public key in&#10;     * the certificate and its corresponding private key are not&#10;     * supposed to be used for the operation represented by the value of&#10;     * <code>opmode</code>,&#10;     * an <code>InvalidKeyException</code>&#10;     * is thrown.&#10;     *&#10;     * <p>If this cipher requires any algorithm parameters that cannot be&#10;     * derived from the public key in the given <code>certificate</code>,&#10;     * the underlying cipher&#10;     * implementation is supposed to generate the required parameters itself&#10;     * (using provider-specific default or random values) if it is being&#10;     * initialized for encryption or key wrapping, and raise an&#10;     * <code>InvalidKeyException</code> if it is being&#10;     * initialized for decryption or key unwrapping.&#10;     * The generated parameters can be retrieved using&#10;     * {@link #getParameters() getParameters} or&#10;     * {@link #getIV() getIV} (if the parameter is an IV).&#10;     *&#10;     * <p>If this cipher requires algorithm parameters that cannot be&#10;     * derived from the input parameters, and there are no reasonable&#10;     * provider-specific default values, initialization will&#10;     * necessarily fail.&#10;     *&#10;     * <p>If this cipher (including its underlying feedback or padding scheme)&#10;     * requires any random bytes (e.g., for parameter generation), it will get&#10;     * them from <code>random</code>.&#10;     *&#10;     * <p>Note that when a Cipher object is initialized, it loses all&#10;     * previously-acquired state. In other words, initializing a Cipher is&#10;     * equivalent to creating a new instance of that Cipher and initializing&#10;     * it.&#10;     *&#10;     * @param opmode the operation mode of this cipher (this is one of the&#10;     * following:&#10;     * <code>ENCRYPT_MODE</code>, <code>DECRYPT_MODE</code>,&#10;     * <code>WRAP_MODE</code> or <code>UNWRAP_MODE</code>)&#10;     * @param certificate the certificate&#10;     * @param random the source of randomness&#10;     *&#10;     * @exception InvalidKeyException if the public key in the given&#10;     * certificate is inappropriate for initializing this cipher, or this&#10;     * cipher&#10;     * requires algorithm parameters that cannot be determined from the&#10;     * public key in the given certificate, or the keysize of the public key&#10;     * in the given certificate has a keysize that exceeds the maximum&#10;     * allowable keysize (as determined by the configured jurisdiction policy&#10;     * files).&#10;     * @throws UnsupportedOperationException if (@code opmode} is&#10;     * {@code WRAP_MODE} or {@code UNWRAP_MODE} but the mode is not implemented&#10;     * by the underlying {@code CipherSpi}.&#10;     "
  ]
  node [
    id 48
    label "private void checkCipherState()"
    type "method"
    comment "&#10;     * Ensures that Cipher is in a valid state for update() and doFinal()&#10;     * calls - should be initialized and in ENCRYPT_MODE or DECRYPT_MODE.&#10;     * @throws IllegalStateException if Cipher object is not in valid state.&#10;     "
  ]
  node [
    id 49
    label "public final byte[] update(byte[] input)"
    type "method"
    comment "&#10;     * Continues a multiple-part encryption or decryption operation&#10;     * (depending on how this cipher was initialized), processing another data&#10;     * part.&#10;     *&#10;     * <p>The bytes in the <code>input</code> buffer are processed, and the&#10;     * result is stored in a new buffer.&#10;     *&#10;     * <p>If <code>input</code> has a length of zero, this method returns&#10;     * <code>null</code>.&#10;     *&#10;     * @param input the input buffer&#10;     *&#10;     * @return the new buffer with the result, or null if the underlying&#10;     * cipher is a block cipher and the input data is too short to result in a&#10;     * new block.&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     "
  ]
  node [
    id 50
    label "public final byte[] update(byte[] input, int inputOffset, int inputLen)"
    type "method"
    comment "&#10;     * Continues a multiple-part encryption or decryption operation&#10;     * (depending on how this cipher was initialized), processing another data&#10;     * part.&#10;     *&#10;     * <p>The first <code>inputLen</code> bytes in the <code>input</code>&#10;     * buffer, starting at <code>inputOffset</code> inclusive, are processed,&#10;     * and the result is stored in a new buffer.&#10;     *&#10;     * <p>If <code>inputLen</code> is zero, this method returns&#10;     * <code>null</code>.&#10;     *&#10;     * @param input the input buffer&#10;     * @param inputOffset the offset in <code>input</code> where the input&#10;     * starts&#10;     * @param inputLen the input length&#10;     *&#10;     * @return the new buffer with the result, or null if the underlying&#10;     * cipher is a block cipher and the input data is too short to result in a&#10;     * new block.&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     "
  ]
  node [
    id 51
    label "public final int update(byte[] input, int inputOffset, int inputLen, byte[] output) throws ShortBufferException"
    type "method"
    comment "&#10;     * Continues a multiple-part encryption or decryption operation&#10;     * (depending on how this cipher was initialized), processing another data&#10;     * part.&#10;     *&#10;     * <p>The first <code>inputLen</code> bytes in the <code>input</code>&#10;     * buffer, starting at <code>inputOffset</code> inclusive, are processed,&#10;     * and the result is stored in the <code>output</code> buffer.&#10;     *&#10;     * <p>If the <code>output</code> buffer is too small to hold the result,&#10;     * a <code>ShortBufferException</code> is thrown. In this case, repeat this&#10;     * call with a larger output buffer. Use&#10;     * {@link #getOutputSize(int) getOutputSize} to determine how big&#10;     * the output buffer should be.&#10;     *&#10;     * <p>If <code>inputLen</code> is zero, this method returns&#10;     * a length of zero.&#10;     *&#10;     * <p>Note: this method should be copy-safe, which means the&#10;     * <code>input</code> and <code>output</code> buffers can reference&#10;     * the same byte array and no unprocessed input data is overwritten&#10;     * when the result is copied into the output buffer.&#10;     *&#10;     * @param input the input buffer&#10;     * @param inputOffset the offset in <code>input</code> where the input&#10;     * starts&#10;     * @param inputLen the input length&#10;     * @param output the buffer for the result&#10;     *&#10;     * @return the number of bytes stored in <code>output</code>&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     * @exception ShortBufferException if the given output buffer is too small&#10;     * to hold the result&#10;     "
  ]
  node [
    id 52
    label "getOutputSize(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 53
    label "public final int update(byte[] input, int inputOffset, int inputLen, byte[] output, int outputOffset) throws ShortBufferException"
    type "method"
    comment "&#10;     * Continues a multiple-part encryption or decryption operation&#10;     * (depending on how this cipher was initialized), processing another data&#10;     * part.&#10;     *&#10;     * <p>The first <code>inputLen</code> bytes in the <code>input</code>&#10;     * buffer, starting at <code>inputOffset</code> inclusive, are processed,&#10;     * and the result is stored in the <code>output</code> buffer, starting at&#10;     * <code>outputOffset</code> inclusive.&#10;     *&#10;     * <p>If the <code>output</code> buffer is too small to hold the result,&#10;     * a <code>ShortBufferException</code> is thrown. In this case, repeat this&#10;     * call with a larger output buffer. Use&#10;     * {@link #getOutputSize(int) getOutputSize} to determine how big&#10;     * the output buffer should be.&#10;     *&#10;     * <p>If <code>inputLen</code> is zero, this method returns&#10;     * a length of zero.&#10;     *&#10;     * <p>Note: this method should be copy-safe, which means the&#10;     * <code>input</code> and <code>output</code> buffers can reference&#10;     * the same byte array and no unprocessed input data is overwritten&#10;     * when the result is copied into the output buffer.&#10;     *&#10;     * @param input the input buffer&#10;     * @param inputOffset the offset in <code>input</code> where the input&#10;     * starts&#10;     * @param inputLen the input length&#10;     * @param output the buffer for the result&#10;     * @param outputOffset the offset in <code>output</code> where the result&#10;     * is stored&#10;     *&#10;     * @return the number of bytes stored in <code>output</code>&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     * @exception ShortBufferException if the given output buffer is too small&#10;     * to hold the result&#10;     "
  ]
  node [
    id 54
    label "public final int update(ByteBuffer input, ByteBuffer output) throws ShortBufferException"
    type "method"
    comment "&#10;     * Continues a multiple-part encryption or decryption operation&#10;     * (depending on how this cipher was initialized), processing another data&#10;     * part.&#10;     *&#10;     * <p>All <code>input.remaining()</code> bytes starting at&#10;     * <code>input.position()</code> are processed. The result is stored&#10;     * in the output buffer.&#10;     * Upon return, the input buffer's position will be equal&#10;     * to its limit; its limit will not have changed. The output buffer's&#10;     * position will have advanced by n, where n is the value returned&#10;     * by this method; the output buffer's limit will not have changed.&#10;     *&#10;     * <p>If <code>output.remaining()</code> bytes are insufficient to&#10;     * hold the result, a <code>ShortBufferException</code> is thrown.&#10;     * In this case, repeat this call with a larger output buffer. Use&#10;     * {@link #getOutputSize(int) getOutputSize} to determine how big&#10;     * the output buffer should be.&#10;     *&#10;     * <p>Note: this method should be copy-safe, which means the&#10;     * <code>input</code> and <code>output</code> buffers can reference&#10;     * the same block of memory and no unprocessed input data is overwritten&#10;     * when the result is copied into the output buffer.&#10;     *&#10;     * @param input the input ByteBuffer&#10;     * @param output the output ByteByffer&#10;     *&#10;     * @return the number of bytes stored in <code>output</code>&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     * @exception IllegalArgumentException if input and output are the&#10;     *   same object&#10;     * @exception ReadOnlyBufferException if the output buffer is read-only&#10;     * @exception ShortBufferException if there is insufficient space in the&#10;     * output buffer&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 55
    label "public final byte[] doFinal() throws IllegalBlockSizeException, BadPaddingException"
    type "method"
    comment "&#10;     * Finishes a multiple-part encryption or decryption operation, depending&#10;     * on how this cipher was initialized.&#10;     *&#10;     * <p>Input data that may have been buffered during a previous&#10;     * <code>update</code> operation is processed, with padding (if requested)&#10;     * being applied.&#10;     * If an AEAD mode such as GCM/CCM is being used, the authentication&#10;     * tag is appended in the case of encryption, or verified in the&#10;     * case of decryption.&#10;     * The result is stored in a new buffer.&#10;     *&#10;     * <p>Upon finishing, this method resets this cipher object to the state&#10;     * it was in when previously initialized via a call to <code>init</code>.&#10;     * That is, the object is reset and available to encrypt or decrypt&#10;     * (depending on the operation mode that was specified in the call to&#10;     * <code>init</code>) more data.&#10;     *&#10;     * <p>Note: if any exception is thrown, this cipher object may need to&#10;     * be reset before it can be used again.&#10;     *&#10;     * @return the new buffer with the result&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     * @exception IllegalBlockSizeException if this cipher is a block cipher,&#10;     * no padding has been requested (only in encryption mode), and the total&#10;     * input length of the data processed by this cipher is not a multiple of&#10;     * block size; or if this encryption algorithm is unable to&#10;     * process the input data provided.&#10;     * @exception BadPaddingException if this cipher is in decryption mode,&#10;     * and (un)padding has been requested, but the decrypted data is not&#10;     * bounded by the appropriate padding bytes&#10;     * @exception AEADBadTagException if this cipher is decrypting in an&#10;     * AEAD mode (such as GCM/CCM), and the received authentication tag&#10;     * does not match the calculated value&#10;     "
  ]
  node [
    id 56
    label "public final int doFinal(byte[] output, int outputOffset) throws IllegalBlockSizeException, ShortBufferException, BadPaddingException"
    type "method"
    comment "&#10;     * Finishes a multiple-part encryption or decryption operation, depending&#10;     * on how this cipher was initialized.&#10;     *&#10;     * <p>Input data that may have been buffered during a previous&#10;     * <code>update</code> operation is processed, with padding (if requested)&#10;     * being applied.&#10;     * If an AEAD mode such as GCM/CCM is being used, the authentication&#10;     * tag is appended in the case of encryption, or verified in the&#10;     * case of decryption.&#10;     * The result is stored in the <code>output</code> buffer, starting at&#10;     * <code>outputOffset</code> inclusive.&#10;     *&#10;     * <p>If the <code>output</code> buffer is too small to hold the result,&#10;     * a <code>ShortBufferException</code> is thrown. In this case, repeat this&#10;     * call with a larger output buffer. Use&#10;     * {@link #getOutputSize(int) getOutputSize} to determine how big&#10;     * the output buffer should be.&#10;     *&#10;     * <p>Upon finishing, this method resets this cipher object to the state&#10;     * it was in when previously initialized via a call to <code>init</code>.&#10;     * That is, the object is reset and available to encrypt or decrypt&#10;     * (depending on the operation mode that was specified in the call to&#10;     * <code>init</code>) more data.&#10;     *&#10;     * <p>Note: if any exception is thrown, this cipher object may need to&#10;     * be reset before it can be used again.&#10;     *&#10;     * @param output the buffer for the result&#10;     * @param outputOffset the offset in <code>output</code> where the result&#10;     * is stored&#10;     *&#10;     * @return the number of bytes stored in <code>output</code>&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     * @exception IllegalBlockSizeException if this cipher is a block cipher,&#10;     * no padding has been requested (only in encryption mode), and the total&#10;     * input length of the data processed by this cipher is not a multiple of&#10;     * block size; or if this encryption algorithm is unable to&#10;     * process the input data provided.&#10;     * @exception ShortBufferException if the given output buffer is too small&#10;     * to hold the result&#10;     * @exception BadPaddingException if this cipher is in decryption mode,&#10;     * and (un)padding has been requested, but the decrypted data is not&#10;     * bounded by the appropriate padding bytes&#10;     * @exception AEADBadTagException if this cipher is decrypting in an&#10;     * AEAD mode (such as GCM/CCM), and the received authentication tag&#10;     * does not match the calculated value&#10;     "
  ]
  node [
    id 57
    label "public final byte[] doFinal(byte[] input) throws IllegalBlockSizeException, BadPaddingException"
    type "method"
    comment "&#10;     * Encrypts or decrypts data in a single-part operation, or finishes a&#10;     * multiple-part operation. The data is encrypted or decrypted,&#10;     * depending on how this cipher was initialized.&#10;     *&#10;     * <p>The bytes in the <code>input</code> buffer, and any input bytes that&#10;     * may have been buffered during a previous <code>update</code> operation,&#10;     * are processed, with padding (if requested) being applied.&#10;     * If an AEAD mode such as GCM/CCM is being used, the authentication&#10;     * tag is appended in the case of encryption, or verified in the&#10;     * case of decryption.&#10;     * The result is stored in a new buffer.&#10;     *&#10;     * <p>Upon finishing, this method resets this cipher object to the state&#10;     * it was in when previously initialized via a call to <code>init</code>.&#10;     * That is, the object is reset and available to encrypt or decrypt&#10;     * (depending on the operation mode that was specified in the call to&#10;     * <code>init</code>) more data.&#10;     *&#10;     * <p>Note: if any exception is thrown, this cipher object may need to&#10;     * be reset before it can be used again.&#10;     *&#10;     * @param input the input buffer&#10;     *&#10;     * @return the new buffer with the result&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     * @exception IllegalBlockSizeException if this cipher is a block cipher,&#10;     * no padding has been requested (only in encryption mode), and the total&#10;     * input length of the data processed by this cipher is not a multiple of&#10;     * block size; or if this encryption algorithm is unable to&#10;     * process the input data provided.&#10;     * @exception BadPaddingException if this cipher is in decryption mode,&#10;     * and (un)padding has been requested, but the decrypted data is not&#10;     * bounded by the appropriate padding bytes&#10;     * @exception AEADBadTagException if this cipher is decrypting in an&#10;     * AEAD mode (such as GCM/CCM), and the received authentication tag&#10;     * does not match the calculated value&#10;     "
  ]
  node [
    id 58
    label "public final byte[] doFinal(byte[] input, int inputOffset, int inputLen) throws IllegalBlockSizeException, BadPaddingException"
    type "method"
    comment "&#10;     * Encrypts or decrypts data in a single-part operation, or finishes a&#10;     * multiple-part operation. The data is encrypted or decrypted,&#10;     * depending on how this cipher was initialized.&#10;     *&#10;     * <p>The first <code>inputLen</code> bytes in the <code>input</code>&#10;     * buffer, starting at <code>inputOffset</code> inclusive, and any input&#10;     * bytes that may have been buffered during a previous <code>update</code>&#10;     * operation, are processed, with padding (if requested) being applied.&#10;     * If an AEAD mode such as GCM/CCM is being used, the authentication&#10;     * tag is appended in the case of encryption, or verified in the&#10;     * case of decryption.&#10;     * The result is stored in a new buffer.&#10;     *&#10;     * <p>Upon finishing, this method resets this cipher object to the state&#10;     * it was in when previously initialized via a call to <code>init</code>.&#10;     * That is, the object is reset and available to encrypt or decrypt&#10;     * (depending on the operation mode that was specified in the call to&#10;     * <code>init</code>) more data.&#10;     *&#10;     * <p>Note: if any exception is thrown, this cipher object may need to&#10;     * be reset before it can be used again.&#10;     *&#10;     * @param input the input buffer&#10;     * @param inputOffset the offset in <code>input</code> where the input&#10;     * starts&#10;     * @param inputLen the input length&#10;     *&#10;     * @return the new buffer with the result&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     * @exception IllegalBlockSizeException if this cipher is a block cipher,&#10;     * no padding has been requested (only in encryption mode), and the total&#10;     * input length of the data processed by this cipher is not a multiple of&#10;     * block size; or if this encryption algorithm is unable to&#10;     * process the input data provided.&#10;     * @exception BadPaddingException if this cipher is in decryption mode,&#10;     * and (un)padding has been requested, but the decrypted data is not&#10;     * bounded by the appropriate padding bytes&#10;     * @exception AEADBadTagException if this cipher is decrypting in an&#10;     * AEAD mode (such as GCM/CCM), and the received authentication tag&#10;     * does not match the calculated value&#10;     "
  ]
  node [
    id 59
    label "public final int doFinal(byte[] input, int inputOffset, int inputLen, byte[] output) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException"
    type "method"
    comment "&#10;     * Encrypts or decrypts data in a single-part operation, or finishes a&#10;     * multiple-part operation. The data is encrypted or decrypted,&#10;     * depending on how this cipher was initialized.&#10;     *&#10;     * <p>The first <code>inputLen</code> bytes in the <code>input</code>&#10;     * buffer, starting at <code>inputOffset</code> inclusive, and any input&#10;     * bytes that may have been buffered during a previous <code>update</code>&#10;     * operation, are processed, with padding (if requested) being applied.&#10;     * If an AEAD mode such as GCM/CCM is being used, the authentication&#10;     * tag is appended in the case of encryption, or verified in the&#10;     * case of decryption.&#10;     * The result is stored in the <code>output</code> buffer.&#10;     *&#10;     * <p>If the <code>output</code> buffer is too small to hold the result,&#10;     * a <code>ShortBufferException</code> is thrown. In this case, repeat this&#10;     * call with a larger output buffer. Use&#10;     * {@link #getOutputSize(int) getOutputSize} to determine how big&#10;     * the output buffer should be.&#10;     *&#10;     * <p>Upon finishing, this method resets this cipher object to the state&#10;     * it was in when previously initialized via a call to <code>init</code>.&#10;     * That is, the object is reset and available to encrypt or decrypt&#10;     * (depending on the operation mode that was specified in the call to&#10;     * <code>init</code>) more data.&#10;     *&#10;     * <p>Note: if any exception is thrown, this cipher object may need to&#10;     * be reset before it can be used again.&#10;     *&#10;     * <p>Note: this method should be copy-safe, which means the&#10;     * <code>input</code> and <code>output</code> buffers can reference&#10;     * the same byte array and no unprocessed input data is overwritten&#10;     * when the result is copied into the output buffer.&#10;     *&#10;     * @param input the input buffer&#10;     * @param inputOffset the offset in <code>input</code> where the input&#10;     * starts&#10;     * @param inputLen the input length&#10;     * @param output the buffer for the result&#10;     *&#10;     * @return the number of bytes stored in <code>output</code>&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     * @exception IllegalBlockSizeException if this cipher is a block cipher,&#10;     * no padding has been requested (only in encryption mode), and the total&#10;     * input length of the data processed by this cipher is not a multiple of&#10;     * block size; or if this encryption algorithm is unable to&#10;     * process the input data provided.&#10;     * @exception ShortBufferException if the given output buffer is too small&#10;     * to hold the result&#10;     * @exception BadPaddingException if this cipher is in decryption mode,&#10;     * and (un)padding has been requested, but the decrypted data is not&#10;     * bounded by the appropriate padding bytes&#10;     * @exception AEADBadTagException if this cipher is decrypting in an&#10;     * AEAD mode (such as GCM/CCM), and the received authentication tag&#10;     * does not match the calculated value&#10;     "
  ]
  node [
    id 60
    label "public final int doFinal(byte[] input, int inputOffset, int inputLen, byte[] output, int outputOffset) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException"
    type "method"
    comment "&#10;     * Encrypts or decrypts data in a single-part operation, or finishes a&#10;     * multiple-part operation. The data is encrypted or decrypted,&#10;     * depending on how this cipher was initialized.&#10;     *&#10;     * <p>The first <code>inputLen</code> bytes in the <code>input</code>&#10;     * buffer, starting at <code>inputOffset</code> inclusive, and any input&#10;     * bytes that may have been buffered during a previous&#10;     * <code>update</code> operation, are processed, with padding&#10;     * (if requested) being applied.&#10;     * If an AEAD mode such as GCM/CCM is being used, the authentication&#10;     * tag is appended in the case of encryption, or verified in the&#10;     * case of decryption.&#10;     * The result is stored in the <code>output</code> buffer, starting at&#10;     * <code>outputOffset</code> inclusive.&#10;     *&#10;     * <p>If the <code>output</code> buffer is too small to hold the result,&#10;     * a <code>ShortBufferException</code> is thrown. In this case, repeat this&#10;     * call with a larger output buffer. Use&#10;     * {@link #getOutputSize(int) getOutputSize} to determine how big&#10;     * the output buffer should be.&#10;     *&#10;     * <p>Upon finishing, this method resets this cipher object to the state&#10;     * it was in when previously initialized via a call to <code>init</code>.&#10;     * That is, the object is reset and available to encrypt or decrypt&#10;     * (depending on the operation mode that was specified in the call to&#10;     * <code>init</code>) more data.&#10;     *&#10;     * <p>Note: if any exception is thrown, this cipher object may need to&#10;     * be reset before it can be used again.&#10;     *&#10;     * <p>Note: this method should be copy-safe, which means the&#10;     * <code>input</code> and <code>output</code> buffers can reference&#10;     * the same byte array and no unprocessed input data is overwritten&#10;     * when the result is copied into the output buffer.&#10;     *&#10;     * @param input the input buffer&#10;     * @param inputOffset the offset in <code>input</code> where the input&#10;     * starts&#10;     * @param inputLen the input length&#10;     * @param output the buffer for the result&#10;     * @param outputOffset the offset in <code>output</code> where the result&#10;     * is stored&#10;     *&#10;     * @return the number of bytes stored in <code>output</code>&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     * @exception IllegalBlockSizeException if this cipher is a block cipher,&#10;     * no padding has been requested (only in encryption mode), and the total&#10;     * input length of the data processed by this cipher is not a multiple of&#10;     * block size; or if this encryption algorithm is unable to&#10;     * process the input data provided.&#10;     * @exception ShortBufferException if the given output buffer is too small&#10;     * to hold the result&#10;     * @exception BadPaddingException if this cipher is in decryption mode,&#10;     * and (un)padding has been requested, but the decrypted data is not&#10;     * bounded by the appropriate padding bytes&#10;     * @exception AEADBadTagException if this cipher is decrypting in an&#10;     * AEAD mode (such as GCM/CCM), and the received authentication tag&#10;     * does not match the calculated value&#10;     "
  ]
  node [
    id 61
    label "public final int doFinal(ByteBuffer input, ByteBuffer output) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException"
    type "method"
    comment "&#10;     * Encrypts or decrypts data in a single-part operation, or finishes a&#10;     * multiple-part operation. The data is encrypted or decrypted,&#10;     * depending on how this cipher was initialized.&#10;     *&#10;     * <p>All <code>input.remaining()</code> bytes starting at&#10;     * <code>input.position()</code> are processed.&#10;     * If an AEAD mode such as GCM/CCM is being used, the authentication&#10;     * tag is appended in the case of encryption, or verified in the&#10;     * case of decryption.&#10;     * The result is stored in the output buffer.&#10;     * Upon return, the input buffer's position will be equal&#10;     * to its limit; its limit will not have changed. The output buffer's&#10;     * position will have advanced by n, where n is the value returned&#10;     * by this method; the output buffer's limit will not have changed.&#10;     *&#10;     * <p>If <code>output.remaining()</code> bytes are insufficient to&#10;     * hold the result, a <code>ShortBufferException</code> is thrown.&#10;     * In this case, repeat this call with a larger output buffer. Use&#10;     * {@link #getOutputSize(int) getOutputSize} to determine how big&#10;     * the output buffer should be.&#10;     *&#10;     * <p>Upon finishing, this method resets this cipher object to the state&#10;     * it was in when previously initialized via a call to <code>init</code>.&#10;     * That is, the object is reset and available to encrypt or decrypt&#10;     * (depending on the operation mode that was specified in the call to&#10;     * <code>init</code>) more data.&#10;     *&#10;     * <p>Note: if any exception is thrown, this cipher object may need to&#10;     * be reset before it can be used again.&#10;     *&#10;     * <p>Note: this method should be copy-safe, which means the&#10;     * <code>input</code> and <code>output</code> buffers can reference&#10;     * the same byte array and no unprocessed input data is overwritten&#10;     * when the result is copied into the output buffer.&#10;     *&#10;     * @param input the input ByteBuffer&#10;     * @param output the output ByteBuffer&#10;     *&#10;     * @return the number of bytes stored in <code>output</code>&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized)&#10;     * @exception IllegalArgumentException if input and output are the&#10;     *   same object&#10;     * @exception ReadOnlyBufferException if the output buffer is read-only&#10;     * @exception IllegalBlockSizeException if this cipher is a block cipher,&#10;     * no padding has been requested (only in encryption mode), and the total&#10;     * input length of the data processed by this cipher is not a multiple of&#10;     * block size; or if this encryption algorithm is unable to&#10;     * process the input data provided.&#10;     * @exception ShortBufferException if there is insufficient space in the&#10;     * output buffer&#10;     * @exception BadPaddingException if this cipher is in decryption mode,&#10;     * and (un)padding has been requested, but the decrypted data is not&#10;     * bounded by the appropriate padding bytes&#10;     * @exception AEADBadTagException if this cipher is decrypting in an&#10;     * AEAD mode (such as GCM/CCM), and the received authentication tag&#10;     * does not match the calculated value&#10;     *&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 62
    label "public final byte[] wrap(Key key) throws IllegalBlockSizeException, InvalidKeyException"
    type "method"
    comment "&#10;     * Wrap a key.&#10;     *&#10;     * @param key the key to be wrapped.&#10;     *&#10;     * @return the wrapped key.&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong&#10;     * state (e.g., has not been initialized).&#10;     *&#10;     * @exception IllegalBlockSizeException if this cipher is a block&#10;     * cipher, no padding has been requested, and the length of the&#10;     * encoding of the key to be wrapped is not a&#10;     * multiple of the block size.&#10;     *&#10;     * @exception InvalidKeyException if it is impossible or unsafe to&#10;     * wrap the key with this cipher (e.g., a hardware protected key is&#10;     * being passed to a software-only cipher).&#10;     *&#10;     * @throws UnsupportedOperationException if the corresponding method in the&#10;     * {@code CipherSpi} is not supported.&#10;     "
  ]
  node [
    id 63
    label "public final Key unwrap(byte[] wrappedKey, String wrappedKeyAlgorithm, int wrappedKeyType) throws InvalidKeyException, NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Unwrap a previously wrapped key.&#10;     *&#10;     * @param wrappedKey the key to be unwrapped.&#10;     *&#10;     * @param wrappedKeyAlgorithm the algorithm associated with the wrapped&#10;     * key.&#10;     *&#10;     * @param wrappedKeyType the type of the wrapped key. This must be one of&#10;     * <code>SECRET_KEY</code>, <code>PRIVATE_KEY</code>, or&#10;     * <code>PUBLIC_KEY</code>.&#10;     *&#10;     * @return the unwrapped key.&#10;     *&#10;     * @exception IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized).&#10;     *&#10;     * @exception NoSuchAlgorithmException if no installed providers&#10;     * can create keys of type <code>wrappedKeyType</code> for the&#10;     * <code>wrappedKeyAlgorithm</code>.&#10;     *&#10;     * @exception InvalidKeyException if <code>wrappedKey</code> does not&#10;     * represent a wrapped key of type <code>wrappedKeyType</code> for&#10;     * the <code>wrappedKeyAlgorithm</code>.&#10;     *&#10;     * @throws UnsupportedOperationException if the corresponding method in the&#10;     * {@code CipherSpi} is not supported.&#10;     "
  ]
  node [
    id 64
    label "public static final int getMaxAllowedKeyLength(String transformation) throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns the maximum key length for the specified transformation&#10;     * according to the installed JCE jurisdiction policy files. If&#10;     * JCE unlimited strength jurisdiction policy files are installed,&#10;     * Integer.MAX_VALUE will be returned.&#10;     * For more information on default key size in JCE jurisdiction&#10;     * policy files, please see Appendix E in the&#10;     * <a href=&#10;     *   &#34;{@docRoot}/../technotes/guides/security/crypto/CryptoSpec.html#AppC&#34;>&#10;     * Java Cryptography Architecture Reference Guide</a>.&#10;     *&#10;     * @param transformation the cipher transformation.&#10;     * @return the maximum key length in bits or Integer.MAX_VALUE.&#10;     * @exception NullPointerException if <code>transformation</code> is null.&#10;     * @exception NoSuchAlgorithmException if <code>transformation</code>&#10;     * is not a valid transformation, i.e. in the form of &#34;algorithm&#34; or&#10;     * &#34;algorithm/mode/padding&#34;.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 65
    label "public static final AlgorithmParameterSpec getMaxAllowedParameterSpec(String transformation) throws NoSuchAlgorithmException"
    type "method"
    comment "&#10;     * Returns an AlgorithmParameterSpec object which contains&#10;     * the maximum cipher parameter value according to the&#10;     * jurisdiction policy file. If JCE unlimited strength jurisdiction&#10;     * policy files are installed or there is no maximum limit on the&#10;     * parameters for the specified transformation in the policy file,&#10;     * null will be returned.&#10;     *&#10;     * @param transformation the cipher transformation.&#10;     * @return an AlgorithmParameterSpec which holds the maximum&#10;     * value or null.&#10;     * @exception NullPointerException if <code>transformation</code>&#10;     * is null.&#10;     * @exception NoSuchAlgorithmException if <code>transformation</code>&#10;     * is not a valid transformation, i.e. in the form of &#34;algorithm&#34; or&#10;     * &#34;algorithm/mode/padding&#34;.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 66
    label "public final void updateAAD(byte[] src)"
    type "method"
    comment "&#10;     * Continues a multi-part update of the Additional Authentication&#10;     * Data (AAD).&#10;     * <p>&#10;     * Calls to this method provide AAD to the cipher when operating in&#10;     * modes such as AEAD (GCM/CCM).  If this cipher is operating in&#10;     * either GCM or CCM mode, all AAD must be supplied before beginning&#10;     * operations on the ciphertext (via the {@code update} and {@code&#10;     * doFinal} methods).&#10;     *&#10;     * @param src the buffer containing the Additional Authentication Data&#10;     *&#10;     * @throws IllegalArgumentException if the {@code src}&#10;     * byte array is null&#10;     * @throws IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized), does not accept AAD, or if&#10;     * operating in either GCM or CCM mode and one of the {@code update}&#10;     * methods has already been called for the active&#10;     * encryption/decryption operation&#10;     * @throws UnsupportedOperationException if the corresponding method&#10;     * in the {@code CipherSpi} has not been overridden by an&#10;     * implementation&#10;     *&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 67
    label "public final void updateAAD(byte[] src, int offset, int len)"
    type "method"
    comment "&#10;     * Continues a multi-part update of the Additional Authentication&#10;     * Data (AAD), using a subset of the provided buffer.&#10;     * <p>&#10;     * Calls to this method provide AAD to the cipher when operating in&#10;     * modes such as AEAD (GCM/CCM).  If this cipher is operating in&#10;     * either GCM or CCM mode, all AAD must be supplied before beginning&#10;     * operations on the ciphertext (via the {@code update} and {@code&#10;     * doFinal} methods).&#10;     *&#10;     * @param src the buffer containing the AAD&#10;     * @param offset the offset in {@code src} where the AAD input starts&#10;     * @param len the number of AAD bytes&#10;     *&#10;     * @throws IllegalArgumentException if the {@code src}&#10;     * byte array is null, or the {@code offset} or {@code length}&#10;     * is less than 0, or the sum of the {@code offset} and&#10;     * {@code len} is greater than the length of the&#10;     * {@code src} byte array&#10;     * @throws IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized), does not accept AAD, or if&#10;     * operating in either GCM or CCM mode and one of the {@code update}&#10;     * methods has already been called for the active&#10;     * encryption/decryption operation&#10;     * @throws UnsupportedOperationException if the corresponding method&#10;     * in the {@code CipherSpi} has not been overridden by an&#10;     * implementation&#10;     *&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 68
    label "public final void updateAAD(ByteBuffer src)"
    type "method"
    comment "&#10;     * Continues a multi-part update of the Additional Authentication&#10;     * Data (AAD).&#10;     * <p>&#10;     * Calls to this method provide AAD to the cipher when operating in&#10;     * modes such as AEAD (GCM/CCM).  If this cipher is operating in&#10;     * either GCM or CCM mode, all AAD must be supplied before beginning&#10;     * operations on the ciphertext (via the {@code update} and {@code&#10;     * doFinal} methods).&#10;     * <p>&#10;     * All {@code src.remaining()} bytes starting at&#10;     * {@code src.position()} are processed.&#10;     * Upon return, the input buffer's position will be equal&#10;     * to its limit; its limit will not have changed.&#10;     *&#10;     * @param src the buffer containing the AAD&#10;     *&#10;     * @throws IllegalArgumentException if the {@code src ByteBuffer}&#10;     * is null&#10;     * @throws IllegalStateException if this cipher is in a wrong state&#10;     * (e.g., has not been initialized), does not accept AAD, or if&#10;     * operating in either GCM or CCM mode and one of the {@code update}&#10;     * methods has already been called for the active&#10;     * encryption/decryption operation&#10;     * @throws UnsupportedOperationException if the corresponding method&#10;     * in the {@code CipherSpi} has not been overridden by an&#10;     * implementation&#10;     *&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 69
    label " static boolean matchAttribute(Provider.Service service, String attr, String value)"
    type "method"
    comment "&#10;     * If the attribute listed exists, check that it matches the regular&#10;     * expression.&#10;     "
  ]
  node [
    id 70
    label " static CipherSpiAndProvider tryCombinations(InitParams initParams, Provider provider, String[] tokenizedTransformation) throws InvalidKeyException, InvalidAlgorithmParameterException"
    type "method"
    comment "&#10;     * Tries to find the correct {@code Cipher} transform to use. Returns a&#10;     * {@link org.apache.harmony.security.fortress.Engine.SpiAndProvider}, throws the first exception that was&#10;     * encountered during attempted initialization, or {@code null} if there are&#10;     * no providers that support the {@code initParams}.&#10;     * <p>&#10;     * {@code tokenizedTransformation} must be in the format returned by&#10;     * {@link Cipher#checkTransformation(String)}. The combinations of mode strings&#10;     * tried are as follows:&#10;     * <ul>&#10;     * <li><code>[cipher]/[mode]/[padding]</code>&#10;     * <li><code>[cipher]/[mode]</code>&#10;     * <li><code>[cipher]//[padding]</code>&#10;     * <li><code>[cipher]</code>&#10;     * </ul>&#10;     * {@code services} is a list of cipher services. Needs to be non-null only if&#10;     * {@code provider != null}&#10;     "
  ]
  node [
    id 71
    label "org.apache.harmony.security.fortress.Engine.SpiAndProvider"
  ]
  node [
    id 72
    label "checkTransformation(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 73
    label " static CipherSpiAndProvider tryTransformWithProvider(InitParams initParams, String[] tokenizedTransformation, NeedToSet type, Provider.Service service) throws InvalidKeyException, InvalidAlgorithmParameterException"
    type "method"
    comment "&#10;     * Tries to initialize the {@code Cipher} from a given {@code service}. If&#10;     * initialization is successful, the initialized {@code spi} is returned. If&#10;     * the {@code service} cannot be initialized with the specified&#10;     * {@code initParams}, then it's expected to throw&#10;     * {@code InvalidKeyException} or {@code InvalidAlgorithmParameterException}&#10;     * as a hint to the caller that it should continue searching for a&#10;     * {@code Service} that will work.&#10;     "
  ]
  edge [
    source 0
    target 1
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
    target 41
    type "child"
  ]
  edge [
    source 0
    target 42
    type "child"
  ]
  edge [
    source 0
    target 43
    type "child"
  ]
  edge [
    source 0
    target 44
    type "child"
  ]
  edge [
    source 0
    target 45
    type "child"
  ]
  edge [
    source 0
    target 46
    type "child"
  ]
  edge [
    source 0
    target 47
    type "child"
  ]
  edge [
    source 0
    target 48
    type "child"
  ]
  edge [
    source 0
    target 49
    type "child"
  ]
  edge [
    source 0
    target 50
    type "child"
  ]
  edge [
    source 0
    target 51
    type "child"
  ]
  edge [
    source 0
    target 53
    type "child"
  ]
  edge [
    source 0
    target 54
    type "child"
  ]
  edge [
    source 0
    target 55
    type "child"
  ]
  edge [
    source 0
    target 56
    type "child"
  ]
  edge [
    source 0
    target 57
    type "child"
  ]
  edge [
    source 0
    target 58
    type "child"
  ]
  edge [
    source 0
    target 59
    type "child"
  ]
  edge [
    source 0
    target 60
    type "child"
  ]
  edge [
    source 0
    target 61
    type "child"
  ]
  edge [
    source 0
    target 62
    type "child"
  ]
  edge [
    source 0
    target 63
    type "child"
  ]
  edge [
    source 0
    target 64
    type "child"
  ]
  edge [
    source 0
    target 65
    type "child"
  ]
  edge [
    source 0
    target 66
    type "child"
  ]
  edge [
    source 0
    target 67
    type "child"
  ]
  edge [
    source 0
    target 68
    type "child"
  ]
  edge [
    source 0
    target 69
    type "child"
  ]
  edge [
    source 0
    target 70
    type "child"
  ]
  edge [
    source 0
    target 73
    type "child"
  ]
  edge [
    source 1
    target 2
    type "link"
  ]
  edge [
    source 3
    target 2
    type "link"
  ]
  edge [
    source 14
    target 15
    type "link"
  ]
  edge [
    source 14
    target 39
    type "link"
  ]
  edge [
    source 14
    target 40
    type "link"
  ]
  edge [
    source 15
    target 16
    type "child"
  ]
  edge [
    source 15
    target 17
    type "child"
  ]
  edge [
    source 15
    target 19
    type "child"
  ]
  edge [
    source 15
    target 20
    type "child"
  ]
  edge [
    source 15
    target 21
    type "child"
  ]
  edge [
    source 15
    target 22
    type "child"
  ]
  edge [
    source 15
    target 23
    type "child"
  ]
  edge [
    source 15
    target 6
    type "child"
  ]
  edge [
    source 15
    target 24
    type "child"
  ]
  edge [
    source 15
    target 25
    type "child"
  ]
  edge [
    source 15
    target 26
    type "child"
  ]
  edge [
    source 15
    target 28
    type "child"
  ]
  edge [
    source 15
    target 29
    type "child"
  ]
  edge [
    source 15
    target 30
    type "child"
  ]
  edge [
    source 15
    target 31
    type "child"
  ]
  edge [
    source 15
    target 32
    type "child"
  ]
  edge [
    source 15
    target 33
    type "child"
  ]
  edge [
    source 15
    target 34
    type "child"
  ]
  edge [
    source 15
    target 35
    type "child"
  ]
  edge [
    source 15
    target 36
    type "child"
  ]
  edge [
    source 15
    target 37
    type "child"
  ]
  edge [
    source 15
    target 38
    type "child"
  ]
  edge [
    source 17
    target 18
    type "link"
  ]
  edge [
    source 17
    target 2
    type "link"
  ]
  edge [
    source 19
    target 2
    type "link"
  ]
  edge [
    source 21
    target 2
    type "link"
  ]
  edge [
    source 22
    target 2
    type "link"
  ]
  edge [
    source 26
    target 27
    type "link"
  ]
  edge [
    source 41
    target 39
    type "link"
  ]
  edge [
    source 41
    target 40
    type "link"
  ]
  edge [
    source 42
    target 15
    type "link"
  ]
  edge [
    source 42
    target 39
    type "link"
  ]
  edge [
    source 42
    target 40
    type "link"
  ]
  edge [
    source 43
    target 39
    type "link"
  ]
  edge [
    source 43
    target 40
    type "link"
  ]
  edge [
    source 44
    target 15
    type "link"
  ]
  edge [
    source 44
    target 39
    type "link"
  ]
  edge [
    source 44
    target 40
    type "link"
  ]
  edge [
    source 45
    target 39
    type "link"
  ]
  edge [
    source 45
    target 40
    type "link"
  ]
  edge [
    source 46
    target 39
    type "link"
  ]
  edge [
    source 46
    target 40
    type "link"
  ]
  edge [
    source 47
    target 39
    type "link"
  ]
  edge [
    source 47
    target 40
    type "link"
  ]
  edge [
    source 51
    target 52
    type "link"
  ]
  edge [
    source 53
    target 52
    type "link"
  ]
  edge [
    source 54
    target 52
    type "link"
  ]
  edge [
    source 56
    target 52
    type "link"
  ]
  edge [
    source 59
    target 52
    type "link"
  ]
  edge [
    source 60
    target 52
    type "link"
  ]
  edge [
    source 61
    target 52
    type "link"
  ]
  edge [
    source 70
    target 71
    type "link"
  ]
  edge [
    source 70
    target 72
    type "link"
  ]
]
