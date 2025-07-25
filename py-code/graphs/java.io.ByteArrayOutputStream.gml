graph [
  directed 1
  node [
    id 0
    label "java.io.ByteArrayOutputStream"
    type "class"
    comment ""
  ]
  node [
    id 1
    label "private void ensureCapacity(int minCapacity)"
    type "method"
    comment "&#10;     * Increases the capacity if necessary to ensure that it can hold&#10;     * at least the number of elements specified by the minimum&#10;     * capacity argument.&#10;     *&#10;     * @param  minCapacity the desired minimum capacity&#10;     * @throws OutOfMemoryError if {@code minCapacity < 0}.  This is&#10;     * interpreted as a request for the unsatisfiably large capacity&#10;     * {@code (long) Integer.MAX_VALUE + (minCapacity - Integer.MAX_VALUE)}.&#10;     "
  ]
  node [
    id 2
    label "private void grow(int minCapacity)"
    type "method"
    comment "&#10;     * Increases the capacity to ensure that it can hold at least the&#10;     * number of elements specified by the minimum capacity argument.&#10;     *&#10;     * @param minCapacity the desired minimum capacity&#10;     "
  ]
  node [
    id 3
    label "public synchronized void write(int b)"
    type "method"
    comment "&#10;     * Writes the specified byte to this {@code ByteArrayOutputStream}.&#10;     *&#10;     * @param   b   the byte to be written.&#10;     "
  ]
  node [
    id 4
    label "public synchronized void write(byte[] b, int off, int len)"
    type "method"
    comment "&#10;     * Writes {@code len} bytes from the specified byte array&#10;     * starting at offset {@code off} to this {@code ByteArrayOutputStream}.&#10;     *&#10;     * @param   b     the data.&#10;     * @param   off   the start offset in the data.&#10;     * @param   len   the number of bytes to write.&#10;     * @throws  NullPointerException if {@code b} is {@code null}.&#10;     * @throws  IndexOutOfBoundsException if {@code off} is negative,&#10;     * {@code len} is negative, or {@code len} is greater than&#10;     * {@code b.length - off}&#10;     "
  ]
  node [
    id 5
    label "public void writeBytes(byte[] b)"
    type "method"
    comment "&#10;     * Writes the complete contents of the specified byte array&#10;     * to this {@code ByteArrayOutputStream}.&#10;     *&#10;     * @apiNote&#10;     * This method is equivalent to {@link #write(byte[],int,int)&#10;     * write(b, 0, b.length)}.&#10;     *&#10;     * @param   b     the data.&#10;     * @throws  NullPointerException if {@code b} is {@code null}.&#10;     * @since   11&#10;     "
  ]
  node [
    id 6
    label "write(byte"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 7
    label "public synchronized void writeTo(OutputStream out) throws IOException"
    type "method"
    comment "&#10;     * Writes the complete contents of this {@code ByteArrayOutputStream} to&#10;     * the specified output stream argument, as if by calling the output&#10;     * stream's write method using {@code out.write(buf, 0, count)}.&#10;     *&#10;     * @param   out   the output stream to which to write the data.&#10;     * @throws  NullPointerException if {@code out} is {@code null}.&#10;     * @throws  IOException if an I/O error occurs.&#10;     "
  ]
  node [
    id 8
    label "public synchronized void reset()"
    type "method"
    comment "&#10;     * Resets the {@code count} field of this {@code ByteArrayOutputStream}&#10;     * to zero, so that all currently accumulated output in the&#10;     * output stream is discarded. The output stream can be used again,&#10;     * reusing the already allocated buffer space.&#10;     *&#10;     * @see     java.io.ByteArrayInputStream#count&#10;     "
  ]
  node [
    id 9
    label "public synchronized byte[] toByteArray()"
    type "method"
    comment "&#10;     * Creates a newly allocated byte array. Its size is the current&#10;     * size of this output stream and the valid contents of the buffer&#10;     * have been copied into it.&#10;     *&#10;     * @return  the current contents of this output stream, as a byte array.&#10;     * @see     java.io.ByteArrayOutputStream#size()&#10;     "
  ]
  node [
    id 10
    label "public synchronized int size()"
    type "method"
    comment "&#10;     * Returns the current size of the buffer.&#10;     *&#10;     * @return  the value of the {@code count} field, which is the number&#10;     *          of valid bytes in this output stream.&#10;     * @see     java.io.ByteArrayOutputStream#count&#10;     "
  ]
  node [
    id 11
    label "public synchronized String toString()"
    type "method"
    comment "&#10;     * Converts the buffer's contents into a string decoding bytes using the&#10;     * platform's default character set. The length of the new {@code String}&#10;     * is a function of the character set, and hence may not be equal to the&#10;     * size of the buffer.&#10;     *&#10;     * <p> This method always replaces malformed-input and unmappable-character&#10;     * sequences with the default replacement string for the platform's&#10;     * default character set. The {@linkplain java.nio.charset.CharsetDecoder}&#10;     * class should be used when more control over the decoding process is&#10;     * required.&#10;     *&#10;     * @return String decoded from the buffer's contents.&#10;     * @since  1.1&#10;     "
  ]
  node [
    id 12
    label "public synchronized String toString(String charsetName) throws UnsupportedEncodingException"
    type "method"
    comment "&#10;     * Converts the buffer's contents into a string by decoding the bytes using&#10;     * the named {@link java.nio.charset.Charset charset}.&#10;     *&#10;     * <p> This method is equivalent to {@code #toString(charset)} that takes a&#10;     * {@link java.nio.charset.Charset charset}.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     *&#10;     * <pre> {@code&#10;     *      ByteArrayOutputStream b = ...&#10;     *      b.toString(&#34;UTF-8&#34;)&#10;     *      }&#10;     * </pre>&#10;     *&#10;     * behaves in exactly the same way as the expression&#10;     *&#10;     * <pre> {@code&#10;     *      ByteArrayOutputStream b = ...&#10;     *      b.toString(StandardCharsets.UTF_8)&#10;     *      }&#10;     * </pre>&#10;     *&#10;     *&#10;     * @param  charsetName  the name of a supported&#10;     *         {@link java.nio.charset.Charset charset}&#10;     * @return String decoded from the buffer's contents.&#10;     * @throws UnsupportedEncodingException&#10;     *         If the named charset is not supported&#10;     * @since  1.1&#10;     "
  ]
  node [
    id 13
    label "java.nio.charset.Charset"
    type "class"
    comment ""
  ]
  node [
    id 14
    label "private static void checkName(String s)"
    type "method"
    comment "&#10;     * Checks that the given string is a legal charset name. </p>&#10;     *&#10;     * @param  s&#10;     *         A purported charset name&#10;     *&#10;     * @throws  IllegalCharsetNameException&#10;     *          If the given name is not a legal charset name&#10;     "
  ]
  node [
    id 15
    label "private static Charset lookup(String charsetName)"
    type "method"
    comment " instance in a map for level 2 cache."
  ]
  node [
    id 16
    label "public static boolean isSupported(String charsetName)"
    type "method"
    comment "&#10;     * Tells whether the named charset is supported.&#10;     *&#10;     * @param  charsetName&#10;     *         The name of the requested charset; may be either&#10;     *         a canonical name or an alias&#10;     *&#10;     * @return  {@code true} if, and only if, support for the named charset&#10;     *          is available in the current Java virtual machine&#10;     *&#10;     * @throws IllegalCharsetNameException&#10;     *         If the given charset name is illegal&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the given {@code charsetName} is null&#10;     "
  ]
  node [
    id 17
    label "public static Charset forName(String charsetName)"
    type "method"
    comment "&#10;     * Returns a charset object for the named charset.&#10;     *&#10;     * @param  charsetName&#10;     *         The name of the requested charset; may be either&#10;     *         a canonical name or an alias&#10;     *&#10;     * @return  A charset object for the named charset&#10;     *&#10;     * @throws  IllegalCharsetNameException&#10;     *          If the given charset name is illegal&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the given {@code charsetName} is null&#10;     *&#10;     * @throws  UnsupportedCharsetException&#10;     *          If no support for the named charset is available&#10;     *          in this instance of the Java virtual machine&#10;     "
  ]
  node [
    id 18
    label "public static SortedMap<String, Charset> availableCharsets()"
    type "method"
    comment "&#10;     * Constructs a sorted map from canonical charset names to charset objects.&#10;     *&#10;     * <p> The map returned by this method will have one entry for each charset&#10;     * for which support is available in the current Java virtual machine.  If&#10;     * two or more supported charsets have the same canonical name then the&#10;     * resulting map will contain just one of them; which one it will contain&#10;     * is not specified. </p>&#10;     *&#10;     * <p> The invocation of this method, and the subsequent use of the&#10;     * resulting map, may cause time-consuming disk or network I/O operations&#10;     * to occur.  This method is provided for applications that need to&#10;     * enumerate all of the available charsets, for example to allow user&#10;     * charset selection.  This method is not used by the {@link #forName&#10;     * forName} method, which instead employs an efficient incremental lookup&#10;     * algorithm.&#10;     *&#10;     * <p> This method may return different results at different times if new&#10;     * charset providers are dynamically made available to the current Java&#10;     * virtual machine.  In the absence of such changes, the charsets returned&#10;     * by this method are exactly those that can be retrieved via the {@link&#10;     * #forName forName} method.  </p>&#10;     *&#10;     * @return An immutable, case-insensitive map from canonical charset names&#10;     *         to charset objects&#10;     "
  ]
  node [
    id 19
    label "forNameforName"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 20
    label "forName"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 21
    label "public static Charset defaultCharset()"
    type "method"
    comment "&#10;     * Returns the default charset of this Java virtual machine.&#10;     *&#10;     * <p>Android note: The Android platform default is always UTF-8.&#10;     *&#10;     * @return  A charset object for the default charset&#10;     *&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 22
    label "public final String name()"
    type "method"
    comment "&#10;     * Returns this charset's canonical name.&#10;     *&#10;     * @return  The canonical name of this charset&#10;     "
  ]
  node [
    id 23
    label "public final Set<String> aliases()"
    type "method"
    comment "&#10;     * Returns a set containing this charset's aliases.&#10;     *&#10;     * @return  An immutable set of this charset's aliases&#10;     "
  ]
  node [
    id 24
    label "public String displayName()"
    type "method"
    comment "&#10;     * Returns this charset's human-readable name for the default locale.&#10;     *&#10;     * <p> The default implementation of this method simply returns this&#10;     * charset's canonical name.  Concrete subclasses of this class may&#10;     * override this method in order to provide a localized display name. </p>&#10;     *&#10;     * @return  The display name of this charset in the default locale&#10;     "
  ]
  node [
    id 25
    label "public final boolean isRegistered()"
    type "method"
    comment "&#10;     * Tells whether or not this charset is registered in the <a&#10;     * href=&#34;http://www.iana.org/assignments/character-sets&#34;>IANA Charset&#10;     * Registry</a>.&#10;     *&#10;     * @return  {@code true} if, and only if, this charset is known by its&#10;     *          implementor to be registered with the IANA&#10;     "
  ]
  node [
    id 26
    label "public String displayName(Locale locale)"
    type "method"
    comment "&#10;     * Returns this charset's human-readable name for the given locale.&#10;     *&#10;     * <p> The default implementation of this method simply returns this&#10;     * charset's canonical name.  Concrete subclasses of this class may&#10;     * override this method in order to provide a localized display name. </p>&#10;     *&#10;     * @param  locale&#10;     *         The locale for which the display name is to be retrieved&#10;     *&#10;     * @return  The display name of this charset in the given locale&#10;     "
  ]
  node [
    id 27
    label "public abstract boolean contains(Charset cs)"
    type "method"
    comment "&#10;     * Tells whether or not this charset contains the given charset.&#10;     *&#10;     * <p> A charset <i>C</i> is said to <i>contain</i> a charset <i>D</i> if,&#10;     * and only if, every character representable in <i>D</i> is also&#10;     * representable in <i>C</i>.  If this relationship holds then it is&#10;     * guaranteed that every string that can be encoded in <i>D</i> can also be&#10;     * encoded in <i>C</i> without performing any replacements.&#10;     *&#10;     * <p> That <i>C</i> contains <i>D</i> does not imply that each character&#10;     * representable in <i>C</i> by a particular byte sequence is represented&#10;     * in <i>D</i> by the same byte sequence, although sometimes this is the&#10;     * case.&#10;     *&#10;     * <p> Every charset contains itself.&#10;     *&#10;     * <p> This method computes an approximation of the containment relation:&#10;     * If it returns {@code true} then the given charset is known to be&#10;     * contained by this charset; if it returns {@code false}, however, then&#10;     * it is not necessarily the case that the given charset is not contained&#10;     * in this charset.&#10;     *&#10;     * @param   cs&#10;     *          The given charset&#10;     *&#10;     * @return  {@code true} if the given charset is contained in this charset&#10;     "
  ]
  node [
    id 28
    label "public abstract CharsetDecoder newDecoder()"
    type "method"
    comment "&#10;     * Constructs a new decoder for this charset.&#10;     *&#10;     * @return  A new decoder for this charset&#10;     "
  ]
  node [
    id 29
    label "public abstract CharsetEncoder newEncoder()"
    type "method"
    comment "&#10;     * Constructs a new encoder for this charset.&#10;     *&#10;     * @return  A new encoder for this charset&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this charset does not support encoding&#10;     "
  ]
  node [
    id 30
    label "public boolean canEncode()"
    type "method"
    comment "&#10;     * Tells whether or not this charset supports encoding.&#10;     *&#10;     * <p> Nearly all charsets support encoding.  The primary exceptions are&#10;     * special-purpose <i>auto-detect</i> charsets whose decoders can determine&#10;     * which of several possible encoding schemes is in use by examining the&#10;     * input byte sequence.  Such charsets do not support encoding because&#10;     * there is no way to determine which encoding should be used on output.&#10;     * Implementations of such charsets should override this method to return&#10;     * {@code false}. </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this charset supports encoding&#10;     "
  ]
  node [
    id 31
    label "public final CharBuffer decode(ByteBuffer bb)"
    type "method"
    comment "&#10;     * Convenience method that decodes bytes in this charset into Unicode&#10;     * characters.&#10;     *&#10;     * <p> An invocation of this method upon a charset {@code cs} returns the&#10;     * same result as the expression&#10;     *&#10;     * <pre>&#10;     *     cs.newDecoder()&#10;     *       .onMalformedInput(CodingErrorAction.REPLACE)&#10;     *       .onUnmappableCharacter(CodingErrorAction.REPLACE)&#10;     *       .decode(bb); </pre>&#10;     *&#10;     * except that it is potentially more efficient because it can cache&#10;     * decoders between successive invocations.&#10;     *&#10;     * <p> This method always replaces malformed-input and unmappable-character&#10;     * sequences with this charset's default replacement byte array.  In order&#10;     * to detect such sequences, use the {@link&#10;     * CharsetDecoder#decode(java.nio.ByteBuffer)} method directly.  </p>&#10;     *&#10;     * @param  bb  The byte buffer to be decoded&#10;     *&#10;     * @return  A char buffer containing the decoded characters&#10;     "
  ]
  node [
    id 32
    label "decode(java.nio.ByteBuffer)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 33
    label "public final ByteBuffer encode(CharBuffer cb)"
    type "method"
    comment "&#10;     * Convenience method that encodes Unicode characters into bytes in this&#10;     * charset.&#10;     *&#10;     * <p> An invocation of this method upon a charset {@code cs} returns the&#10;     * same result as the expression&#10;     *&#10;     * <pre>&#10;     *     cs.newEncoder()&#10;     *       .onMalformedInput(CodingErrorAction.REPLACE)&#10;     *       .onUnmappableCharacter(CodingErrorAction.REPLACE)&#10;     *       .encode(bb); </pre>&#10;     *&#10;     * except that it is potentially more efficient because it can cache&#10;     * encoders between successive invocations.&#10;     *&#10;     * <p> This method always replaces malformed-input and unmappable-character&#10;     * sequences with this charset's default replacement string.  In order to&#10;     * detect such sequences, use the {@link&#10;     * CharsetEncoder#encode(java.nio.CharBuffer)} method directly.  </p>&#10;     *&#10;     * @param  cb  The char buffer to be encoded&#10;     *&#10;     * @return  A byte buffer containing the encoded characters&#10;     "
  ]
  node [
    id 34
    label "encode(java.nio.CharBuffer)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 35
    label "public final ByteBuffer encode(String str)"
    type "method"
    comment "&#10;     * Convenience method that encodes a string into bytes in this charset.&#10;     *&#10;     * <p> An invocation of this method upon a charset {@code cs} returns the&#10;     * same result as the expression&#10;     *&#10;     * <pre>&#10;     *     cs.encode(CharBuffer.wrap(s)); </pre>&#10;     *&#10;     * @param  str  The string to be encoded&#10;     *&#10;     * @return  A byte buffer containing the encoded characters&#10;     "
  ]
  node [
    id 36
    label "public final int compareTo(Charset that)"
    type "method"
    comment "&#10;     * Compares this charset to another.&#10;     *&#10;     * <p> Charsets are ordered by their canonical names, without regard to&#10;     * case. </p>&#10;     *&#10;     * @param  that&#10;     *         The charset to which this charset is to be compared&#10;     *&#10;     * @return A negative integer, zero, or a positive integer as this charset&#10;     *         is less than, equal to, or greater than the specified charset&#10;     "
  ]
  node [
    id 37
    label "public final int hashCode()"
    type "method"
    comment "&#10;     * Computes a hashcode for this charset.&#10;     *&#10;     * @return  An integer hashcode&#10;     "
  ]
  node [
    id 38
    label "public final boolean equals(Object ob)"
    type "method"
    comment "&#10;     * Tells whether or not this object is equal to another.&#10;     *&#10;     * <p> Two charsets are equal if, and only if, they have the same canonical&#10;     * names.  A charset is never equal to any other type of object.  </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this charset is equal to the&#10;     *          given object&#10;     "
  ]
  node [
    id 39
    label "public final String toString()"
    type "method"
    comment "&#10;     * Returns a string describing this charset.&#10;     *&#10;     * @return  A string describing this charset&#10;     "
  ]
  node [
    id 40
    label "public synchronized String toString(Charset charset)"
    type "method"
    comment "&#10;     * Converts the buffer's contents into a string by decoding the bytes using&#10;     * the specified {@link java.nio.charset.Charset charset}. The length of the new&#10;     * {@code String} is a function of the charset, and hence may not be equal&#10;     * to the length of the byte array.&#10;     *&#10;     * <p> This method always replaces malformed-input and unmappable-character&#10;     * sequences with the charset's default replacement string. The {@link&#10;     * java.nio.charset.CharsetDecoder} class should be used when more control&#10;     * over the decoding process is required.&#10;     *&#10;     * @param      charset  the {@linkplain java.nio.charset.Charset charset}&#10;     *             to be used to decode the {@code bytes}&#10;     * @return     String decoded from the buffer's contents.&#10;     * @since      10&#10;     "
  ]
  node [
    id 41
    label "java.nio.charset.CharsetDecoder"
    type "class"
    comment ""
  ]
  node [
    id 42
    label "public final Charset charset()"
    type "method"
    comment "&#10;     * Returns the charset that created this decoder.&#10;     *&#10;     * @return  This decoder's charset&#10;     "
  ]
  node [
    id 43
    label "public final String replacement()"
    type "method"
    comment "&#10;     * Returns this decoder's replacement value.&#10;     *&#10;     * @return  This decoder's current replacement,&#10;     *          which is never {@code null} and is never empty&#10;     "
  ]
  node [
    id 44
    label "public final CharsetDecoder replaceWith(String newReplacement)"
    type "method"
    comment "&#10;     * Changes this decoder's replacement value.&#10;     *&#10;     * <p> This method invokes the {@link #implReplaceWith implReplaceWith}&#10;     * method, passing the new replacement, after checking that the new&#10;     * replacement is acceptable.  </p>&#10;     *&#10;     * @param  newReplacement  The new replacement; must not be&#10;     *         {@code null}, must have non-zero length,&#10;&#10;     *         and must not be longer than the value returned by the&#10;     *         {@link #maxCharsPerByte() maxCharsPerByte} method&#10;&#10;&#10;&#10;&#10;&#10;&#10;     *&#10;     * @return  This decoder&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the preconditions on the parameter do not hold&#10;     "
  ]
  node [
    id 45
    label "maxCharsPerByte()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 46
    label "implReplaceWith"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 47
    label "protected void implReplaceWith(String newReplacement)"
    type "method"
    comment "&#10;     * Reports a change to this decoder's replacement value.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by decoders that require notification of changes to&#10;     * the replacement.  </p>&#10;     *&#10;     * @param  newReplacement    The replacement value&#10;     "
  ]
  node [
    id 48
    label "public CodingErrorAction malformedInputAction()"
    type "method"
    comment "&#10;     * Returns this decoder's current action for malformed-input errors.&#10;     *&#10;     * @return The current malformed-input action, which is never {@code null}&#10;     "
  ]
  node [
    id 49
    label "public final CharsetDecoder onMalformedInput(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Changes this decoder's action for malformed-input errors.&#10;     *&#10;     * <p> This method invokes the {@link #implOnMalformedInput&#10;     * implOnMalformedInput} method, passing the new action.  </p>&#10;     *&#10;     * @param  newAction  The new action; must not be {@code null}&#10;     *&#10;     * @return  This decoder&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the precondition on the parameter does not hold&#10;     "
  ]
  node [
    id 50
    label "implOnMalformedInputimplOnMalformedInput"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 51
    label "protected void implOnMalformedInput(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Reports a change to this decoder's malformed-input action.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by decoders that require notification of changes to&#10;     * the malformed-input action.  </p>&#10;     *&#10;     * @param  newAction  The new action&#10;     "
  ]
  node [
    id 52
    label "public CodingErrorAction unmappableCharacterAction()"
    type "method"
    comment "&#10;     * Returns this decoder's current action for unmappable-character errors.&#10;     *&#10;     * @return The current unmappable-character action, which is never&#10;     *         {@code null}&#10;     "
  ]
  node [
    id 53
    label "public final CharsetDecoder onUnmappableCharacter(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Changes this decoder's action for unmappable-character errors.&#10;     *&#10;     * <p> This method invokes the {@link #implOnUnmappableCharacter&#10;     * implOnUnmappableCharacter} method, passing the new action.  </p>&#10;     *&#10;     * @param  newAction  The new action; must not be {@code null}&#10;     *&#10;     * @return  This decoder&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the precondition on the parameter does not hold&#10;     "
  ]
  node [
    id 54
    label "implOnUnmappableCharacterimplOnUnmappableCharacter"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 55
    label "protected void implOnUnmappableCharacter(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Reports a change to this decoder's unmappable-character action.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by decoders that require notification of changes to&#10;     * the unmappable-character action.  </p>&#10;     *&#10;     * @param  newAction  The new action&#10;     "
  ]
  node [
    id 56
    label "public final float averageCharsPerByte()"
    type "method"
    comment "&#10;     * Returns the average number of characters that will be produced for each&#10;     * byte of input.  This heuristic value may be used to estimate the size&#10;     * of the output buffer required for a given input sequence.&#10;     *&#10;     * @return  The average number of characters produced&#10;     *          per byte of input&#10;     "
  ]
  node [
    id 57
    label "public final float maxCharsPerByte()"
    type "method"
    comment "&#10;     * Returns the maximum number of characters that will be produced for each&#10;     * byte of input.  This value may be used to compute the worst-case size&#10;     * of the output buffer required for a given input sequence. This value&#10;     * accounts for any necessary content-independent prefix or suffix&#10;&#10;&#10;&#10;&#10;     * characters.&#10;&#10;     *&#10;     * @return  The maximum number of characters that will be produced per&#10;     *          byte of input&#10;     "
  ]
  node [
    id 58
    label "public final CoderResult decode(ByteBuffer in, CharBuffer out, boolean endOfInput)"
    type "method"
    comment "&#10;     * Decodes as many bytes as possible from the given input buffer,&#10;     * writing the results to the given output buffer.&#10;     *&#10;     * <p> The buffers are read from, and written to, starting at their current&#10;     * positions.  At most {@link Buffer#remaining in.remaining()} bytes&#10;     * will be read and at most {@link Buffer#remaining out.remaining()}&#10;     * characters will be written.  The buffers' positions will be advanced to&#10;     * reflect the bytes read and the characters written, but their marks and&#10;     * limits will not be modified.&#10;     *&#10;     * <p> In addition to reading bytes from the input buffer and writing&#10;     * characters to the output buffer, this method returns a {@link CoderResult}&#10;     * object to describe its reason for termination:&#10;     *&#10;     * <ul>&#10;     *&#10;     *   <li><p> {@link CoderResult#UNDERFLOW} indicates that as much of the&#10;     *   input buffer as possible has been decoded.  If there is no further&#10;     *   input then the invoker can proceed to the next step of the&#10;     *   <a href=&#34;#steps&#34;>decoding operation</a>.  Otherwise this method&#10;     *   should be invoked again with further input.  </p></li>&#10;     *&#10;     *   <li><p> {@link CoderResult#OVERFLOW} indicates that there is&#10;     *   insufficient space in the output buffer to decode any more bytes.&#10;     *   This method should be invoked again with an output buffer that has&#10;     *   more {@linkplain Buffer#remaining remaining} characters. This is&#10;     *   typically done by draining any decoded characters from the output&#10;     *   buffer.  </p></li>&#10;     *&#10;     *   <li><p> A {@linkplain CoderResult#malformedForLength&#10;     *   malformed-input} result indicates that a malformed-input&#10;     *   error has been detected.  The malformed bytes begin at the input&#10;     *   buffer's (possibly incremented) position; the number of malformed&#10;     *   bytes may be determined by invoking the result object's {@link&#10;     *   CoderResult#length() length} method.  This case applies only if the&#10;     *   {@linkplain #onMalformedInput malformed action} of this decoder&#10;     *   is {@link CodingErrorAction#REPORT}; otherwise the malformed input&#10;     *   will be ignored or replaced, as requested.  </p></li>&#10;     *&#10;     *   <li><p> An {@linkplain CoderResult#unmappableForLength&#10;     *   unmappable-character} result indicates that an&#10;     *   unmappable-character error has been detected.  The bytes that&#10;     *   decode the unmappable character begin at the input buffer's (possibly&#10;     *   incremented) position; the number of such bytes may be determined&#10;     *   by invoking the result object's {@link CoderResult#length() length}&#10;     *   method.  This case applies only if the {@linkplain #onUnmappableCharacter&#10;     *   unmappable action} of this decoder is {@link&#10;     *   CodingErrorAction#REPORT}; otherwise the unmappable character will be&#10;     *   ignored or replaced, as requested.  </p></li>&#10;     *&#10;     * </ul>&#10;     *&#10;     * In any case, if this method is to be reinvoked in the same decoding&#10;     * operation then care should be taken to preserve any bytes remaining&#10;     * in the input buffer so that they are available to the next invocation.&#10;     *&#10;     * <p> The {@code endOfInput} parameter advises this method as to whether&#10;     * the invoker can provide further input beyond that contained in the given&#10;     * input buffer.  If there is a possibility of providing additional input&#10;     * then the invoker should pass {@code false} for this parameter; if there&#10;     * is no possibility of providing further input then the invoker should&#10;     * pass {@code true}.  It is not erroneous, and in fact it is quite&#10;     * common, to pass {@code false} in one invocation and later discover that&#10;     * no further input was actually available.  It is critical, however, that&#10;     * the final invocation of this method in a sequence of invocations always&#10;     * pass {@code true} so that any remaining undecoded input will be treated&#10;     * as being malformed.&#10;     *&#10;     * <p> This method works by invoking the {@link #decodeLoop decodeLoop}&#10;     * method, interpreting its results, handling error conditions, and&#10;     * reinvoking it as necessary.  </p>&#10;     *&#10;     *&#10;     * @param  in&#10;     *         The input byte buffer&#10;     *&#10;     * @param  out&#10;     *         The output character buffer&#10;     *&#10;     * @param  endOfInput&#10;     *         {@code true} if, and only if, the invoker can provide no&#10;     *         additional input bytes beyond those in the given buffer&#10;     *&#10;     * @return  A coder-result object describing the reason for termination&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If a decoding operation is already in progress and the previous&#10;     *          step was an invocation neither of the {@link #reset reset}&#10;     *          method, nor of this method with a value of {@code false} for&#10;     *          the {@code endOfInput} parameter, nor of this method with a&#10;     *          value of {@code true} for the {@code endOfInput} parameter&#10;     *          but a return value indicating an incomplete decoding operation&#10;     *&#10;     * @throws  CoderMalfunctionError&#10;     *          If an invocation of the decodeLoop method threw&#10;     *          an unexpected exception&#10;     *&#10;     * @throws  NullPointerException if input or output buffer is null&#10;     "
  ]
  node [
    id 59
    label "decodeLoop"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 60
    label "reset"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 61
    label "OVERFLOW"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 62
    label "UNDERFLOW"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 63
    label "remaining"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 64
    label "java.nio.Buffer"
    type "class"
    comment ""
  ]
  node [
    id 65
    label " static IllegalArgumentException createSameBufferException()"
    type "method"
    comment "&#10;     * Returns an {@code IllegalArgumentException} indicating that the source&#10;     * and target are the same {@code Buffer}.  Intended for use in&#10;     * {@code put(src)} when the parameter is the {@code Buffer} on which the&#10;     * method is being invoked.&#10;     *&#10;     * @return  IllegalArgumentException&#10;     *          With a message indicating equal source and target buffers&#10;     "
  ]
  node [
    id 66
    label " static IllegalArgumentException createCapacityException(int capacity)"
    type "method"
    comment "&#10;     * Verify that the capacity is nonnegative.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in $type$s&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 67
    label "public final int capacity()"
    type "method"
    comment "&#10;     * Returns this buffer's capacity.&#10;     *&#10;     * @return  The capacity of this buffer&#10;     "
  ]
  node [
    id 68
    label "public final int position()"
    type "method"
    comment "&#10;     * Returns this buffer's position.&#10;     *&#10;     * @return  The position of this buffer&#10;     "
  ]
  node [
    id 69
    label "public Buffer position(int newPosition)"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 70
    label "private IllegalArgumentException createPositionException(int newPosition)"
    type "method"
    comment "&#10;     * Verify that {@code 0 < newPosition <= limit}&#10;     *&#10;     * @param newPosition&#10;     *        The new position value&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the specified position is out of bounds.&#10;     "
  ]
  node [
    id 71
    label "public final int limit()"
    type "method"
    comment "&#10;     * Returns this buffer's limit.&#10;     *&#10;     * @return  The limit of this buffer&#10;     "
  ]
  node [
    id 72
    label "public Buffer limit(int newLimit)"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 73
    label "private IllegalArgumentException createLimitException(int newLimit)"
    type "method"
    comment "&#10;     * Verify that {@code 0 < newLimit <= capacity}&#10;     *&#10;     * @param newLimit&#10;     *        The new limit value&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the specified limit is out of bounds.&#10;     "
  ]
  node [
    id 74
    label "public Buffer mark()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 75
    label "public Buffer reset()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 76
    label "public Buffer clear()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 77
    label "public Buffer flip()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 78
    label "compact"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 79
    label "java.nio.ByteBuffer"
    type "class"
    comment ""
  ]
  node [
    id 80
    label "public static ByteBuffer allocateDirect(int capacity)"
    type "method"
    comment "&#10;     * Allocates a new direct byte buffer.&#10;     *&#10;     * <p> The new buffer's position will be zero, its limit will be its&#10;     * capacity, its mark will be undefined, each of its elements will be&#10;     * initialized to zero, and its byte order will be&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.  Whether or not it has a&#10;     * {@link #hasArray backing array} is unspecified.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in bytes&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 81
    label "BIG_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 82
    label "hasArray"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 83
    label "public static ByteBuffer allocate(int capacity)"
    type "method"
    comment "&#10;     * Allocates a new byte buffer.&#10;     *&#10;     * <p> The new buffer's position will be zero, its limit will be its&#10;     * capacity, its mark will be undefined, each of its elements will be&#10;     * initialized to zero, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * It will have a {@link #array backing array}, and its&#10;     * {@link #arrayOffset array offset} will be zero.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in bytes&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 84
    label "array"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 85
    label "arrayOffset"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 86
    label "public static ByteBuffer wrap(byte[] array, int offset, int length)"
    type "method"
    comment "&#10;     * Wraps a byte array into a buffer.&#10;     *&#10;     * <p> The new buffer will be backed by the given byte array;&#10;     * that is, modifications to the buffer will cause the array to be modified&#10;     * and vice versa.  The new buffer's capacity will be&#10;     * {@code array.length}, its position will be {@code offset}, its limit&#10;     * will be {@code offset + length}, its mark will be undefined, and its&#10;     * byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * Its {@link #array backing array} will be the given array, and&#10;     * its {@link #arrayOffset array offset} will be zero.  </p>&#10;     *&#10;     * @param  array&#10;     *         The array that will back the new buffer&#10;     *&#10;     * @param  offset&#10;     *         The offset of the subarray to be used; must be non-negative and&#10;     *         no larger than {@code array.length}.  The new buffer's position&#10;     *         will be set to this value.&#10;     *&#10;     * @param  length&#10;     *         The length of the subarray to be used;&#10;     *         must be non-negative and no larger than&#10;     *         {@code array.length - offset}.&#10;     *         The new buffer's limit will be set to {@code offset + length}.&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     "
  ]
  node [
    id 87
    label "public static ByteBuffer wrap(byte[] array)"
    type "method"
    comment "&#10;     * Wraps a byte array into a buffer.&#10;     *&#10;     * <p> The new buffer will be backed by the given byte array;&#10;     * that is, modifications to the buffer will cause the array to be modified&#10;     * and vice versa.  The new buffer's capacity and limit will be&#10;     * {@code array.length}, its position will be zero, its mark will be&#10;     * undefined, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * Its {@link #array backing array} will be the given array, and its&#10;     * {@link #arrayOffset array offset} will be zero.  </p>&#10;     *&#10;     * @param  array&#10;     *         The array that will back this buffer&#10;     *&#10;     * @return  The new byte buffer&#10;     "
  ]
  node [
    id 88
    label "public abstract ByteBuffer slice()"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer, its mark will be&#10;     * undefined, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new byte buffer&#10;&#10;     *&#10;     * @see #alignedSlice(int)&#10;&#10;     "
  ]
  node [
    id 89
    label "public abstract ByteBuffer slice(int index, int length)"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at position {@code index}&#10;     * in this buffer, and will contain {@code length} elements. Changes to&#10;     * this buffer's content will be visible in the new buffer, and vice versa;&#10;     * the two buffers' position, limit, and mark values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be {@code length}, its mark will be undefined, and its byte order&#10;     * will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct,&#10;     * and it will be read-only if, and only if, this buffer is read-only. </p>&#10;     *&#10;     * @param   index&#10;     *          The position in this buffer at which the content of the new&#10;     *          buffer will start; must be non-negative and no larger than&#10;     *          {@link #limit() limit()}&#10;     *&#10;     * @param   length&#10;     *          The number of elements the new buffer will contain; must be&#10;     *          non-negative and no larger than {@code limit() - index}&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative or greater than {@code limit()},&#10;     *          {@code length} is negative, or {@code length > limit() - index}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 90
    label "limit()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 91
    label "public abstract ByteBuffer duplicate()"
    type "method"
    comment "&#10;     * Creates a new byte buffer that shares this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer, and vice&#10;     * versa; the two buffers' position, limit, and mark values will be&#10;     * independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position,&#10;&#10;     * and mark values will be identical to those of this buffer, and its byte&#10;     * order will be {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new byte buffer&#10;     "
  ]
  node [
    id 92
    label "public abstract ByteBuffer asReadOnlyBuffer()"
    type "method"
    comment "&#10;     * Creates a new, read-only byte buffer that shares this buffer's&#10;     * content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer; the new&#10;     * buffer itself, however, will be read-only and will not allow the shared&#10;     * content to be modified.  The two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position,&#10;&#10;     * and mark values will be identical to those of this buffer, and its byte&#10;     * order will be {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     *&#10;     * <p> If this buffer is itself read-only then this method behaves in&#10;     * exactly the same way as the {@link #duplicate duplicate} method.  </p>&#10;     *&#10;     * @return  The new, read-only byte buffer&#10;     "
  ]
  node [
    id 93
    label "duplicate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 94
    label "public abstract byte get()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method.  Reads the byte at this buffer's&#10;     * current position, and then increments the position.&#10;     *&#10;     * @return  The byte at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If the buffer's current position is not smaller than its limit&#10;     "
  ]
  node [
    id 95
    label "public abstract ByteBuffer put(byte b)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes the given byte into this buffer at the current&#10;     * position, and then increments the position. </p>&#10;     *&#10;     * @param  b&#10;     *         The byte to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If this buffer's current position is not smaller than its limit&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 96
    label "public abstract byte get(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method.  Reads the byte at the given&#10;     * index.&#10;     *&#10;     * @param  index&#10;     *         The index from which the byte will be read&#10;     *&#10;     * @return  The byte at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit&#10;     "
  ]
  node [
    id 97
    label "public abstract ByteBuffer put(int index, byte b)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes the given byte into this buffer at the given&#10;     * index. </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the byte will be written&#10;     *&#10;     * @param  b&#10;     *         The byte value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 98
    label "public ByteBuffer get(byte[] dst, int offset, int length)"
    type "method"
    comment "&#10;     * Relative bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  If there are fewer bytes remaining in the&#10;     * buffer than are required to satisfy the request, that is, if&#10;     * {@code length}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()}, then no&#10;     * bytes are transferred and a {@link BufferUnderflowException} is&#10;     * thrown.&#10;     *&#10;     * <p> Otherwise, this method copies {@code length} bytes from this&#10;     * buffer into the given array, starting at the current position of this&#10;     * buffer and at the given offset in the array.  The position of this&#10;     * buffer is then incremented by {@code length}.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>src.get(dst,&#38;nbsp;off,&#38;nbsp;len)</code> has exactly the same effect as&#10;     * the loop&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = off; i < off + len; i++)&#10;     *         dst[i] = src.get();&#10;     * }</pre>&#10;     *&#10;     * except that it first checks that there are sufficient bytes in&#10;     * this buffer and it is potentially much more efficient.&#10;     *&#10;     * @param  dst&#10;     *         The array into which bytes are to be written&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be&#10;     *         written; must be non-negative and no larger than&#10;     *         {@code dst.length}&#10;     *&#10;     * @param  length&#10;     *         The maximum number of bytes to be written to the given&#10;     *         array; must be non-negative and no larger than&#10;     *         {@code dst.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than {@code length} bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     "
  ]
  node [
    id 99
    label "BufferUnderflowException"
  ]
  node [
    id 100
    label "public ByteBuffer get(byte[] dst)"
    type "method"
    comment "&#10;     * Relative bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  An invocation of this method of the form&#10;     * {@code src.get(a)} behaves in exactly the same way as the invocation&#10;     *&#10;     * <pre>&#10;     *     src.get(a, 0, a.length) </pre>&#10;     *&#10;     * @param   dst&#10;     *          The destination array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than {@code length} bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 101
    label "public ByteBuffer get(int index, byte[] dst, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers {@code length} bytes from this&#10;     * buffer into the given array, starting at the given index in this&#10;     * buffer and at the given offset in the array.  The position of this&#10;     * buffer is unchanged.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <code>src.get(index,&#38;nbsp;dst,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the following loop except that it first&#10;     * checks the consistency of the supplied parameters and it is potentially&#10;     * much more efficient:&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *         dst[i] = src.get(j);&#10;     * }</pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer from which the first byte will be&#10;     *         read; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  dst&#10;     *         The destination array&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be&#10;     *         written; must be non-negative and less than&#10;     *         {@code dst.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be written to the given array;&#10;     *         must be non-negative and no larger than the smaller of&#10;     *         {@code limit() - index} and {@code dst.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code index}, {@code offset}, and&#10;     *          {@code length} parameters do not hold&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 102
    label "public ByteBuffer get(int index, byte[] dst)"
    type "method"
    comment "&#10;     * Absolute bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  The position of this buffer is unchanged.  An&#10;     * invocation of this method of the form&#10;     * <code>src.get(index,&#38;nbsp;dst)</code> behaves in exactly the same&#10;     * way as the invocation:&#10;     *&#10;     * <pre>&#10;     *     src.get(index, dst, 0, dst.length) </pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer from which the first byte will be&#10;     *         read; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  dst&#10;     *         The destination array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative, not smaller than {@code limit()},&#10;     *          or {@code limit() - index < dst.length}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 103
    label "public ByteBuffer put(ByteBuffer src)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers the bytes remaining in the given source&#10;     * buffer into this buffer.  If there are more bytes remaining in the&#10;     * source buffer than in this buffer, that is, if&#10;     * {@code src.remaining()}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()},&#10;     * then no bytes are transferred and a {@link&#10;     * BufferOverflowException} is thrown.&#10;     *&#10;     * <p> Otherwise, this method copies&#10;     * <i>n</i>&#38;nbsp;=&#38;nbsp;{@code src.remaining()} bytes from the given&#10;     * buffer into this buffer, starting at each buffer's current position.&#10;     * The positions of both buffers are then incremented by <i>n</i>.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * {@code dst.put(src)} has exactly the same effect as the loop&#10;     *&#10;     * <pre>&#10;     *     while (src.hasRemaining())&#10;     *         dst.put(src.get()); </pre>&#10;     *&#10;     * except that it first checks that there is sufficient space in this&#10;     * buffer and it is potentially much more efficient.  If this buffer and&#10;     * the source buffer share the same backing array or memory, then the&#10;     * result will be as if the source elements were first copied to an&#10;     * intermediate location before being written into this buffer.&#10;     *&#10;     * @param  src&#10;     *         The source buffer from which bytes are to be read;&#10;     *         must not be this buffer&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *          for the remaining bytes in the source buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the source buffer is this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 104
    label "BufferOverflowException"
  ]
  node [
    id 105
    label "public ByteBuffer put(int index, ByteBuffer src, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers {@code length} bytes into this buffer from&#10;     * the given source buffer, starting at the given {@code offset} in the&#10;     * source buffer and the given {@code index} in this buffer. The positions&#10;     * of both buffers are unchanged.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>dst.put(index,&#38;nbsp;src,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the loop&#10;     *&#10;     * <pre>{@code&#10;     * for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *     dst.put(j, src.get(i));&#10;     * }</pre>&#10;     *&#10;     * except that it first checks the consistency of the supplied parameters&#10;     * and it is potentially much more efficient.  If this buffer and&#10;     * the source buffer share the same backing array or memory, then the&#10;     * result will be as if the source elements were first copied to an&#10;     * intermediate location before being written into this buffer.&#10;     *&#10;     * @param index&#10;     *        The index in this buffer at which the first byte will be&#10;     *        written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param src&#10;     *        The buffer from which bytes are to be read&#10;     *&#10;     * @param offset&#10;     *        The index within the source buffer of the first byte to be&#10;     *        read; must be non-negative and less than {@code src.limit()}&#10;     *&#10;     * @param length&#10;     *        The number of bytes to be read from the given buffer;&#10;     *        must be non-negative and no larger than the smaller of&#10;     *        {@code limit() - index} and {@code src.limit() - offset}&#10;     *&#10;     * @return This buffer&#10;     *&#10;     * @throws IndexOutOfBoundsException&#10;     *         If the preconditions on the {@code index}, {@code offset}, and&#10;     *         {@code length} parameters do not hold&#10;     *&#10;     * @throws ReadOnlyBufferException&#10;     *         If this buffer is read-only&#10;     *&#10;     * @since 16&#10;     "
  ]
  node [
    id 106
    label "public ByteBuffer put(byte[] src, int offset, int length)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers bytes into this buffer from the given&#10;     * source array.  If there are more bytes to be copied from the array&#10;     * than remain in this buffer, that is, if&#10;     * {@code length}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()}, then no&#10;     * bytes are transferred and a {@link BufferOverflowException} is&#10;     * thrown.&#10;     *&#10;     * <p> Otherwise, this method copies {@code length} bytes from the&#10;     * given array into this buffer, starting at the given offset in the array&#10;     * and at the current position of this buffer.  The position of this buffer&#10;     * is then incremented by {@code length}.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>dst.put(src,&#38;nbsp;off,&#38;nbsp;len)</code> has exactly the same effect as&#10;     * the loop&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = off; i < off + len; i++)&#10;     *         dst.put(src[i]);&#10;     * }</pre>&#10;     *&#10;     * except that it first checks that there is sufficient space in this&#10;     * buffer and it is potentially much more efficient.&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be read;&#10;     *         must be non-negative and no larger than {@code src.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be read from the given array;&#10;     *         must be non-negative and no larger than&#10;     *         {@code src.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 107
    label "public final ByteBuffer put(byte[] src)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers the entire content of the given source&#10;     * byte array into this buffer.  An invocation of this method of the&#10;     * form {@code dst.put(a)} behaves in exactly the same way as the&#10;     * invocation&#10;     *&#10;     * <pre>&#10;     *     dst.put(a, 0, a.length) </pre>&#10;     *&#10;     * @param   src&#10;     *          The source array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 108
    label "public ByteBuffer put(int index, byte[] src, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers {@code length} bytes from the given&#10;     * array, starting at the given offset in the array and at the given index&#10;     * in this buffer.  The position of this buffer is unchanged.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <code>dst.put(index,&#38;nbsp;src,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the following loop except that it first&#10;     * checks the consistency of the supplied parameters and it is potentially&#10;     * much more efficient:&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *         dst.put(j, src[i]);&#10;     * }</pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer at which the first byte will be&#10;     *         written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be read;&#10;     *         must be non-negative and less than {@code src.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be read from the given array;&#10;     *         must be non-negative and no larger than the smaller of&#10;     *         {@code limit() - index} and {@code src.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code index}, {@code offset}, and&#10;     *          {@code length} parameters do not hold&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 109
    label "public ByteBuffer put(int index, byte[] src)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method copies bytes into this buffer from the given source&#10;     * array.  The position of this buffer is unchanged.  An invocation of this&#10;     * method of the form <code>dst.put(index,&#38;nbsp;src)</code>&#10;     * behaves in exactly the same way as the invocation:&#10;     *&#10;     * <pre>&#10;     *     dst.put(index, src, 0, src.length); </pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer at which the first byte will be&#10;     *         written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative, not smaller than {@code limit()},&#10;     *          or {@code limit() - index < src.length}&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 110
    label "public final boolean hasArray()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is backed by an accessible byte&#10;     * array.&#10;     *&#10;     * <p> If this method returns {@code true} then the {@link #array() array}&#10;     * and {@link #arrayOffset() arrayOffset} methods may safely be invoked.&#10;     * </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer&#10;     *          is backed by an array and is not read-only&#10;     "
  ]
  node [
    id 111
    label "array()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 112
    label "arrayOffset()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 113
    label "public final byte[] array()"
    type "method"
    comment "&#10;     * Returns the byte array that backs this&#10;     * buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Modifications to this buffer's content will cause the returned&#10;     * array's content to be modified, and vice versa.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The array that backs this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     "
  ]
  node [
    id 114
    label "public final int arrayOffset()"
    type "method"
    comment "&#10;     * Returns the offset within this buffer's backing array of the first&#10;     * element of the buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> If this buffer is backed by an array then buffer position <i>p</i>&#10;     * corresponds to array index <i>p</i>&#38;nbsp;+&#38;nbsp;{@code arrayOffset()}.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The offset within this buffer's array&#10;     *          of the first element of the buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     "
  ]
  node [
    id 115
    label "public Buffer rewind()"
    type "method"
    comment "&#10;     * Rewinds this buffer.  The position is set to zero and the mark is&#10;     * discarded.&#10;     *&#10;     * <p> Invoke this method before a sequence of channel-write or <i>get</i>&#10;     * operations, assuming that the limit has already been set&#10;     * appropriately.  For example:&#10;     *&#10;     * <blockquote><pre>&#10;     * out.write(buf);    // Write remaining data&#10;     * buf.rewind();      // Rewind buffer&#10;     * buf.get(array);    // Copy data into array</pre></blockquote>&#10;     *&#10;     * @return  This buffer&#10;     "
  ]
  node [
    id 116
    label "public abstract ByteBuffer compact()"
    type "method"
    comment "&#10;     * Compacts this buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> The bytes between the buffer's current position and its limit,&#10;     * if any, are copied to the beginning of the buffer.  That is, the&#10;     * byte at index <i>p</i>&#38;nbsp;=&#38;nbsp;{@code position()} is copied&#10;     * to index zero, the byte at index <i>p</i>&#38;nbsp;+&#38;nbsp;1 is copied&#10;     * to index one, and so forth until the byte at index&#10;     * {@code limit()}&#38;nbsp;-&#38;nbsp;1 is copied to index&#10;     * <i>n</i>&#38;nbsp;=&#38;nbsp;{@code limit()}&#38;nbsp;-&#38;nbsp;{@code 1}&#38;nbsp;-&#38;nbsp;<i>p</i>.&#10;     * The buffer's position is then set to <i>n+1</i> and its limit is set to&#10;     * its capacity.  The mark, if defined, is discarded.&#10;     *&#10;     * <p> The buffer's position is set to the number of bytes copied,&#10;     * rather than to zero, so that an invocation of this method can be&#10;     * followed immediately by an invocation of another relative <i>put</i>&#10;     * method. </p>&#10;     *&#10;&#10;     *&#10;     * <p> Invoke this method after writing data from a buffer in case the&#10;     * write was incomplete.  The following loop, for example, copies bytes&#10;     * from one channel to another via the buffer {@code buf}:&#10;     *&#10;     * <blockquote><pre>{@code&#10;     *   buf.clear();          // Prepare buffer for use&#10;     *   while (in.read(buf) >= 0 || buf.position != 0) {&#10;     *       buf.flip();&#10;     *       out.write(buf);&#10;     *       buf.compact();    // In case of partial write&#10;     *   }&#10;     * }</pre></blockquote>&#10;     *&#10;&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 117
    label "public abstract boolean isDirect()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is&#10;     * <a href=&#34;ByteBuffer.html#direct&#34;><i>direct</i></a>.&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is direct&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 118
    label "public String toString()"
    type "method"
    comment "&#10;     * Returns a string summarizing the state of this buffer.&#10;     *&#10;     * @return  A summary string&#10;     "
  ]
  node [
    id 119
    label "public int hashCode()"
    type "method"
    comment "&#10;     * Returns the current hash code of this buffer.&#10;     *&#10;     * <p> The hash code of a byte buffer depends only upon its remaining&#10;     * elements; that is, upon the elements from {@code position()} up to, and&#10;     * including, the element at {@code limit()}&#38;nbsp;-&#38;nbsp;{@code 1}.&#10;     *&#10;     * <p> Because buffer hash codes are content-dependent, it is inadvisable&#10;     * to use buffers as keys in hash maps or similar data structures unless it&#10;     * is known that their contents will not change.  </p>&#10;     *&#10;     * @return  The current hash code of this buffer&#10;     "
  ]
  node [
    id 120
    label "public boolean equals(Object ob)"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is equal to another object.&#10;     *&#10;     * <p> Two byte buffers are equal if, and only if,&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> They have the same element type,  </p></li>&#10;     *&#10;     *   <li><p> They have the same number of remaining elements, and&#10;     *   </p></li>&#10;     *&#10;     *   <li><p> The two sequences of remaining elements, considered&#10;     *   independently of their starting positions, are pointwise equal.&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;     *   </p></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * <p> A byte buffer is not equal to any other type of object.  </p>&#10;     *&#10;     * @param  ob  The object to which this buffer is to be compared&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is equal to the&#10;     *           given object&#10;     "
  ]
  node [
    id 121
    label "public int compareTo(ByteBuffer that)"
    type "method"
    comment "&#10;     * Compares this buffer to another.&#10;     *&#10;     * <p> Two byte buffers are compared by comparing their sequences of&#10;     * remaining elements lexicographically, without regard to the starting&#10;     * position of each sequence within its corresponding buffer.&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;     * Pairs of {@code byte} elements are compared as if by invoking&#10;     * {@link Byte#compare(byte,byte)}.&#10;&#10;     *&#10;     * <p> A byte buffer is not comparable to any other type of object.&#10;     *&#10;     * @return  A negative integer, zero, or a positive integer as this buffer&#10;     *          is less than, equal to, or greater than the given buffer&#10;     "
  ]
  node [
    id 122
    label "compare(byte"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 123
    label "public int mismatch(ByteBuffer that)"
    type "method"
    comment "&#10;     * Finds and returns the relative index of the first mismatch between this&#10;     * buffer and a given buffer.  The index is relative to the&#10;     * {@link #position() position} of each buffer and will be in the range of&#10;     * 0 (inclusive) up to the smaller of the {@link #remaining() remaining}&#10;     * elements in each buffer (exclusive).&#10;     *&#10;     * <p> If the two buffers share a common prefix then the returned index is&#10;     * the length of the common prefix and it follows that there is a mismatch&#10;     * between the two buffers at that index within the respective buffers.&#10;     * If one buffer is a proper prefix of the other then the returned index is&#10;     * the smaller of the remaining elements in each buffer, and it follows that&#10;     * the index is only valid for the buffer with the larger number of&#10;     * remaining elements.&#10;     * Otherwise, there is no mismatch.&#10;     *&#10;     * @param  that&#10;     *         The byte buffer to be tested for a mismatch with this buffer&#10;     *&#10;     * @return  The relative index of the first mismatch between this and the&#10;     *          given buffer, otherwise -1 if no mismatch.&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 124
    label "position()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 125
    label "remaining()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 126
    label "public final ByteOrder order()"
    type "method"
    comment "&#10;     * Retrieves this buffer's byte order.&#10;     *&#10;     * <p> The byte order is used when reading or writing multibyte values, and&#10;     * when creating buffers that are views of this byte buffer.  The order of&#10;     * a newly-created byte buffer is always {@link ByteOrder#BIG_ENDIAN&#10;     * BIG_ENDIAN}.  </p>&#10;     *&#10;     * @return  This buffer's byte order&#10;     "
  ]
  node [
    id 127
    label "BIG_ENDIANBIG_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 128
    label "public final ByteBuffer order(ByteOrder bo)"
    type "method"
    comment "&#10;     * Modifies this buffer's byte order.&#10;     *&#10;     * @param  bo&#10;     *         The new byte order,&#10;     *         either {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}&#10;     *         or {@link ByteOrder#LITTLE_ENDIAN LITTLE_ENDIAN}&#10;     *&#10;     * @return  This buffer&#10;     "
  ]
  node [
    id 129
    label "LITTLE_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 130
    label "public final int alignmentOffset(int index, int unitSize)"
    type "method"
    comment "&#10;     * Returns the memory address, pointing to the byte at the given index,&#10;     * modulo the given unit size.&#10;     *&#10;     * <p> The return value is non-negative in the range of {@code 0}&#10;     * (inclusive) up to {@code unitSize} (exclusive), with zero indicating&#10;     * that the address of the byte at the index is aligned for the unit size,&#10;     * and a positive value that the address is misaligned for the unit size.&#10;     * If the address of the byte at the index is misaligned, the return value&#10;     * represents how much the index should be adjusted to locate a byte at an&#10;     * aligned address.  Specifically, the index should either be decremented by&#10;     * the return value if the latter is not greater than {@code index}, or be&#10;     * incremented by the unit size minus the return value.  Therefore given&#10;     * <blockquote><pre>&#10;     * int value = alignmentOffset(index, unitSize)</pre></blockquote>&#10;     * then the identities&#10;     * <blockquote><pre>&#10;     * alignmentOffset(index - value, unitSize) == 0, value &#38;le; index</pre></blockquote>&#10;     * and&#10;     * <blockquote><pre>&#10;     * alignmentOffset(index + (unitSize - value), unitSize) == 0</pre></blockquote>&#10;     * must hold.&#10;     *&#10;     * @apiNote&#10;     * This method may be utilized to determine if unit size bytes from an&#10;     * index can be accessed atomically, if supported by the native platform.&#10;     *&#10;     * @implNote&#10;     * This implementation throws {@code UnsupportedOperationException} for&#10;     * non-direct buffers when the given unit size is greater than {@code 8}.&#10;     *&#10;     * @param  index&#10;     *         The index to query for alignment offset, must be non-negative, no&#10;     *         upper bounds check is performed&#10;     *&#10;     * @param  unitSize&#10;     *         The unit size in bytes, must be a power of {@code 2}&#10;     *&#10;     * @return  The indexed byte's memory address modulo the unit size&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the index is negative or the unit size is not a power of&#10;     *         {@code 2}&#10;     *&#10;     * @throws UnsupportedOperationException&#10;     *         If the native platform does not guarantee stable alignment offset&#10;     *         values for the given unit size when managing the memory regions&#10;     *         of buffers of the same kind as this buffer (direct or&#10;     *         non-direct).  For example, if garbage collection would result&#10;     *         in the moving of a memory region covered by a non-direct buffer&#10;     *         from one location to another and both locations have different&#10;     *         alignment characteristics.&#10;     *&#10;     * @see #alignedSlice(int)&#10;     * @since 9&#10;     "
  ]
  node [
    id 131
    label "public final ByteBuffer alignedSlice(int unitSize)"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared and aligned&#10;     * subsequence of this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position rounded up to the index of the nearest aligned byte for the&#10;     * given unit size, and end at this buffer's limit rounded down to the index&#10;     * of the nearest aligned byte for the given unit size.&#10;     * If rounding results in out-of-bound values then the new buffer's capacity&#10;     * and limit will be zero.  If rounding is within bounds the following&#10;     * expressions will be true for a new buffer {@code nb} and unit size&#10;     * {@code unitSize}:&#10;     * <pre>{@code&#10;     * nb.alignmentOffset(0, unitSize) == 0&#10;     * nb.alignmentOffset(nb.limit(), unitSize) == 0&#10;     * }</pre>&#10;     *&#10;     * <p> Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer or fewer subject to&#10;     * alignment, its mark will be undefined, and its byte order will be&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;     *&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @apiNote&#10;     * This method may be utilized to create a new buffer where unit size bytes&#10;     * from index, that is a multiple of the unit size, may be accessed&#10;     * atomically, if supported by the native platform.&#10;     *&#10;     * @implNote&#10;     * This implementation throws {@code UnsupportedOperationException} for&#10;     * non-direct buffers when the given unit size is greater than {@code 8}.&#10;     *&#10;     * @param  unitSize&#10;     *         The unit size in bytes, must be a power of {@code 2}&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the unit size not a power of {@code 2}&#10;     *&#10;     * @throws UnsupportedOperationException&#10;     *         If the native platform does not guarantee stable aligned slices&#10;     *         for the given unit size when managing the memory regions&#10;     *         of buffers of the same kind as this buffer (direct or&#10;     *         non-direct).  For example, if garbage collection would result&#10;     *         in the moving of a memory region covered by a non-direct buffer&#10;     *         from one location to another and both locations have different&#10;     *         alignment characteristics.&#10;     *&#10;     * @see #alignmentOffset(int, int)&#10;     * @see #slice()&#10;     * @since 9&#10;     "
  ]
  node [
    id 132
    label " abstract byte _get(int i)"
    type "method"
    comment " package-private"
  ]
  node [
    id 133
    label " abstract void _put(int i, byte b)"
    type "method"
    comment " package-private"
  ]
  node [
    id 134
    label "public abstract char getChar()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a char value.&#10;     *&#10;     * <p> Reads the next two bytes at this buffer's current position,&#10;     * composing them into a char value according to the current byte order,&#10;     * and then increments the position by two.  </p>&#10;     *&#10;     * @return  The char value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 135
    label "public abstract ByteBuffer putChar(char value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a char&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given char value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by two.  </p>&#10;     *&#10;     * @param  value&#10;     *         The char value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 136
    label "public abstract char getChar(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a char value.&#10;     *&#10;     * <p> Reads two bytes at the given index, composing them into a&#10;     * char value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The char value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     "
  ]
  node [
    id 137
    label " abstract char getCharUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 138
    label "public abstract ByteBuffer putChar(int index, char value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a char&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given char value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The char value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 139
    label " abstract void putCharUnchecked(int index, char value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 140
    label "public abstract CharBuffer asCharBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a char buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * two, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new char buffer&#10;     "
  ]
  node [
    id 141
    label "public abstract short getShort()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a short value.&#10;     *&#10;     * <p> Reads the next two bytes at this buffer's current position,&#10;     * composing them into a short value according to the current byte order,&#10;     * and then increments the position by two.  </p>&#10;     *&#10;     * @return  The short value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 142
    label "public abstract ByteBuffer putShort(short value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a short&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given short value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by two.  </p>&#10;     *&#10;     * @param  value&#10;     *         The short value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 143
    label "public abstract short getShort(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a short value.&#10;     *&#10;     * <p> Reads two bytes at the given index, composing them into a&#10;     * short value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The short value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     "
  ]
  node [
    id 144
    label " abstract short getShortUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 145
    label "public abstract ByteBuffer putShort(int index, short value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a short&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given short value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The short value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 146
    label " abstract void putShortUnchecked(int index, short value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 147
    label "public abstract ShortBuffer asShortBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a short buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * two, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new short buffer&#10;     "
  ]
  node [
    id 148
    label "public abstract int getInt()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading an int value.&#10;     *&#10;     * <p> Reads the next four bytes at this buffer's current position,&#10;     * composing them into an int value according to the current byte order,&#10;     * and then increments the position by four.  </p>&#10;     *&#10;     * @return  The int value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 149
    label "public abstract ByteBuffer putInt(int value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing an int&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given int value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by four.  </p>&#10;     *&#10;     * @param  value&#10;     *         The int value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 150
    label "public abstract int getInt(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading an int value.&#10;     *&#10;     * <p> Reads four bytes at the given index, composing them into a&#10;     * int value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The int value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     "
  ]
  node [
    id 151
    label " abstract int getIntUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 152
    label "public abstract ByteBuffer putInt(int index, int value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing an int&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given int value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The int value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 153
    label " abstract void putIntUnchecked(int index, int value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 154
    label "public abstract IntBuffer asIntBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as an int buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * four, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new int buffer&#10;     "
  ]
  node [
    id 155
    label "public abstract long getLong()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a long value.&#10;     *&#10;     * <p> Reads the next eight bytes at this buffer's current position,&#10;     * composing them into a long value according to the current byte order,&#10;     * and then increments the position by eight.  </p>&#10;     *&#10;     * @return  The long value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 156
    label "public abstract ByteBuffer putLong(long value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a long&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given long value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by eight.  </p>&#10;     *&#10;     * @param  value&#10;     *         The long value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 157
    label "public abstract long getLong(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a long value.&#10;     *&#10;     * <p> Reads eight bytes at the given index, composing them into a&#10;     * long value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The long value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     "
  ]
  node [
    id 158
    label " abstract long getLongUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 159
    label "public abstract ByteBuffer putLong(int index, long value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a long&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given long value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The long value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 160
    label " abstract void putLongUnchecked(int index, long value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 161
    label "public abstract LongBuffer asLongBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a long buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * eight, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new long buffer&#10;     "
  ]
  node [
    id 162
    label "public abstract float getFloat()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a float value.&#10;     *&#10;     * <p> Reads the next four bytes at this buffer's current position,&#10;     * composing them into a float value according to the current byte order,&#10;     * and then increments the position by four.  </p>&#10;     *&#10;     * @return  The float value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 163
    label "public abstract ByteBuffer putFloat(float value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a float&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given float value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by four.  </p>&#10;     *&#10;     * @param  value&#10;     *         The float value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 164
    label "public abstract float getFloat(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a float value.&#10;     *&#10;     * <p> Reads four bytes at the given index, composing them into a&#10;     * float value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The float value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     "
  ]
  node [
    id 165
    label " abstract float getFloatUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 166
    label "public abstract ByteBuffer putFloat(int index, float value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a float&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given float value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The float value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 167
    label " abstract void putFloatUnchecked(int index, float value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 168
    label "public abstract FloatBuffer asFloatBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a float buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * four, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new float buffer&#10;     "
  ]
  node [
    id 169
    label "public abstract double getDouble()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a double value.&#10;     *&#10;     * <p> Reads the next eight bytes at this buffer's current position,&#10;     * composing them into a double value according to the current byte order,&#10;     * and then increments the position by eight.  </p>&#10;     *&#10;     * @return  The double value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 170
    label "public abstract ByteBuffer putDouble(double value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a double&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given double value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by eight.  </p>&#10;     *&#10;     * @param  value&#10;     *         The double value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 171
    label "public abstract double getDouble(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a double value.&#10;     *&#10;     * <p> Reads eight bytes at the given index, composing them into a&#10;     * double value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The double value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     "
  ]
  node [
    id 172
    label " abstract double getDoubleUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 173
    label "public abstract ByteBuffer putDouble(int index, double value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a double&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given double value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The double value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 174
    label " abstract void putDoubleUnchecked(int index, double value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 175
    label "public abstract DoubleBuffer asDoubleBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a double buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * eight, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new double buffer&#10;     "
  ]
  node [
    id 176
    label "public final int remaining()"
    type "method"
    comment "&#10;     * Returns the number of elements between the current position and the&#10;     * limit.&#10;     *&#10;     * @return  The number of elements remaining in this buffer&#10;     "
  ]
  node [
    id 177
    label "public final boolean hasRemaining()"
    type "method"
    comment "&#10;     * Tells whether there are any elements between the current position and&#10;     * the limit.&#10;     *&#10;     * @return  {@code true} if, and only if, there is at least one element&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 178
    label "public abstract boolean isReadOnly()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is read-only.&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is read-only&#10;     "
  ]
  node [
    id 179
    label "public abstract boolean hasArray()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is backed by an accessible&#10;     * array.&#10;     *&#10;     * <p> If this method returns {@code true} then the {@link #array() array}&#10;     * and {@link #arrayOffset() arrayOffset} methods may safely be invoked.&#10;     * </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer&#10;     *          is backed by an array and is not read-only&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 180
    label "public abstract Object array()"
    type "method"
    comment "&#10;     * Returns the array that backs this&#10;     * buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method is intended to allow array-backed buffers to be&#10;     * passed to native code more efficiently. Concrete subclasses&#10;     * provide more strongly-typed return values for this method.&#10;     *&#10;     * <p> Modifications to this buffer's content will cause the returned&#10;     * array's content to be modified, and vice versa.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The array that backs this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 181
    label "public abstract int arrayOffset()"
    type "method"
    comment "&#10;     * Returns the offset within this buffer's backing array of the first&#10;     * element of the buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> If this buffer is backed by an array then buffer position <i>p</i>&#10;     * corresponds to array index <i>p</i>&#38;nbsp;+&#38;nbsp;{@code arrayOffset()}.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The offset within this buffer's array&#10;     *          of the first element of the buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 182
    label "public abstract Buffer slice()"
    type "method"
    comment "&#10;     * Creates a new buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of elements remaining in this buffer, its mark will be&#10;     * undefined. The new buffer will be direct if, and only if, this buffer is&#10;     * direct, and it will be read-only if, and only if, this buffer is&#10;     * read-only.  </p>&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 183
    label "public abstract Buffer slice(int index, int length)"
    type "method"
    comment "&#10;     * Creates a new buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at position {@code index}&#10;     * in this buffer, and will contain {@code length} elements. Changes to&#10;     * this buffer's content will be visible in the new buffer, and vice versa;&#10;     * the two buffers' position, limit, and mark values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be {@code length}, its mark will be undefined. The new buffer will&#10;     * be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @param   index&#10;     *          The position in this buffer at which the content of the new&#10;     *          buffer will start; must be non-negative and no larger than&#10;     *          {@link #limit() limit()}&#10;     *&#10;     * @param   length&#10;     *          The number of elements the new buffer will contain; must be&#10;     *          non-negative and no larger than {@code limit() - index}&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative or greater than {@code limit()},&#10;     *          {@code length} is negative, or {@code length > limit() - index}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 184
    label "public abstract Buffer duplicate()"
    type "method"
    comment "&#10;     * Creates a new buffer that shares this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer, and vice&#10;     * versa; the two buffers' position, limit, and mark values will be&#10;     * independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position and mark values will be&#10;     * identical to those of this buffer. The new buffer will be direct if, and&#10;     * only if, this buffer is direct, and it will be read-only if, and only if,&#10;     * this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 185
    label " abstract Object base()"
    type "method"
    comment "&#10;     *&#10;     * @return the base reference, paired with the address&#10;     * field, which in combination can be used for unsafe access into a heap&#10;     * buffer or direct byte buffer (and views of).&#10;     "
  ]
  node [
    id 186
    label " final int nextGetIndex()"
    type "method"
    comment "&#10;     * Checks the current position against the limit, throwing a {@link&#10;     * BufferUnderflowException} if it is not smaller than the limit, and then&#10;     * increments the position.&#10;     *&#10;     * @return  The current position value, before it is incremented&#10;     "
  ]
  node [
    id 187
    label " final int nextPutIndex()"
    type "method"
    comment "&#10;     * Checks the current position against the limit, throwing a {@link&#10;     * BufferOverflowException} if it is not smaller than the limit, and then&#10;     * increments the position.&#10;     *&#10;     * @return  The current position value, before it is incremented&#10;     "
  ]
  node [
    id 188
    label " final int checkIndex(int i)"
    type "method"
    comment "&#10;     * Checks the given index against the limit, throwing an {@link&#10;     * IndexOutOfBoundsException} if it is not smaller than the limit&#10;     * or is smaller than zero.&#10;     "
  ]
  node [
    id 189
    label "IndexOutOfBoundsException"
  ]
  node [
    id 190
    label "length()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 191
    label "REPORT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 192
    label "CoderResult"
  ]
  node [
    id 193
    label "public final CoderResult flush(CharBuffer out)"
    type "method"
    comment "&#10;     * Flushes this decoder.&#10;     *&#10;     * <p> Some decoders maintain internal state and may need to write some&#10;     * final characters to the output buffer once the overall input sequence has&#10;     * been read.&#10;     *&#10;     * <p> Any additional output is written to the output buffer beginning at&#10;     * its current position.  At most {@link Buffer#remaining out.remaining()}&#10;     * characters will be written.  The buffer's position will be advanced&#10;     * appropriately, but its mark and limit will not be modified.&#10;     *&#10;     * <p> If this method completes successfully then it returns {@link&#10;     * CoderResult#UNDERFLOW}.  If there is insufficient room in the output&#10;     * buffer then it returns {@link CoderResult#OVERFLOW}.  If this happens&#10;     * then this method must be invoked again, with an output buffer that has&#10;     * more room, in order to complete the current <a href=&#34;#steps&#34;>decoding&#10;     * operation</a>.&#10;     *&#10;     * <p> If this decoder has already been flushed then invoking this method&#10;     * has no effect.&#10;     *&#10;     * <p> This method invokes the {@link #implFlush implFlush} method to&#10;     * perform the actual flushing operation.  </p>&#10;     *&#10;     * @param  out&#10;     *         The output character buffer&#10;     *&#10;     * @return  A coder-result object, either {@link CoderResult#UNDERFLOW} or&#10;     *          {@link CoderResult#OVERFLOW}&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If the previous step of the current decoding operation was an&#10;     *          invocation neither of the {@link #flush flush} method nor of&#10;     *          the three-argument {@link&#10;     *          #decode(ByteBuffer,CharBuffer,boolean) decode} method&#10;     *          with a value of {@code true} for the {@code endOfInput}&#10;     *          parameter&#10;     "
  ]
  node [
    id 194
    label "flush"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 195
    label "decode(ByteBuffer"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 196
    label "implFlush"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 197
    label "protected CoderResult implFlush(CharBuffer out)"
    type "method"
    comment "&#10;     * Flushes this decoder.&#10;     *&#10;     * <p> The default implementation of this method does nothing, and always&#10;     * returns {@link CoderResult#UNDERFLOW}.  This method should be overridden&#10;     * by decoders that may need to write final characters to the output buffer&#10;     * once the entire input sequence has been read. </p>&#10;     *&#10;     * @param  out&#10;     *         The output character buffer&#10;     *&#10;     * @return  A coder-result object, either {@link CoderResult#UNDERFLOW} or&#10;     *          {@link CoderResult#OVERFLOW}&#10;     "
  ]
  node [
    id 198
    label "public final CharsetDecoder reset()"
    type "method"
    comment "&#10;     * Resets this decoder, clearing any internal state.&#10;     *&#10;     * <p> This method resets charset-independent state and also invokes the&#10;     * {@link #implReset() implReset} method in order to perform any&#10;     * charset-specific reset actions.  </p>&#10;     *&#10;     * @return  This decoder&#10;     *&#10;     "
  ]
  node [
    id 199
    label "implReset()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 200
    label "protected void implReset()"
    type "method"
    comment "&#10;     * Resets this decoder, clearing any charset-specific internal state.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by decoders that maintain internal state.  </p>&#10;     "
  ]
  node [
    id 201
    label "protected abstract CoderResult decodeLoop(ByteBuffer in, CharBuffer out)"
    type "method"
    comment "&#10;     * Decodes one or more bytes into one or more characters.&#10;     *&#10;     * <p> This method encapsulates the basic decoding loop, decoding as many&#10;     * bytes as possible until it either runs out of input, runs out of room&#10;     * in the output buffer, or encounters a decoding error.  This method is&#10;     * invoked by the {@link #decode decode} method, which handles result&#10;     * interpretation and error recovery.&#10;     *&#10;     * <p> The buffers are read from, and written to, starting at their current&#10;     * positions.  At most {@link Buffer#remaining in.remaining()} bytes&#10;     * will be read, and at most {@link Buffer#remaining out.remaining()}&#10;     * characters will be written.  The buffers' positions will be advanced to&#10;     * reflect the bytes read and the characters written, but their marks and&#10;     * limits will not be modified.&#10;     *&#10;     * <p> This method returns a {@link CoderResult} object to describe its&#10;     * reason for termination, in the same manner as the {@link #decode decode}&#10;     * method.  Most implementations of this method will handle decoding errors&#10;     * by returning an appropriate result object for interpretation by the&#10;     * {@link #decode decode} method.  An optimized implementation may instead&#10;     * examine the relevant error action and implement that action itself.&#10;     *&#10;     * <p> An implementation of this method may perform arbitrary lookahead by&#10;     * returning {@link CoderResult#UNDERFLOW} until it receives sufficient&#10;     * input.  </p>&#10;     *&#10;     * @param  in&#10;     *         The input byte buffer&#10;     *&#10;     * @param  out&#10;     *         The output character buffer&#10;     *&#10;     * @return  A coder-result object describing the reason for termination&#10;     "
  ]
  node [
    id 202
    label "decode"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 203
    label "public final CharBuffer decode(ByteBuffer in) throws CharacterCodingException"
    type "method"
    comment "&#10;     * Convenience method that decodes the remaining content of a single input&#10;     * byte buffer into a newly-allocated character buffer.&#10;     *&#10;     * <p> This method implements an entire <a href=&#34;#steps&#34;>decoding&#10;     * operation</a>; that is, it resets this decoder, then it decodes the&#10;     * bytes in the given byte buffer, and finally it flushes this&#10;     * decoder.  This method should therefore not be invoked if a decoding&#10;     * operation is already in progress.  </p>&#10;     *&#10;     * @param  in&#10;     *         The input byte buffer&#10;     *&#10;     * @return A newly-allocated character buffer containing the result of the&#10;     *         decoding operation.  The buffer's position will be zero and its&#10;     *         limit will follow the last character written.&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If a decoding operation is already in progress&#10;     *&#10;     * @throws  MalformedInputException&#10;     *          If the byte sequence starting at the input buffer's current&#10;     *          position is not legal for this charset and the current malformed-input action&#10;     *          is {@link CodingErrorAction#REPORT}&#10;     *&#10;     * @throws  UnmappableCharacterException&#10;     *          If the byte sequence starting at the input buffer's current&#10;     *          position cannot be mapped to an equivalent character sequence and&#10;     *          the current unmappable-character action is {@link&#10;     *          CodingErrorAction#REPORT}&#10;     *&#10;     * @throws  CoderMalfunctionError&#10;     *          If an invocation of the decodeLoop method threw&#10;     *          an unexpected exception&#10;     *&#10;     * @throws  NullPointerException if input buffer is null&#10;     "
  ]
  node [
    id 204
    label "public boolean isAutoDetecting()"
    type "method"
    comment "&#10;     * Tells whether or not this decoder implements an auto-detecting charset.&#10;     *&#10;     * <p> The default implementation of this method always returns&#10;     * {@code false}; it should be overridden by auto-detecting decoders to&#10;     * return {@code true}.  </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this decoder implements an&#10;     *          auto-detecting charset&#10;     "
  ]
  node [
    id 205
    label "public boolean isCharsetDetected()"
    type "method"
    comment "&#10;     * Tells whether or not this decoder has yet detected a&#10;     * charset&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> If this decoder implements an auto-detecting charset then at a&#10;     * single point during a decoding operation this method may start returning&#10;     * {@code true} to indicate that a specific charset has been detected in&#10;     * the input byte sequence.  Once this occurs, the {@link #detectedCharset&#10;     * detectedCharset} method may be invoked to retrieve the detected charset.&#10;     *&#10;     * <p> That this method returns {@code false} does not imply that no bytes&#10;     * have yet been decoded.  Some auto-detecting decoders are capable of&#10;     * decoding some, or even all, of an input byte sequence without fixing on&#10;     * a particular charset.&#10;     *&#10;     * <p> The default implementation of this method always throws an {@link&#10;     * UnsupportedOperationException}; it should be overridden by&#10;     * auto-detecting decoders to return {@code true} once the input charset&#10;     * has been determined.  </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this decoder has detected a&#10;     *          specific charset&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this decoder does not implement an auto-detecting charset&#10;     "
  ]
  node [
    id 206
    label "detectedCharsetdetectedCharset"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 207
    label "UnsupportedOperationException"
  ]
  node [
    id 208
    label "public Charset detectedCharset()"
    type "method"
    comment "&#10;     * Retrieves the charset that was detected by this&#10;     * decoder&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> If this decoder implements an auto-detecting charset then this&#10;     * method returns the actual charset once it has been detected.  After that&#10;     * point, this method returns the same value for the duration of the&#10;     * current decoding operation.  If not enough input bytes have yet been&#10;     * read to determine the actual charset then this method throws an {@link&#10;     * IllegalStateException}.&#10;     *&#10;     * <p> The default implementation of this method always throws an {@link&#10;     * UnsupportedOperationException}; it should be overridden by&#10;     * auto-detecting decoders to return the appropriate value.  </p>&#10;     *&#10;     * @return  The charset detected by this auto-detecting decoder,&#10;     *          or {@code null} if the charset has not yet been determined&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If insufficient bytes have been read to determine a charset&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this decoder does not implement an auto-detecting charset&#10;     "
  ]
  node [
    id 209
    label "IllegalStateException"
  ]
  node [
    id 210
    label "public void close() throws IOException"
    type "method"
    comment "&#10;     * Closing a {@code ByteArrayOutputStream} has no effect. The methods in&#10;     * this class can be called after the stream has been closed without&#10;     * generating an {@code IOException}.&#10;     "
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
    target 40
    type "child"
  ]
  edge [
    source 0
    target 210
    type "child"
  ]
  edge [
    source 5
    target 6
    type "link"
  ]
  edge [
    source 12
    target 13
    type "link"
  ]
  edge [
    source 13
    target 14
    type "child"
  ]
  edge [
    source 13
    target 15
    type "child"
  ]
  edge [
    source 13
    target 16
    type "child"
  ]
  edge [
    source 13
    target 17
    type "child"
  ]
  edge [
    source 13
    target 18
    type "child"
  ]
  edge [
    source 13
    target 21
    type "child"
  ]
  edge [
    source 13
    target 22
    type "child"
  ]
  edge [
    source 13
    target 23
    type "child"
  ]
  edge [
    source 13
    target 24
    type "child"
  ]
  edge [
    source 13
    target 25
    type "child"
  ]
  edge [
    source 13
    target 26
    type "child"
  ]
  edge [
    source 13
    target 27
    type "child"
  ]
  edge [
    source 13
    target 28
    type "child"
  ]
  edge [
    source 13
    target 29
    type "child"
  ]
  edge [
    source 13
    target 30
    type "child"
  ]
  edge [
    source 13
    target 31
    type "child"
  ]
  edge [
    source 13
    target 33
    type "child"
  ]
  edge [
    source 13
    target 35
    type "child"
  ]
  edge [
    source 13
    target 36
    type "child"
  ]
  edge [
    source 13
    target 37
    type "child"
  ]
  edge [
    source 13
    target 38
    type "child"
  ]
  edge [
    source 13
    target 39
    type "child"
  ]
  edge [
    source 18
    target 19
    type "link"
  ]
  edge [
    source 18
    target 20
    type "link"
  ]
  edge [
    source 31
    target 32
    type "link"
  ]
  edge [
    source 33
    target 34
    type "link"
  ]
  edge [
    source 40
    target 13
    type "link"
  ]
  edge [
    source 40
    target 41
    type "link"
  ]
  edge [
    source 41
    target 42
    type "child"
  ]
  edge [
    source 41
    target 43
    type "child"
  ]
  edge [
    source 41
    target 44
    type "child"
  ]
  edge [
    source 41
    target 47
    type "child"
  ]
  edge [
    source 41
    target 48
    type "child"
  ]
  edge [
    source 41
    target 49
    type "child"
  ]
  edge [
    source 41
    target 51
    type "child"
  ]
  edge [
    source 41
    target 52
    type "child"
  ]
  edge [
    source 41
    target 53
    type "child"
  ]
  edge [
    source 41
    target 55
    type "child"
  ]
  edge [
    source 41
    target 56
    type "child"
  ]
  edge [
    source 41
    target 57
    type "child"
  ]
  edge [
    source 41
    target 58
    type "child"
  ]
  edge [
    source 41
    target 193
    type "child"
  ]
  edge [
    source 41
    target 197
    type "child"
  ]
  edge [
    source 41
    target 198
    type "child"
  ]
  edge [
    source 41
    target 200
    type "child"
  ]
  edge [
    source 41
    target 201
    type "child"
  ]
  edge [
    source 41
    target 203
    type "child"
  ]
  edge [
    source 41
    target 204
    type "child"
  ]
  edge [
    source 41
    target 205
    type "child"
  ]
  edge [
    source 41
    target 208
    type "child"
  ]
  edge [
    source 44
    target 45
    type "link"
  ]
  edge [
    source 44
    target 46
    type "link"
  ]
  edge [
    source 49
    target 50
    type "link"
  ]
  edge [
    source 53
    target 54
    type "link"
  ]
  edge [
    source 58
    target 59
    type "link"
  ]
  edge [
    source 58
    target 60
    type "link"
  ]
  edge [
    source 58
    target 61
    type "link"
  ]
  edge [
    source 58
    target 62
    type "link"
  ]
  edge [
    source 58
    target 63
    type "link"
  ]
  edge [
    source 58
    target 190
    type "link"
  ]
  edge [
    source 58
    target 191
    type "link"
  ]
  edge [
    source 58
    target 192
    type "link"
  ]
  edge [
    source 64
    target 65
    type "child"
  ]
  edge [
    source 64
    target 66
    type "child"
  ]
  edge [
    source 64
    target 67
    type "child"
  ]
  edge [
    source 64
    target 68
    type "child"
  ]
  edge [
    source 64
    target 69
    type "child"
  ]
  edge [
    source 64
    target 70
    type "child"
  ]
  edge [
    source 64
    target 71
    type "child"
  ]
  edge [
    source 64
    target 72
    type "child"
  ]
  edge [
    source 64
    target 73
    type "child"
  ]
  edge [
    source 64
    target 74
    type "child"
  ]
  edge [
    source 64
    target 75
    type "child"
  ]
  edge [
    source 64
    target 76
    type "child"
  ]
  edge [
    source 64
    target 77
    type "child"
  ]
  edge [
    source 64
    target 115
    type "child"
  ]
  edge [
    source 64
    target 176
    type "child"
  ]
  edge [
    source 64
    target 177
    type "child"
  ]
  edge [
    source 64
    target 178
    type "child"
  ]
  edge [
    source 64
    target 179
    type "child"
  ]
  edge [
    source 64
    target 180
    type "child"
  ]
  edge [
    source 64
    target 181
    type "child"
  ]
  edge [
    source 64
    target 117
    type "child"
  ]
  edge [
    source 64
    target 182
    type "child"
  ]
  edge [
    source 64
    target 183
    type "child"
  ]
  edge [
    source 64
    target 184
    type "child"
  ]
  edge [
    source 64
    target 185
    type "child"
  ]
  edge [
    source 64
    target 186
    type "child"
  ]
  edge [
    source 64
    target 187
    type "child"
  ]
  edge [
    source 64
    target 188
    type "child"
  ]
  edge [
    source 77
    target 78
    type "link"
  ]
  edge [
    source 79
    target 80
    type "child"
  ]
  edge [
    source 79
    target 83
    type "child"
  ]
  edge [
    source 79
    target 86
    type "child"
  ]
  edge [
    source 79
    target 87
    type "child"
  ]
  edge [
    source 79
    target 88
    type "child"
  ]
  edge [
    source 79
    target 89
    type "child"
  ]
  edge [
    source 79
    target 91
    type "child"
  ]
  edge [
    source 79
    target 92
    type "child"
  ]
  edge [
    source 79
    target 94
    type "child"
  ]
  edge [
    source 79
    target 95
    type "child"
  ]
  edge [
    source 79
    target 96
    type "child"
  ]
  edge [
    source 79
    target 97
    type "child"
  ]
  edge [
    source 79
    target 98
    type "child"
  ]
  edge [
    source 79
    target 100
    type "child"
  ]
  edge [
    source 79
    target 101
    type "child"
  ]
  edge [
    source 79
    target 102
    type "child"
  ]
  edge [
    source 79
    target 103
    type "child"
  ]
  edge [
    source 79
    target 105
    type "child"
  ]
  edge [
    source 79
    target 106
    type "child"
  ]
  edge [
    source 79
    target 107
    type "child"
  ]
  edge [
    source 79
    target 108
    type "child"
  ]
  edge [
    source 79
    target 109
    type "child"
  ]
  edge [
    source 79
    target 110
    type "child"
  ]
  edge [
    source 79
    target 113
    type "child"
  ]
  edge [
    source 79
    target 114
    type "child"
  ]
  edge [
    source 79
    target 69
    type "child"
  ]
  edge [
    source 79
    target 72
    type "child"
  ]
  edge [
    source 79
    target 74
    type "child"
  ]
  edge [
    source 79
    target 75
    type "child"
  ]
  edge [
    source 79
    target 76
    type "child"
  ]
  edge [
    source 79
    target 77
    type "child"
  ]
  edge [
    source 79
    target 115
    type "child"
  ]
  edge [
    source 79
    target 116
    type "child"
  ]
  edge [
    source 79
    target 117
    type "child"
  ]
  edge [
    source 79
    target 118
    type "child"
  ]
  edge [
    source 79
    target 119
    type "child"
  ]
  edge [
    source 79
    target 120
    type "child"
  ]
  edge [
    source 79
    target 121
    type "child"
  ]
  edge [
    source 79
    target 123
    type "child"
  ]
  edge [
    source 79
    target 126
    type "child"
  ]
  edge [
    source 79
    target 128
    type "child"
  ]
  edge [
    source 79
    target 130
    type "child"
  ]
  edge [
    source 79
    target 131
    type "child"
  ]
  edge [
    source 79
    target 132
    type "child"
  ]
  edge [
    source 79
    target 133
    type "child"
  ]
  edge [
    source 79
    target 134
    type "child"
  ]
  edge [
    source 79
    target 135
    type "child"
  ]
  edge [
    source 79
    target 136
    type "child"
  ]
  edge [
    source 79
    target 137
    type "child"
  ]
  edge [
    source 79
    target 138
    type "child"
  ]
  edge [
    source 79
    target 139
    type "child"
  ]
  edge [
    source 79
    target 140
    type "child"
  ]
  edge [
    source 79
    target 141
    type "child"
  ]
  edge [
    source 79
    target 142
    type "child"
  ]
  edge [
    source 79
    target 143
    type "child"
  ]
  edge [
    source 79
    target 144
    type "child"
  ]
  edge [
    source 79
    target 145
    type "child"
  ]
  edge [
    source 79
    target 146
    type "child"
  ]
  edge [
    source 79
    target 147
    type "child"
  ]
  edge [
    source 79
    target 148
    type "child"
  ]
  edge [
    source 79
    target 149
    type "child"
  ]
  edge [
    source 79
    target 150
    type "child"
  ]
  edge [
    source 79
    target 151
    type "child"
  ]
  edge [
    source 79
    target 152
    type "child"
  ]
  edge [
    source 79
    target 153
    type "child"
  ]
  edge [
    source 79
    target 154
    type "child"
  ]
  edge [
    source 79
    target 155
    type "child"
  ]
  edge [
    source 79
    target 156
    type "child"
  ]
  edge [
    source 79
    target 157
    type "child"
  ]
  edge [
    source 79
    target 158
    type "child"
  ]
  edge [
    source 79
    target 159
    type "child"
  ]
  edge [
    source 79
    target 160
    type "child"
  ]
  edge [
    source 79
    target 161
    type "child"
  ]
  edge [
    source 79
    target 162
    type "child"
  ]
  edge [
    source 79
    target 163
    type "child"
  ]
  edge [
    source 79
    target 164
    type "child"
  ]
  edge [
    source 79
    target 165
    type "child"
  ]
  edge [
    source 79
    target 166
    type "child"
  ]
  edge [
    source 79
    target 167
    type "child"
  ]
  edge [
    source 79
    target 168
    type "child"
  ]
  edge [
    source 79
    target 169
    type "child"
  ]
  edge [
    source 79
    target 170
    type "child"
  ]
  edge [
    source 79
    target 171
    type "child"
  ]
  edge [
    source 79
    target 172
    type "child"
  ]
  edge [
    source 79
    target 173
    type "child"
  ]
  edge [
    source 79
    target 174
    type "child"
  ]
  edge [
    source 79
    target 175
    type "child"
  ]
  edge [
    source 80
    target 81
    type "link"
  ]
  edge [
    source 80
    target 82
    type "link"
  ]
  edge [
    source 83
    target 84
    type "link"
  ]
  edge [
    source 83
    target 85
    type "link"
  ]
  edge [
    source 83
    target 81
    type "link"
  ]
  edge [
    source 86
    target 84
    type "link"
  ]
  edge [
    source 86
    target 85
    type "link"
  ]
  edge [
    source 86
    target 81
    type "link"
  ]
  edge [
    source 87
    target 84
    type "link"
  ]
  edge [
    source 87
    target 85
    type "link"
  ]
  edge [
    source 87
    target 81
    type "link"
  ]
  edge [
    source 88
    target 81
    type "link"
  ]
  edge [
    source 89
    target 90
    type "link"
  ]
  edge [
    source 89
    target 81
    type "link"
  ]
  edge [
    source 91
    target 81
    type "link"
  ]
  edge [
    source 92
    target 93
    type "link"
  ]
  edge [
    source 92
    target 81
    type "link"
  ]
  edge [
    source 98
    target 99
    type "link"
  ]
  edge [
    source 103
    target 104
    type "link"
  ]
  edge [
    source 106
    target 104
    type "link"
  ]
  edge [
    source 110
    target 111
    type "link"
  ]
  edge [
    source 110
    target 112
    type "link"
  ]
  edge [
    source 113
    target 82
    type "link"
  ]
  edge [
    source 114
    target 82
    type "link"
  ]
  edge [
    source 121
    target 122
    type "link"
  ]
  edge [
    source 123
    target 124
    type "link"
  ]
  edge [
    source 123
    target 125
    type "link"
  ]
  edge [
    source 126
    target 127
    type "link"
  ]
  edge [
    source 128
    target 129
    type "link"
  ]
  edge [
    source 128
    target 81
    type "link"
  ]
  edge [
    source 131
    target 81
    type "link"
  ]
  edge [
    source 179
    target 111
    type "link"
  ]
  edge [
    source 179
    target 112
    type "link"
  ]
  edge [
    source 180
    target 82
    type "link"
  ]
  edge [
    source 181
    target 82
    type "link"
  ]
  edge [
    source 183
    target 90
    type "link"
  ]
  edge [
    source 186
    target 99
    type "link"
  ]
  edge [
    source 187
    target 104
    type "link"
  ]
  edge [
    source 188
    target 189
    type "link"
  ]
  edge [
    source 193
    target 61
    type "link"
  ]
  edge [
    source 193
    target 194
    type "link"
  ]
  edge [
    source 193
    target 62
    type "link"
  ]
  edge [
    source 193
    target 195
    type "link"
  ]
  edge [
    source 193
    target 63
    type "link"
  ]
  edge [
    source 193
    target 196
    type "link"
  ]
  edge [
    source 197
    target 61
    type "link"
  ]
  edge [
    source 197
    target 62
    type "link"
  ]
  edge [
    source 198
    target 199
    type "link"
  ]
  edge [
    source 201
    target 62
    type "link"
  ]
  edge [
    source 201
    target 63
    type "link"
  ]
  edge [
    source 201
    target 202
    type "link"
  ]
  edge [
    source 201
    target 192
    type "link"
  ]
  edge [
    source 203
    target 191
    type "link"
  ]
  edge [
    source 205
    target 206
    type "link"
  ]
  edge [
    source 205
    target 207
    type "link"
  ]
  edge [
    source 208
    target 209
    type "link"
  ]
  edge [
    source 208
    target 207
    type "link"
  ]
]
