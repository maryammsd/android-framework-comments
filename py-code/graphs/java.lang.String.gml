graph [
  directed 1
  node [
    id 0
    label "java.lang.String"
    type "class"
    comment ""
  ]
  node [
    id 1
    label "public int length()"
    type "method"
    comment "&#10;     * Returns the length of the erroneous input described by this&#10;     * object&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * @return  The length of the erroneous input, a positive integer&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this object does not describe an error condition, that is,&#10;     *          if the {@link #isError() isError} does not return {@code true}&#10;     "
  ]
  node [
    id 2
    label "public boolean isEmpty()"
    type "method"
    comment "&#10;     * Returns {@code true} if, and only if, {@link #length()} is {@code 0}.&#10;     *&#10;     * @return {@code true} if {@link #length()} is {@code 0}, otherwise&#10;     * {@code false}&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 3
    label "length()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "public native char charAt(int index)"
    type "method"
    comment "&#10;    public char charAt(int index) {&#10;        if (isLatin1()) {&#10;            return StringLatin1.charAt(value, index);&#10;        } else {&#10;            return StringUTF16.charAt(value, index);&#10;        }&#10;    }&#10;    "
  ]
  node [
    id 5
    label "public int codePointAt(int index)"
    type "method"
    comment "&#10;     * Returns the character (Unicode code point) at the specified&#10;     * index. The index refers to {@code char} values&#10;     * (Unicode code units) and ranges from {@code 0} to&#10;     * {@link #length()}{@code  - 1}.&#10;     *&#10;     * <p> If the {@code char} value specified at the given index&#10;     * is in the high-surrogate range, the following index is less&#10;     * than the length of this {@code String}, and the&#10;     * {@code char} value at the following index is in the&#10;     * low-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at the given index is returned.&#10;     *&#10;     * @param      index the index to the {@code char} values&#10;     * @return     the code point value of the character at the&#10;     *             {@code index}&#10;     * @exception  IndexOutOfBoundsException  if the {@code index}&#10;     *             argument is negative or not less than the length of this&#10;     *             string.&#10;     * @since      1.5&#10;     "
  ]
  node [
    id 6
    label "public int codePointBefore(int index)"
    type "method"
    comment "&#10;     * Returns the character (Unicode code point) before the specified&#10;     * index. The index refers to {@code char} values&#10;     * (Unicode code units) and ranges from {@code 1} to {@link&#10;     * CharSequence#length() length}.&#10;     *&#10;     * <p> If the {@code char} value at {@code (index - 1)}&#10;     * is in the low-surrogate range, {@code (index - 2)} is not&#10;     * negative, and the {@code char} value at {@code (index -&#10;     * 2)} is in the high-surrogate range, then the&#10;     * supplementary code point value of the surrogate pair is&#10;     * returned. If the {@code char} value at {@code index -&#10;     * 1} is an unpaired low-surrogate or a high-surrogate, the&#10;     * surrogate value is returned.&#10;     *&#10;     * @param     index the index following the code point that should be returned&#10;     * @return    the Unicode code point value before the given index.&#10;     * @exception IndexOutOfBoundsException if the {@code index}&#10;     *            argument is less than 1 or greater than the length&#10;     *            of this string.&#10;     * @since     1.5&#10;     "
  ]
  node [
    id 7
    label "java.lang.CharSequence"
    type "class"
    comment ""
  ]
  node [
    id 8
    label " int length()"
    type "method"
    comment "&#10;     * Returns the length of this character sequence.  The length is the number&#10;     * of 16-bit {@code char}s in the sequence.&#10;     *&#10;     * @return  the number of {@code char}s in this sequence&#10;     "
  ]
  node [
    id 9
    label " char charAt(int index)"
    type "method"
    comment "&#10;     * Returns the {@code char} value at the specified index.  An index ranges from zero&#10;     * to {@code length() - 1}.  The first {@code char} value of the sequence is at&#10;     * index zero, the next at index one, and so on, as for array&#10;     * indexing.&#10;     *&#10;     * <p>If the {@code char} value specified by the index is a&#10;     * <a href=&#34;{@docRoot}/java.base/java/lang/Character.html#unicode&#34;>surrogate</a>, the surrogate&#10;     * value is returned.&#10;     *&#10;     * @param   index   the index of the {@code char} value to be returned&#10;     *&#10;     * @return  the specified {@code char} value&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          if the {@code index} argument is negative or not less than&#10;     *          {@code length()}&#10;     "
  ]
  node [
    id 10
    label " boolean isEmpty()"
    type "method"
    comment "&#10;     * Returns {@code true} if this character sequence is empty.&#10;     *&#10;     * @implSpec&#10;     * The default implementation returns the result of calling {@code length() == 0}.&#10;     *&#10;     * @return {@code true} if {@link #length()} is {@code 0}, otherwise&#10;     * {@code false}&#10;     *&#10;     * @since 15&#10;     "
  ]
  node [
    id 11
    label " CharSequence subSequence(int start, int end)"
    type "method"
    comment "&#10;     * Returns a {@code CharSequence} that is a subsequence of this sequence.&#10;     * The subsequence starts with the {@code char} value at the specified index and&#10;     * ends with the {@code char} value at index {@code end - 1}.  The length&#10;     * (in {@code char}s) of the&#10;     * returned sequence is {@code end - start}, so if {@code start == end}&#10;     * then an empty sequence is returned.&#10;     *&#10;     * @param   start   the start index, inclusive&#10;     * @param   end     the end index, exclusive&#10;     *&#10;     * @return  the specified subsequence&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          if {@code start} or {@code end} are negative,&#10;     *          if {@code end} is greater than {@code length()},&#10;     *          or if {@code start} is greater than {@code end}&#10;     "
  ]
  node [
    id 12
    label "public String toString()"
    type "method"
    comment "&#10;     * This object (which is already a string!) is itself returned.&#10;     *&#10;     * @return  the string itself.&#10;     "
  ]
  node [
    id 13
    label "public IntStream chars()"
    type "method"
    comment "&#10;     * Returns a stream of {@code int} zero-extending the {@code char} values&#10;     * from this sequence.  Any char which maps to a <a&#10;     * href=&#34;{@docRoot}/java.base/java/lang/Character.html#unicode&#34;>surrogate code&#10;     * point</a> is passed through uninterpreted.&#10;     *&#10;     * @return an IntStream of char values from this sequence&#10;     * @since 9&#10;     "
  ]
  node [
    id 14
    label "public IntStream codePoints()"
    type "method"
    comment "&#10;     * Returns a stream of code point values from this sequence.  Any surrogate&#10;     * pairs encountered in the sequence are combined as if by {@linkplain&#10;     * Character#toCodePoint Character.toCodePoint} and the result is passed&#10;     * to the stream. Any other code units, including ordinary BMP characters,&#10;     * unpaired surrogates, and undefined code units, are zero-extended to&#10;     * {@code int} values which are then passed to the stream.&#10;     *&#10;     * @return an IntStream of Unicode code points from this sequence&#10;     * @since 9&#10;     "
  ]
  node [
    id 15
    label "public static int compare(CharSequence cs1, CharSequence cs2)"
    type "method"
    comment "&#10;     * Compares two {@code CharSequence} instances lexicographically. Returns a&#10;     * negative value, zero, or a positive value if the first sequence is lexicographically&#10;     * less than, equal to, or greater than the second, respectively.&#10;     *&#10;     * <p>&#10;     * The lexicographical ordering of {@code CharSequence} is defined as follows.&#10;     * Consider a {@code CharSequence} <i>cs</i> of length <i>len</i> to be a&#10;     * sequence of char values, <i>cs[0]</i> to <i>cs[len-1]</i>. Suppose <i>k</i>&#10;     * is the lowest index at which the corresponding char values from each sequence&#10;     * differ. The lexicographic ordering of the sequences is determined by a numeric&#10;     * comparison of the char values <i>cs1[k]</i> with <i>cs2[k]</i>. If there is&#10;     * no such index <i>k</i>, the shorter sequence is considered lexicographically&#10;     * less than the other. If the sequences have the same length, the sequences are&#10;     * considered lexicographically equal.&#10;     *&#10;     *&#10;     * @param cs1 the first {@code CharSequence}&#10;     * @param cs2 the second {@code CharSequence}&#10;     *&#10;     * @return  the value {@code 0} if the two {@code CharSequence} are equal;&#10;     *          a negative integer if the first {@code CharSequence}&#10;     *          is lexicographically less than the second; or a&#10;     *          positive integer if the first {@code CharSequence} is&#10;     *          lexicographically greater than the second.&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 16
    label "public int codePointCount(int beginIndex, int endIndex)"
    type "method"
    comment "&#10;     * Returns the number of Unicode code points in the specified text&#10;     * range of this {@code String}. The text range begins at the&#10;     * specified {@code beginIndex} and extends to the&#10;     * {@code char} at index {@code endIndex - 1}. Thus the&#10;     * length (in {@code char}s) of the text range is&#10;     * {@code endIndex-beginIndex}. Unpaired surrogates within&#10;     * the text range count as one code point each.&#10;     *&#10;     * @param beginIndex the index to the first {@code char} of&#10;     * the text range.&#10;     * @param endIndex the index after the last {@code char} of&#10;     * the text range.&#10;     * @return the number of Unicode code points in the specified text&#10;     * range&#10;     * @exception IndexOutOfBoundsException if the&#10;     * {@code beginIndex} is negative, or {@code endIndex}&#10;     * is larger than the length of this {@code String}, or&#10;     * {@code beginIndex} is larger than {@code endIndex}.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 17
    label "public int offsetByCodePoints(int index, int codePointOffset)"
    type "method"
    comment "&#10;     * Returns the index within this {@code String} that is&#10;     * offset from the given {@code index} by&#10;     * {@code codePointOffset} code points. Unpaired surrogates&#10;     * within the text range given by {@code index} and&#10;     * {@code codePointOffset} count as one code point each.&#10;     *&#10;     * @param index the index to be offset&#10;     * @param codePointOffset the offset in code points&#10;     * @return the index within this {@code String}&#10;     * @exception IndexOutOfBoundsException if {@code index}&#10;     *   is negative or larger then the length of this&#10;     *   {@code String}, or if {@code codePointOffset} is positive&#10;     *   and the substring starting with {@code index} has fewer&#10;     *   than {@code codePointOffset} code points,&#10;     *   or if {@code codePointOffset} is negative and the substring&#10;     *   before {@code index} has fewer than the absolute value&#10;     *   of {@code codePointOffset} code points.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 18
    label " void getChars(char[] dst, int dstBegin)"
    type "method"
    comment "&#10;     * Copy characters from this string into dst starting at dstBegin.&#10;     * This method doesn't perform any range checking.&#10;     "
  ]
  node [
    id 19
    label "public void getChars(int srcBegin, int srcEnd, char[] dst, int dstBegin)"
    type "method"
    comment "&#10;     * Copies characters from this string into the destination character&#10;     * array.&#10;     * <p>&#10;     * The first character to be copied is at index {@code srcBegin};&#10;     * the last character to be copied is at index {@code srcEnd-1}&#10;     * (thus the total number of characters to be copied is&#10;     * {@code srcEnd-srcBegin}). The characters are copied into the&#10;     * subarray of {@code dst} starting at index {@code dstBegin}&#10;     * and ending at index:&#10;     * <blockquote><pre>&#10;     *     dstBegin + (srcEnd-srcBegin) - 1&#10;     * </pre></blockquote>&#10;     *&#10;     * @param      srcBegin   index of the first character in the string&#10;     *                        to copy.&#10;     * @param      srcEnd     index after the last character in the string&#10;     *                        to copy.&#10;     * @param      dst        the destination array.&#10;     * @param      dstBegin   the start offset in the destination array.&#10;     * @exception IndexOutOfBoundsException If any of the following&#10;     *            is true:&#10;     *            <ul><li>{@code srcBegin} is negative.&#10;     *            <li>{@code srcBegin} is greater than {@code srcEnd}&#10;     *            <li>{@code srcEnd} is greater than the length of this&#10;     *                string&#10;     *            <li>{@code dstBegin} is negative&#10;     *            <li>{@code dstBegin+(srcEnd-srcBegin)} is larger than&#10;     *                {@code dst.length}</ul>&#10;     "
  ]
  node [
    id 20
    label " native void getCharsNoCheck(int start, int end, char[] buffer, int index)"
    type "method"
    comment "&#10;     * getChars without bounds checks, for use by other classes&#10;     * within the java.lang package only.  The caller is responsible for&#10;     * ensuring that start >= 0 &#38;&#38; start <= end &#38;&#38; end <= count.&#10;     "
  ]
  node [
    id 21
    label "public byte[] getBytes(String charsetName) throws UnsupportedEncodingException"
    type "method"
    comment "&#10;     * Encodes this {@code String} into a sequence of bytes using the named&#10;     * charset, storing the result into a new byte array.&#10;     *&#10;     * <p> The behavior of this method when this string cannot be encoded in&#10;     * the given charset is unspecified.  The {@link&#10;     * java.nio.charset.CharsetEncoder} class should be used when more control&#10;     * over the encoding process is required.&#10;     *&#10;     * @param  charsetName&#10;     *         The name of a supported {@linkplain java.nio.charset.Charset&#10;     *         charset}&#10;     *&#10;     * @return  The resultant byte array&#10;     *&#10;     * @throws  UnsupportedEncodingException&#10;     *          If the named charset is not supported&#10;     *&#10;     * @since  1.1&#10;     "
  ]
  node [
    id 22
    label "java.nio.charset.CharsetEncoder"
    type "class"
    comment ""
  ]
  node [
    id 23
    label "public final Charset charset()"
    type "method"
    comment "&#10;     * Returns the charset that created this encoder.&#10;     *&#10;     * @return  This encoder's charset&#10;     "
  ]
  node [
    id 24
    label "public final byte[] replacement()"
    type "method"
    comment "&#10;     * Returns this encoder's replacement value.&#10;     *&#10;     * @return  This encoder's current replacement,&#10;     *          which is never {@code null} and is never empty&#10;     "
  ]
  node [
    id 25
    label "public final CharsetEncoder replaceWith(byte[] newReplacement)"
    type "method"
    comment "&#10;     * Changes this encoder's replacement value.&#10;     *&#10;     * <p> This method invokes the {@link #implReplaceWith implReplaceWith}&#10;     * method, passing the new replacement, after checking that the new&#10;     * replacement is acceptable.  </p>&#10;     *&#10;     * @param  newReplacement  The new replacement; must not be&#10;     *         {@code null}, must have non-zero length,&#10;&#10;&#10;&#10;&#10;&#10;     *         must not be longer than the value returned by the&#10;     *         {@link #maxBytesPerChar() maxBytesPerChar} method, and&#10;     *         must be {@link #isLegalReplacement legal}&#10;&#10;     *&#10;     * @return  This encoder&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the preconditions on the parameter do not hold&#10;     "
  ]
  node [
    id 26
    label "implReplaceWith"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 27
    label "maxBytesPerChar()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 28
    label "isLegalReplacement"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 29
    label "protected void implReplaceWith(byte[] newReplacement)"
    type "method"
    comment "&#10;     * Reports a change to this encoder's replacement value.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by encoders that require notification of changes to&#10;     * the replacement.  </p>&#10;     *&#10;     * @param  newReplacement    The replacement value&#10;     "
  ]
  node [
    id 30
    label "public boolean isLegalReplacement(byte[] repl)"
    type "method"
    comment "&#10;     * Tells whether or not the given byte array is a legal replacement value&#10;     * for this encoder.&#10;     *&#10;     * <p> A replacement is legal if, and only if, it is a legal sequence of&#10;     * bytes in this encoder's charset; that is, it must be possible to decode&#10;     * the replacement into one or more sixteen-bit Unicode characters.&#10;     *&#10;     * <p> The default implementation of this method is not very efficient; it&#10;     * should generally be overridden to improve performance.  </p>&#10;     *&#10;     * @param  repl  The byte array to be tested&#10;     *&#10;     * @return  {@code true} if, and only if, the given byte array&#10;     *          is a legal replacement value for this encoder&#10;     "
  ]
  node [
    id 31
    label "public CodingErrorAction malformedInputAction()"
    type "method"
    comment "&#10;     * Returns this encoder's current action for malformed-input errors.&#10;     *&#10;     * @return The current malformed-input action, which is never {@code null}&#10;     "
  ]
  node [
    id 32
    label "public final CharsetEncoder onMalformedInput(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Changes this encoder's action for malformed-input errors.&#10;     *&#10;     * <p> This method invokes the {@link #implOnMalformedInput&#10;     * implOnMalformedInput} method, passing the new action.  </p>&#10;     *&#10;     * @param  newAction  The new action; must not be {@code null}&#10;     *&#10;     * @return  This encoder&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the precondition on the parameter does not hold&#10;     "
  ]
  node [
    id 33
    label "implOnMalformedInputimplOnMalformedInput"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 34
    label "protected void implOnMalformedInput(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Reports a change to this encoder's malformed-input action.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by encoders that require notification of changes to&#10;     * the malformed-input action.  </p>&#10;     *&#10;     * @param  newAction  The new action&#10;     "
  ]
  node [
    id 35
    label "public CodingErrorAction unmappableCharacterAction()"
    type "method"
    comment "&#10;     * Returns this encoder's current action for unmappable-character errors.&#10;     *&#10;     * @return The current unmappable-character action, which is never&#10;     *         {@code null}&#10;     "
  ]
  node [
    id 36
    label "public final CharsetEncoder onUnmappableCharacter(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Changes this encoder's action for unmappable-character errors.&#10;     *&#10;     * <p> This method invokes the {@link #implOnUnmappableCharacter&#10;     * implOnUnmappableCharacter} method, passing the new action.  </p>&#10;     *&#10;     * @param  newAction  The new action; must not be {@code null}&#10;     *&#10;     * @return  This encoder&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the precondition on the parameter does not hold&#10;     "
  ]
  node [
    id 37
    label "implOnUnmappableCharacterimplOnUnmappableCharacter"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 38
    label "protected void implOnUnmappableCharacter(CodingErrorAction newAction)"
    type "method"
    comment "&#10;     * Reports a change to this encoder's unmappable-character action.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by encoders that require notification of changes to&#10;     * the unmappable-character action.  </p>&#10;     *&#10;     * @param  newAction  The new action&#10;     "
  ]
  node [
    id 39
    label "public final float averageBytesPerChar()"
    type "method"
    comment "&#10;     * Returns the average number of bytes that will be produced for each&#10;     * character of input.  This heuristic value may be used to estimate the size&#10;     * of the output buffer required for a given input sequence.&#10;     *&#10;     * @return  The average number of bytes produced&#10;     *          per character of input&#10;     "
  ]
  node [
    id 40
    label "public final float maxBytesPerChar()"
    type "method"
    comment "&#10;     * Returns the maximum number of bytes that will be produced for each&#10;     * character of input.  This value may be used to compute the worst-case size&#10;     * of the output buffer required for a given input sequence. This value&#10;     * accounts for any necessary content-independent prefix or suffix&#10;&#10;     * bytes, such as byte-order marks.&#10;&#10;&#10;&#10;&#10;     *&#10;     * @return  The maximum number of bytes that will be produced per&#10;     *          character of input&#10;     "
  ]
  node [
    id 41
    label "public final CoderResult encode(CharBuffer in, ByteBuffer out, boolean endOfInput)"
    type "method"
    comment "&#10;     * Encodes as many characters as possible from the given input buffer,&#10;     * writing the results to the given output buffer.&#10;     *&#10;     * <p> The buffers are read from, and written to, starting at their current&#10;     * positions.  At most {@link Buffer#remaining in.remaining()} characters&#10;     * will be read and at most {@link Buffer#remaining out.remaining()}&#10;     * bytes will be written.  The buffers' positions will be advanced to&#10;     * reflect the characters read and the bytes written, but their marks and&#10;     * limits will not be modified.&#10;     *&#10;     * <p> In addition to reading characters from the input buffer and writing&#10;     * bytes to the output buffer, this method returns a {@link CoderResult}&#10;     * object to describe its reason for termination:&#10;     *&#10;     * <ul>&#10;     *&#10;     *   <li><p> {@link CoderResult#UNDERFLOW} indicates that as much of the&#10;     *   input buffer as possible has been encoded.  If there is no further&#10;     *   input then the invoker can proceed to the next step of the&#10;     *   <a href=&#34;#steps&#34;>encoding operation</a>.  Otherwise this method&#10;     *   should be invoked again with further input.  </p></li>&#10;     *&#10;     *   <li><p> {@link CoderResult#OVERFLOW} indicates that there is&#10;     *   insufficient space in the output buffer to encode any more characters.&#10;     *   This method should be invoked again with an output buffer that has&#10;     *   more {@linkplain Buffer#remaining remaining} bytes. This is&#10;     *   typically done by draining any encoded bytes from the output&#10;     *   buffer.  </p></li>&#10;     *&#10;     *   <li><p> A {@linkplain CoderResult#malformedForLength&#10;     *   malformed-input} result indicates that a malformed-input&#10;     *   error has been detected.  The malformed characters begin at the input&#10;     *   buffer's (possibly incremented) position; the number of malformed&#10;     *   characters may be determined by invoking the result object's {@link&#10;     *   CoderResult#length() length} method.  This case applies only if the&#10;     *   {@linkplain #onMalformedInput malformed action} of this encoder&#10;     *   is {@link CodingErrorAction#REPORT}; otherwise the malformed input&#10;     *   will be ignored or replaced, as requested.  </p></li>&#10;     *&#10;     *   <li><p> An {@linkplain CoderResult#unmappableForLength&#10;     *   unmappable-character} result indicates that an&#10;     *   unmappable-character error has been detected.  The characters that&#10;     *   encode the unmappable character begin at the input buffer's (possibly&#10;     *   incremented) position; the number of such characters may be determined&#10;     *   by invoking the result object's {@link CoderResult#length() length}&#10;     *   method.  This case applies only if the {@linkplain #onUnmappableCharacter&#10;     *   unmappable action} of this encoder is {@link&#10;     *   CodingErrorAction#REPORT}; otherwise the unmappable character will be&#10;     *   ignored or replaced, as requested.  </p></li>&#10;     *&#10;     * </ul>&#10;     *&#10;     * In any case, if this method is to be reinvoked in the same encoding&#10;     * operation then care should be taken to preserve any characters remaining&#10;     * in the input buffer so that they are available to the next invocation.&#10;     *&#10;     * <p> The {@code endOfInput} parameter advises this method as to whether&#10;     * the invoker can provide further input beyond that contained in the given&#10;     * input buffer.  If there is a possibility of providing additional input&#10;     * then the invoker should pass {@code false} for this parameter; if there&#10;     * is no possibility of providing further input then the invoker should&#10;     * pass {@code true}.  It is not erroneous, and in fact it is quite&#10;     * common, to pass {@code false} in one invocation and later discover that&#10;     * no further input was actually available.  It is critical, however, that&#10;     * the final invocation of this method in a sequence of invocations always&#10;     * pass {@code true} so that any remaining unencoded input will be treated&#10;     * as being malformed.&#10;     *&#10;     * <p> This method works by invoking the {@link #encodeLoop encodeLoop}&#10;     * method, interpreting its results, handling error conditions, and&#10;     * reinvoking it as necessary.  </p>&#10;     *&#10;     *&#10;     * @param  in&#10;     *         The input character buffer&#10;     *&#10;     * @param  out&#10;     *         The output byte buffer&#10;     *&#10;     * @param  endOfInput&#10;     *         {@code true} if, and only if, the invoker can provide no&#10;     *         additional input characters beyond those in the given buffer&#10;     *&#10;     * @return  A coder-result object describing the reason for termination&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If an encoding operation is already in progress and the previous&#10;     *          step was an invocation neither of the {@link #reset reset}&#10;     *          method, nor of this method with a value of {@code false} for&#10;     *          the {@code endOfInput} parameter, nor of this method with a&#10;     *          value of {@code true} for the {@code endOfInput} parameter&#10;     *          but a return value indicating an incomplete encoding operation&#10;     *&#10;     * @throws  CoderMalfunctionError&#10;     *          If an invocation of the encodeLoop method threw&#10;     *          an unexpected exception&#10;     *&#10;     * @throws  NullPointerException if input or output buffer is null&#10;     "
  ]
  node [
    id 42
    label "OVERFLOW"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 43
    label "java.nio.charset.CoderResult"
    type "class"
    comment ""
  ]
  node [
    id 44
    label "public boolean isUnderflow()"
    type "method"
    comment "&#10;     * Tells whether or not this object describes an underflow condition.&#10;     *&#10;     * @return  {@code true} if, and only if, this object denotes underflow&#10;     "
  ]
  node [
    id 45
    label "public boolean isOverflow()"
    type "method"
    comment "&#10;     * Tells whether or not this object describes an overflow condition.&#10;     *&#10;     * @return  {@code true} if, and only if, this object denotes overflow&#10;     "
  ]
  node [
    id 46
    label "public boolean isError()"
    type "method"
    comment "&#10;     * Tells whether or not this object describes an error condition.&#10;     *&#10;     * @return  {@code true} if, and only if, this object denotes either a&#10;     *          malformed-input error or an unmappable-character error&#10;     "
  ]
  node [
    id 47
    label "public boolean isMalformed()"
    type "method"
    comment "&#10;     * Tells whether or not this object describes a malformed-input error.&#10;     *&#10;     * @return  {@code true} if, and only if, this object denotes a&#10;     *          malformed-input error&#10;     "
  ]
  node [
    id 48
    label "public boolean isUnmappable()"
    type "method"
    comment "&#10;     * Tells whether or not this object describes an unmappable-character&#10;     * error.&#10;     *&#10;     * @return  {@code true} if, and only if, this object denotes an&#10;     *          unmappable-character error&#10;     "
  ]
  node [
    id 49
    label "isError()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 50
    label "public static CoderResult malformedForLength(int length)"
    type "method"
    comment "&#10;     * Static factory method that returns the unique object describing a&#10;     * malformed-input error of the given length.&#10;     *&#10;     * @param   length&#10;     *          The given length&#10;     *&#10;     * @return  The requested coder-result object&#10;     "
  ]
  node [
    id 51
    label "public static CoderResult unmappableForLength(int length)"
    type "method"
    comment "&#10;     * Static factory method that returns the unique result object describing&#10;     * an unmappable-character error of the given length.&#10;     *&#10;     * @param   length&#10;     *          The given length&#10;     *&#10;     * @return  The requested coder-result object&#10;     "
  ]
  node [
    id 52
    label "public void throwException() throws CharacterCodingException"
    type "method"
    comment "&#10;     * Throws an exception appropriate to the result described by this object.&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If this object is {@link #UNDERFLOW}&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If this object is {@link #OVERFLOW}&#10;     *&#10;     * @throws  MalformedInputException&#10;     *          If this object represents a malformed-input error; the&#10;     *          exception's length value will be that of this object&#10;     *&#10;     * @throws  UnmappableCharacterException&#10;     *          If this object represents an unmappable-character error; the&#10;     *          exceptions length value will be that of this object&#10;     "
  ]
  node [
    id 53
    label "UNDERFLOW"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 54
    label "reset"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 55
    label "REPORT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 56
    label "java.nio.charset.CodingErrorAction"
    type "class"
    comment ""
  ]
  node [
    id 57
    label "encodeLoop"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 58
    label "remaining"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 59
    label "java.nio.Buffer"
    type "class"
    comment ""
  ]
  node [
    id 60
    label " static IllegalArgumentException createSameBufferException()"
    type "method"
    comment "&#10;     * Returns an {@code IllegalArgumentException} indicating that the source&#10;     * and target are the same {@code Buffer}.  Intended for use in&#10;     * {@code put(src)} when the parameter is the {@code Buffer} on which the&#10;     * method is being invoked.&#10;     *&#10;     * @return  IllegalArgumentException&#10;     *          With a message indicating equal source and target buffers&#10;     "
  ]
  node [
    id 61
    label " static IllegalArgumentException createCapacityException(int capacity)"
    type "method"
    comment "&#10;     * Verify that the capacity is nonnegative.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in $type$s&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 62
    label "public final int capacity()"
    type "method"
    comment "&#10;     * Returns this buffer's capacity.&#10;     *&#10;     * @return  The capacity of this buffer&#10;     "
  ]
  node [
    id 63
    label "public final int position()"
    type "method"
    comment "&#10;     * Returns this buffer's position.&#10;     *&#10;     * @return  The position of this buffer&#10;     "
  ]
  node [
    id 64
    label "public Buffer position(int newPosition)"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 65
    label "private IllegalArgumentException createPositionException(int newPosition)"
    type "method"
    comment "&#10;     * Verify that {@code 0 < newPosition <= limit}&#10;     *&#10;     * @param newPosition&#10;     *        The new position value&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the specified position is out of bounds.&#10;     "
  ]
  node [
    id 66
    label "public final int limit()"
    type "method"
    comment "&#10;     * Returns this buffer's limit.&#10;     *&#10;     * @return  The limit of this buffer&#10;     "
  ]
  node [
    id 67
    label "public Buffer limit(int newLimit)"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 68
    label "private IllegalArgumentException createLimitException(int newLimit)"
    type "method"
    comment "&#10;     * Verify that {@code 0 < newLimit <= capacity}&#10;     *&#10;     * @param newLimit&#10;     *        The new limit value&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the specified limit is out of bounds.&#10;     "
  ]
  node [
    id 69
    label "public Buffer mark()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 70
    label "public Buffer reset()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 71
    label "public Buffer clear()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 72
    label "public Buffer flip()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 73
    label "compact"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 74
    label "java.nio.ByteBuffer"
    type "class"
    comment ""
  ]
  node [
    id 75
    label "public static ByteBuffer allocateDirect(int capacity)"
    type "method"
    comment "&#10;     * Allocates a new direct byte buffer.&#10;     *&#10;     * <p> The new buffer's position will be zero, its limit will be its&#10;     * capacity, its mark will be undefined, each of its elements will be&#10;     * initialized to zero, and its byte order will be&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.  Whether or not it has a&#10;     * {@link #hasArray backing array} is unspecified.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in bytes&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 76
    label "BIG_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 77
    label "java.nio.ByteOrder"
    type "class"
    comment ""
  ]
  node [
    id 78
    label "public static ByteOrder nativeOrder()"
    type "method"
    comment "&#10;     * Retrieves the native byte order of the underlying platform.&#10;     *&#10;     * <p> This method is defined so that performance-sensitive Java code can&#10;     * allocate direct buffers with the same byte order as the hardware.&#10;     * Native code libraries are often more efficient when such buffers are&#10;     * used.  </p>&#10;     *&#10;     * @return  The native byte order of the hardware upon which this Java&#10;     *          virtual machine is running&#10;     "
  ]
  node [
    id 79
    label "LITTLE_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 80
    label "hasArray"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 81
    label "public static ByteBuffer allocate(int capacity)"
    type "method"
    comment "&#10;     * Allocates a new byte buffer.&#10;     *&#10;     * <p> The new buffer's position will be zero, its limit will be its&#10;     * capacity, its mark will be undefined, each of its elements will be&#10;     * initialized to zero, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * It will have a {@link #array backing array}, and its&#10;     * {@link #arrayOffset array offset} will be zero.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in bytes&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 82
    label "array"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 83
    label "arrayOffset"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 84
    label "public static ByteBuffer wrap(byte[] array, int offset, int length)"
    type "method"
    comment "&#10;     * Wraps a byte array into a buffer.&#10;     *&#10;     * <p> The new buffer will be backed by the given byte array;&#10;     * that is, modifications to the buffer will cause the array to be modified&#10;     * and vice versa.  The new buffer's capacity will be&#10;     * {@code array.length}, its position will be {@code offset}, its limit&#10;     * will be {@code offset + length}, its mark will be undefined, and its&#10;     * byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * Its {@link #array backing array} will be the given array, and&#10;     * its {@link #arrayOffset array offset} will be zero.  </p>&#10;     *&#10;     * @param  array&#10;     *         The array that will back the new buffer&#10;     *&#10;     * @param  offset&#10;     *         The offset of the subarray to be used; must be non-negative and&#10;     *         no larger than {@code array.length}.  The new buffer's position&#10;     *         will be set to this value.&#10;     *&#10;     * @param  length&#10;     *         The length of the subarray to be used;&#10;     *         must be non-negative and no larger than&#10;     *         {@code array.length - offset}.&#10;     *         The new buffer's limit will be set to {@code offset + length}.&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     "
  ]
  node [
    id 85
    label "public static ByteBuffer wrap(byte[] array)"
    type "method"
    comment "&#10;     * Wraps a byte array into a buffer.&#10;     *&#10;     * <p> The new buffer will be backed by the given byte array;&#10;     * that is, modifications to the buffer will cause the array to be modified&#10;     * and vice versa.  The new buffer's capacity and limit will be&#10;     * {@code array.length}, its position will be zero, its mark will be&#10;     * undefined, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * Its {@link #array backing array} will be the given array, and its&#10;     * {@link #arrayOffset array offset} will be zero.  </p>&#10;     *&#10;     * @param  array&#10;     *         The array that will back this buffer&#10;     *&#10;     * @return  The new byte buffer&#10;     "
  ]
  node [
    id 86
    label "public abstract ByteBuffer slice()"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer, its mark will be&#10;     * undefined, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new byte buffer&#10;&#10;     *&#10;     * @see #alignedSlice(int)&#10;&#10;     "
  ]
  node [
    id 87
    label "public abstract ByteBuffer slice(int index, int length)"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at position {@code index}&#10;     * in this buffer, and will contain {@code length} elements. Changes to&#10;     * this buffer's content will be visible in the new buffer, and vice versa;&#10;     * the two buffers' position, limit, and mark values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be {@code length}, its mark will be undefined, and its byte order&#10;     * will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct,&#10;     * and it will be read-only if, and only if, this buffer is read-only. </p>&#10;     *&#10;     * @param   index&#10;     *          The position in this buffer at which the content of the new&#10;     *          buffer will start; must be non-negative and no larger than&#10;     *          {@link #limit() limit()}&#10;     *&#10;     * @param   length&#10;     *          The number of elements the new buffer will contain; must be&#10;     *          non-negative and no larger than {@code limit() - index}&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative or greater than {@code limit()},&#10;     *          {@code length} is negative, or {@code length > limit() - index}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 88
    label "limit()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 89
    label "public abstract ByteBuffer duplicate()"
    type "method"
    comment "&#10;     * Creates a new byte buffer that shares this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer, and vice&#10;     * versa; the two buffers' position, limit, and mark values will be&#10;     * independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position,&#10;&#10;     * and mark values will be identical to those of this buffer, and its byte&#10;     * order will be {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new byte buffer&#10;     "
  ]
  node [
    id 90
    label "public abstract ByteBuffer asReadOnlyBuffer()"
    type "method"
    comment "&#10;     * Creates a new, read-only byte buffer that shares this buffer's&#10;     * content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer; the new&#10;     * buffer itself, however, will be read-only and will not allow the shared&#10;     * content to be modified.  The two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position,&#10;&#10;     * and mark values will be identical to those of this buffer, and its byte&#10;     * order will be {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     *&#10;     * <p> If this buffer is itself read-only then this method behaves in&#10;     * exactly the same way as the {@link #duplicate duplicate} method.  </p>&#10;     *&#10;     * @return  The new, read-only byte buffer&#10;     "
  ]
  node [
    id 91
    label "duplicate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 92
    label "public abstract byte get()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method.  Reads the byte at this buffer's&#10;     * current position, and then increments the position.&#10;     *&#10;     * @return  The byte at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If the buffer's current position is not smaller than its limit&#10;     "
  ]
  node [
    id 93
    label "public abstract ByteBuffer put(byte b)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes the given byte into this buffer at the current&#10;     * position, and then increments the position. </p>&#10;     *&#10;     * @param  b&#10;     *         The byte to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If this buffer's current position is not smaller than its limit&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 94
    label "public abstract byte get(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method.  Reads the byte at the given&#10;     * index.&#10;     *&#10;     * @param  index&#10;     *         The index from which the byte will be read&#10;     *&#10;     * @return  The byte at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit&#10;     "
  ]
  node [
    id 95
    label "public abstract ByteBuffer put(int index, byte b)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes the given byte into this buffer at the given&#10;     * index. </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the byte will be written&#10;     *&#10;     * @param  b&#10;     *         The byte value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 96
    label "public ByteBuffer get(byte[] dst, int offset, int length)"
    type "method"
    comment "&#10;     * Relative bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  If there are fewer bytes remaining in the&#10;     * buffer than are required to satisfy the request, that is, if&#10;     * {@code length}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()}, then no&#10;     * bytes are transferred and a {@link BufferUnderflowException} is&#10;     * thrown.&#10;     *&#10;     * <p> Otherwise, this method copies {@code length} bytes from this&#10;     * buffer into the given array, starting at the current position of this&#10;     * buffer and at the given offset in the array.  The position of this&#10;     * buffer is then incremented by {@code length}.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>src.get(dst,&#38;nbsp;off,&#38;nbsp;len)</code> has exactly the same effect as&#10;     * the loop&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = off; i < off + len; i++)&#10;     *         dst[i] = src.get();&#10;     * }</pre>&#10;     *&#10;     * except that it first checks that there are sufficient bytes in&#10;     * this buffer and it is potentially much more efficient.&#10;     *&#10;     * @param  dst&#10;     *         The array into which bytes are to be written&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be&#10;     *         written; must be non-negative and no larger than&#10;     *         {@code dst.length}&#10;     *&#10;     * @param  length&#10;     *         The maximum number of bytes to be written to the given&#10;     *         array; must be non-negative and no larger than&#10;     *         {@code dst.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than {@code length} bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     "
  ]
  node [
    id 97
    label "java.nio.BufferUnderflowException"
    type "class"
    comment ""
  ]
  node [
    id 98
    label "public ByteBuffer get(byte[] dst)"
    type "method"
    comment "&#10;     * Relative bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  An invocation of this method of the form&#10;     * {@code src.get(a)} behaves in exactly the same way as the invocation&#10;     *&#10;     * <pre>&#10;     *     src.get(a, 0, a.length) </pre>&#10;     *&#10;     * @param   dst&#10;     *          The destination array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than {@code length} bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 99
    label "public ByteBuffer get(int index, byte[] dst, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers {@code length} bytes from this&#10;     * buffer into the given array, starting at the given index in this&#10;     * buffer and at the given offset in the array.  The position of this&#10;     * buffer is unchanged.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <code>src.get(index,&#38;nbsp;dst,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the following loop except that it first&#10;     * checks the consistency of the supplied parameters and it is potentially&#10;     * much more efficient:&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *         dst[i] = src.get(j);&#10;     * }</pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer from which the first byte will be&#10;     *         read; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  dst&#10;     *         The destination array&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be&#10;     *         written; must be non-negative and less than&#10;     *         {@code dst.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be written to the given array;&#10;     *         must be non-negative and no larger than the smaller of&#10;     *         {@code limit() - index} and {@code dst.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code index}, {@code offset}, and&#10;     *          {@code length} parameters do not hold&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 100
    label "public ByteBuffer get(int index, byte[] dst)"
    type "method"
    comment "&#10;     * Absolute bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  The position of this buffer is unchanged.  An&#10;     * invocation of this method of the form&#10;     * <code>src.get(index,&#38;nbsp;dst)</code> behaves in exactly the same&#10;     * way as the invocation:&#10;     *&#10;     * <pre>&#10;     *     src.get(index, dst, 0, dst.length) </pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer from which the first byte will be&#10;     *         read; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  dst&#10;     *         The destination array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative, not smaller than {@code limit()},&#10;     *          or {@code limit() - index < dst.length}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 101
    label "public ByteBuffer put(ByteBuffer src)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers the bytes remaining in the given source&#10;     * buffer into this buffer.  If there are more bytes remaining in the&#10;     * source buffer than in this buffer, that is, if&#10;     * {@code src.remaining()}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()},&#10;     * then no bytes are transferred and a {@link&#10;     * BufferOverflowException} is thrown.&#10;     *&#10;     * <p> Otherwise, this method copies&#10;     * <i>n</i>&#38;nbsp;=&#38;nbsp;{@code src.remaining()} bytes from the given&#10;     * buffer into this buffer, starting at each buffer's current position.&#10;     * The positions of both buffers are then incremented by <i>n</i>.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * {@code dst.put(src)} has exactly the same effect as the loop&#10;     *&#10;     * <pre>&#10;     *     while (src.hasRemaining())&#10;     *         dst.put(src.get()); </pre>&#10;     *&#10;     * except that it first checks that there is sufficient space in this&#10;     * buffer and it is potentially much more efficient.  If this buffer and&#10;     * the source buffer share the same backing array or memory, then the&#10;     * result will be as if the source elements were first copied to an&#10;     * intermediate location before being written into this buffer.&#10;     *&#10;     * @param  src&#10;     *         The source buffer from which bytes are to be read;&#10;     *         must not be this buffer&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *          for the remaining bytes in the source buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the source buffer is this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 102
    label "java.nio.BufferOverflowException"
    type "class"
    comment ""
  ]
  node [
    id 103
    label "public ByteBuffer put(int index, ByteBuffer src, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers {@code length} bytes into this buffer from&#10;     * the given source buffer, starting at the given {@code offset} in the&#10;     * source buffer and the given {@code index} in this buffer. The positions&#10;     * of both buffers are unchanged.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>dst.put(index,&#38;nbsp;src,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the loop&#10;     *&#10;     * <pre>{@code&#10;     * for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *     dst.put(j, src.get(i));&#10;     * }</pre>&#10;     *&#10;     * except that it first checks the consistency of the supplied parameters&#10;     * and it is potentially much more efficient.  If this buffer and&#10;     * the source buffer share the same backing array or memory, then the&#10;     * result will be as if the source elements were first copied to an&#10;     * intermediate location before being written into this buffer.&#10;     *&#10;     * @param index&#10;     *        The index in this buffer at which the first byte will be&#10;     *        written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param src&#10;     *        The buffer from which bytes are to be read&#10;     *&#10;     * @param offset&#10;     *        The index within the source buffer of the first byte to be&#10;     *        read; must be non-negative and less than {@code src.limit()}&#10;     *&#10;     * @param length&#10;     *        The number of bytes to be read from the given buffer;&#10;     *        must be non-negative and no larger than the smaller of&#10;     *        {@code limit() - index} and {@code src.limit() - offset}&#10;     *&#10;     * @return This buffer&#10;     *&#10;     * @throws IndexOutOfBoundsException&#10;     *         If the preconditions on the {@code index}, {@code offset}, and&#10;     *         {@code length} parameters do not hold&#10;     *&#10;     * @throws ReadOnlyBufferException&#10;     *         If this buffer is read-only&#10;     *&#10;     * @since 16&#10;     "
  ]
  node [
    id 104
    label "public ByteBuffer put(byte[] src, int offset, int length)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers bytes into this buffer from the given&#10;     * source array.  If there are more bytes to be copied from the array&#10;     * than remain in this buffer, that is, if&#10;     * {@code length}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()}, then no&#10;     * bytes are transferred and a {@link BufferOverflowException} is&#10;     * thrown.&#10;     *&#10;     * <p> Otherwise, this method copies {@code length} bytes from the&#10;     * given array into this buffer, starting at the given offset in the array&#10;     * and at the current position of this buffer.  The position of this buffer&#10;     * is then incremented by {@code length}.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>dst.put(src,&#38;nbsp;off,&#38;nbsp;len)</code> has exactly the same effect as&#10;     * the loop&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = off; i < off + len; i++)&#10;     *         dst.put(src[i]);&#10;     * }</pre>&#10;     *&#10;     * except that it first checks that there is sufficient space in this&#10;     * buffer and it is potentially much more efficient.&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be read;&#10;     *         must be non-negative and no larger than {@code src.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be read from the given array;&#10;     *         must be non-negative and no larger than&#10;     *         {@code src.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 105
    label "public final ByteBuffer put(byte[] src)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers the entire content of the given source&#10;     * byte array into this buffer.  An invocation of this method of the&#10;     * form {@code dst.put(a)} behaves in exactly the same way as the&#10;     * invocation&#10;     *&#10;     * <pre>&#10;     *     dst.put(a, 0, a.length) </pre>&#10;     *&#10;     * @param   src&#10;     *          The source array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 106
    label "public ByteBuffer put(int index, byte[] src, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers {@code length} bytes from the given&#10;     * array, starting at the given offset in the array and at the given index&#10;     * in this buffer.  The position of this buffer is unchanged.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <code>dst.put(index,&#38;nbsp;src,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the following loop except that it first&#10;     * checks the consistency of the supplied parameters and it is potentially&#10;     * much more efficient:&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *         dst.put(j, src[i]);&#10;     * }</pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer at which the first byte will be&#10;     *         written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be read;&#10;     *         must be non-negative and less than {@code src.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be read from the given array;&#10;     *         must be non-negative and no larger than the smaller of&#10;     *         {@code limit() - index} and {@code src.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code index}, {@code offset}, and&#10;     *          {@code length} parameters do not hold&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 107
    label "public ByteBuffer put(int index, byte[] src)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method copies bytes into this buffer from the given source&#10;     * array.  The position of this buffer is unchanged.  An invocation of this&#10;     * method of the form <code>dst.put(index,&#38;nbsp;src)</code>&#10;     * behaves in exactly the same way as the invocation:&#10;     *&#10;     * <pre>&#10;     *     dst.put(index, src, 0, src.length); </pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer at which the first byte will be&#10;     *         written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative, not smaller than {@code limit()},&#10;     *          or {@code limit() - index < src.length}&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 108
    label "public final boolean hasArray()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is backed by an accessible byte&#10;     * array.&#10;     *&#10;     * <p> If this method returns {@code true} then the {@link #array() array}&#10;     * and {@link #arrayOffset() arrayOffset} methods may safely be invoked.&#10;     * </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer&#10;     *          is backed by an array and is not read-only&#10;     "
  ]
  node [
    id 109
    label "array()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 110
    label "arrayOffset()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 111
    label "public final byte[] array()"
    type "method"
    comment "&#10;     * Returns the byte array that backs this&#10;     * buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Modifications to this buffer's content will cause the returned&#10;     * array's content to be modified, and vice versa.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The array that backs this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     "
  ]
  node [
    id 112
    label "public final int arrayOffset()"
    type "method"
    comment "&#10;     * Returns the offset within this buffer's backing array of the first&#10;     * element of the buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> If this buffer is backed by an array then buffer position <i>p</i>&#10;     * corresponds to array index <i>p</i>&#38;nbsp;+&#38;nbsp;{@code arrayOffset()}.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The offset within this buffer's array&#10;     *          of the first element of the buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     "
  ]
  node [
    id 113
    label "public Buffer rewind()"
    type "method"
    comment "&#10;     * Rewinds this buffer.  The position is set to zero and the mark is&#10;     * discarded.&#10;     *&#10;     * <p> Invoke this method before a sequence of channel-write or <i>get</i>&#10;     * operations, assuming that the limit has already been set&#10;     * appropriately.  For example:&#10;     *&#10;     * <blockquote><pre>&#10;     * out.write(buf);    // Write remaining data&#10;     * buf.rewind();      // Rewind buffer&#10;     * buf.get(array);    // Copy data into array</pre></blockquote>&#10;     *&#10;     * @return  This buffer&#10;     "
  ]
  node [
    id 114
    label "public abstract ByteBuffer compact()"
    type "method"
    comment "&#10;     * Compacts this buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> The bytes between the buffer's current position and its limit,&#10;     * if any, are copied to the beginning of the buffer.  That is, the&#10;     * byte at index <i>p</i>&#38;nbsp;=&#38;nbsp;{@code position()} is copied&#10;     * to index zero, the byte at index <i>p</i>&#38;nbsp;+&#38;nbsp;1 is copied&#10;     * to index one, and so forth until the byte at index&#10;     * {@code limit()}&#38;nbsp;-&#38;nbsp;1 is copied to index&#10;     * <i>n</i>&#38;nbsp;=&#38;nbsp;{@code limit()}&#38;nbsp;-&#38;nbsp;{@code 1}&#38;nbsp;-&#38;nbsp;<i>p</i>.&#10;     * The buffer's position is then set to <i>n+1</i> and its limit is set to&#10;     * its capacity.  The mark, if defined, is discarded.&#10;     *&#10;     * <p> The buffer's position is set to the number of bytes copied,&#10;     * rather than to zero, so that an invocation of this method can be&#10;     * followed immediately by an invocation of another relative <i>put</i>&#10;     * method. </p>&#10;     *&#10;&#10;     *&#10;     * <p> Invoke this method after writing data from a buffer in case the&#10;     * write was incomplete.  The following loop, for example, copies bytes&#10;     * from one channel to another via the buffer {@code buf}:&#10;     *&#10;     * <blockquote><pre>{@code&#10;     *   buf.clear();          // Prepare buffer for use&#10;     *   while (in.read(buf) >= 0 || buf.position != 0) {&#10;     *       buf.flip();&#10;     *       out.write(buf);&#10;     *       buf.compact();    // In case of partial write&#10;     *   }&#10;     * }</pre></blockquote>&#10;     *&#10;&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 115
    label "public abstract boolean isDirect()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is&#10;     * <a href=&#34;ByteBuffer.html#direct&#34;><i>direct</i></a>.&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is direct&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 116
    label "public int hashCode()"
    type "method"
    comment "&#10;     * Returns a hash code for this {@code Character}; equal to the result&#10;     * of invoking {@code charValue()}.&#10;     *&#10;     * @return a hash code value for this {@code Character}&#10;     "
  ]
  node [
    id 117
    label "public boolean equals(Object ob)"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is equal to another object.&#10;     *&#10;     * <p> Two byte buffers are equal if, and only if,&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> They have the same element type,  </p></li>&#10;     *&#10;     *   <li><p> They have the same number of remaining elements, and&#10;     *   </p></li>&#10;     *&#10;     *   <li><p> The two sequences of remaining elements, considered&#10;     *   independently of their starting positions, are pointwise equal.&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;     *   </p></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * <p> A byte buffer is not equal to any other type of object.  </p>&#10;     *&#10;     * @param  ob  The object to which this buffer is to be compared&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is equal to the&#10;     *           given object&#10;     "
  ]
  node [
    id 118
    label "public int compareTo(ByteBuffer that)"
    type "method"
    comment "&#10;     * Compares this buffer to another.&#10;     *&#10;     * <p> Two byte buffers are compared by comparing their sequences of&#10;     * remaining elements lexicographically, without regard to the starting&#10;     * position of each sequence within its corresponding buffer.&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;     * Pairs of {@code byte} elements are compared as if by invoking&#10;     * {@link Byte#compare(byte,byte)}.&#10;&#10;     *&#10;     * <p> A byte buffer is not comparable to any other type of object.&#10;     *&#10;     * @return  A negative integer, zero, or a positive integer as this buffer&#10;     *          is less than, equal to, or greater than the given buffer&#10;     "
  ]
  node [
    id 119
    label "compare(byte"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 120
    label "public int mismatch(ByteBuffer that)"
    type "method"
    comment "&#10;     * Finds and returns the relative index of the first mismatch between this&#10;     * buffer and a given buffer.  The index is relative to the&#10;     * {@link #position() position} of each buffer and will be in the range of&#10;     * 0 (inclusive) up to the smaller of the {@link #remaining() remaining}&#10;     * elements in each buffer (exclusive).&#10;     *&#10;     * <p> If the two buffers share a common prefix then the returned index is&#10;     * the length of the common prefix and it follows that there is a mismatch&#10;     * between the two buffers at that index within the respective buffers.&#10;     * If one buffer is a proper prefix of the other then the returned index is&#10;     * the smaller of the remaining elements in each buffer, and it follows that&#10;     * the index is only valid for the buffer with the larger number of&#10;     * remaining elements.&#10;     * Otherwise, there is no mismatch.&#10;     *&#10;     * @param  that&#10;     *         The byte buffer to be tested for a mismatch with this buffer&#10;     *&#10;     * @return  The relative index of the first mismatch between this and the&#10;     *          given buffer, otherwise -1 if no mismatch.&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 121
    label "position()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 122
    label "remaining()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 123
    label "public final ByteOrder order()"
    type "method"
    comment "&#10;     * Retrieves this buffer's byte order.&#10;     *&#10;     * <p> The byte order is used when reading or writing multibyte values, and&#10;     * when creating buffers that are views of this byte buffer.  The order of&#10;     * a newly-created byte buffer is always {@link ByteOrder#BIG_ENDIAN&#10;     * BIG_ENDIAN}.  </p>&#10;     *&#10;     * @return  This buffer's byte order&#10;     "
  ]
  node [
    id 124
    label "public final ByteBuffer order(ByteOrder bo)"
    type "method"
    comment "&#10;     * Modifies this buffer's byte order.&#10;     *&#10;     * @param  bo&#10;     *         The new byte order,&#10;     *         either {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}&#10;     *         or {@link ByteOrder#LITTLE_ENDIAN LITTLE_ENDIAN}&#10;     *&#10;     * @return  This buffer&#10;     "
  ]
  node [
    id 125
    label "public final int alignmentOffset(int index, int unitSize)"
    type "method"
    comment "&#10;     * Returns the memory address, pointing to the byte at the given index,&#10;     * modulo the given unit size.&#10;     *&#10;     * <p> The return value is non-negative in the range of {@code 0}&#10;     * (inclusive) up to {@code unitSize} (exclusive), with zero indicating&#10;     * that the address of the byte at the index is aligned for the unit size,&#10;     * and a positive value that the address is misaligned for the unit size.&#10;     * If the address of the byte at the index is misaligned, the return value&#10;     * represents how much the index should be adjusted to locate a byte at an&#10;     * aligned address.  Specifically, the index should either be decremented by&#10;     * the return value if the latter is not greater than {@code index}, or be&#10;     * incremented by the unit size minus the return value.  Therefore given&#10;     * <blockquote><pre>&#10;     * int value = alignmentOffset(index, unitSize)</pre></blockquote>&#10;     * then the identities&#10;     * <blockquote><pre>&#10;     * alignmentOffset(index - value, unitSize) == 0, value &#38;le; index</pre></blockquote>&#10;     * and&#10;     * <blockquote><pre>&#10;     * alignmentOffset(index + (unitSize - value), unitSize) == 0</pre></blockquote>&#10;     * must hold.&#10;     *&#10;     * @apiNote&#10;     * This method may be utilized to determine if unit size bytes from an&#10;     * index can be accessed atomically, if supported by the native platform.&#10;     *&#10;     * @implNote&#10;     * This implementation throws {@code UnsupportedOperationException} for&#10;     * non-direct buffers when the given unit size is greater than {@code 8}.&#10;     *&#10;     * @param  index&#10;     *         The index to query for alignment offset, must be non-negative, no&#10;     *         upper bounds check is performed&#10;     *&#10;     * @param  unitSize&#10;     *         The unit size in bytes, must be a power of {@code 2}&#10;     *&#10;     * @return  The indexed byte's memory address modulo the unit size&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the index is negative or the unit size is not a power of&#10;     *         {@code 2}&#10;     *&#10;     * @throws UnsupportedOperationException&#10;     *         If the native platform does not guarantee stable alignment offset&#10;     *         values for the given unit size when managing the memory regions&#10;     *         of buffers of the same kind as this buffer (direct or&#10;     *         non-direct).  For example, if garbage collection would result&#10;     *         in the moving of a memory region covered by a non-direct buffer&#10;     *         from one location to another and both locations have different&#10;     *         alignment characteristics.&#10;     *&#10;     * @see #alignedSlice(int)&#10;     * @since 9&#10;     "
  ]
  node [
    id 126
    label "public final ByteBuffer alignedSlice(int unitSize)"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared and aligned&#10;     * subsequence of this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position rounded up to the index of the nearest aligned byte for the&#10;     * given unit size, and end at this buffer's limit rounded down to the index&#10;     * of the nearest aligned byte for the given unit size.&#10;     * If rounding results in out-of-bound values then the new buffer's capacity&#10;     * and limit will be zero.  If rounding is within bounds the following&#10;     * expressions will be true for a new buffer {@code nb} and unit size&#10;     * {@code unitSize}:&#10;     * <pre>{@code&#10;     * nb.alignmentOffset(0, unitSize) == 0&#10;     * nb.alignmentOffset(nb.limit(), unitSize) == 0&#10;     * }</pre>&#10;     *&#10;     * <p> Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer or fewer subject to&#10;     * alignment, its mark will be undefined, and its byte order will be&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;     *&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @apiNote&#10;     * This method may be utilized to create a new buffer where unit size bytes&#10;     * from index, that is a multiple of the unit size, may be accessed&#10;     * atomically, if supported by the native platform.&#10;     *&#10;     * @implNote&#10;     * This implementation throws {@code UnsupportedOperationException} for&#10;     * non-direct buffers when the given unit size is greater than {@code 8}.&#10;     *&#10;     * @param  unitSize&#10;     *         The unit size in bytes, must be a power of {@code 2}&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the unit size not a power of {@code 2}&#10;     *&#10;     * @throws UnsupportedOperationException&#10;     *         If the native platform does not guarantee stable aligned slices&#10;     *         for the given unit size when managing the memory regions&#10;     *         of buffers of the same kind as this buffer (direct or&#10;     *         non-direct).  For example, if garbage collection would result&#10;     *         in the moving of a memory region covered by a non-direct buffer&#10;     *         from one location to another and both locations have different&#10;     *         alignment characteristics.&#10;     *&#10;     * @see #alignmentOffset(int, int)&#10;     * @see #slice()&#10;     * @since 9&#10;     "
  ]
  node [
    id 127
    label " abstract byte _get(int i)"
    type "method"
    comment " package-private"
  ]
  node [
    id 128
    label " abstract void _put(int i, byte b)"
    type "method"
    comment " package-private"
  ]
  node [
    id 129
    label "public abstract char getChar()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a char value.&#10;     *&#10;     * <p> Reads the next two bytes at this buffer's current position,&#10;     * composing them into a char value according to the current byte order,&#10;     * and then increments the position by two.  </p>&#10;     *&#10;     * @return  The char value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 130
    label "public abstract ByteBuffer putChar(char value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a char&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given char value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by two.  </p>&#10;     *&#10;     * @param  value&#10;     *         The char value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 131
    label "public abstract char getChar(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a char value.&#10;     *&#10;     * <p> Reads two bytes at the given index, composing them into a&#10;     * char value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The char value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     "
  ]
  node [
    id 132
    label " abstract char getCharUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 133
    label "public abstract ByteBuffer putChar(int index, char value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a char&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given char value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The char value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 134
    label " abstract void putCharUnchecked(int index, char value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 135
    label "public abstract CharBuffer asCharBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a char buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * two, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new char buffer&#10;     "
  ]
  node [
    id 136
    label "public abstract short getShort()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a short value.&#10;     *&#10;     * <p> Reads the next two bytes at this buffer's current position,&#10;     * composing them into a short value according to the current byte order,&#10;     * and then increments the position by two.  </p>&#10;     *&#10;     * @return  The short value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 137
    label "public abstract ByteBuffer putShort(short value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a short&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given short value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by two.  </p>&#10;     *&#10;     * @param  value&#10;     *         The short value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 138
    label "public abstract short getShort(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a short value.&#10;     *&#10;     * <p> Reads two bytes at the given index, composing them into a&#10;     * short value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The short value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     "
  ]
  node [
    id 139
    label " abstract short getShortUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 140
    label "public abstract ByteBuffer putShort(int index, short value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a short&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given short value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The short value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 141
    label " abstract void putShortUnchecked(int index, short value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 142
    label "public abstract ShortBuffer asShortBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a short buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * two, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new short buffer&#10;     "
  ]
  node [
    id 143
    label "public abstract int getInt()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading an int value.&#10;     *&#10;     * <p> Reads the next four bytes at this buffer's current position,&#10;     * composing them into an int value according to the current byte order,&#10;     * and then increments the position by four.  </p>&#10;     *&#10;     * @return  The int value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 144
    label "public abstract ByteBuffer putInt(int value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing an int&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given int value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by four.  </p>&#10;     *&#10;     * @param  value&#10;     *         The int value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 145
    label "public abstract int getInt(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading an int value.&#10;     *&#10;     * <p> Reads four bytes at the given index, composing them into a&#10;     * int value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The int value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     "
  ]
  node [
    id 146
    label " abstract int getIntUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 147
    label "public abstract ByteBuffer putInt(int index, int value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing an int&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given int value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The int value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 148
    label " abstract void putIntUnchecked(int index, int value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 149
    label "public abstract IntBuffer asIntBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as an int buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * four, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new int buffer&#10;     "
  ]
  node [
    id 150
    label "public abstract long getLong()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a long value.&#10;     *&#10;     * <p> Reads the next eight bytes at this buffer's current position,&#10;     * composing them into a long value according to the current byte order,&#10;     * and then increments the position by eight.  </p>&#10;     *&#10;     * @return  The long value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 151
    label "public abstract ByteBuffer putLong(long value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a long&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given long value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by eight.  </p>&#10;     *&#10;     * @param  value&#10;     *         The long value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 152
    label "public abstract long getLong(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a long value.&#10;     *&#10;     * <p> Reads eight bytes at the given index, composing them into a&#10;     * long value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The long value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     "
  ]
  node [
    id 153
    label " abstract long getLongUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 154
    label "public abstract ByteBuffer putLong(int index, long value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a long&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given long value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The long value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 155
    label " abstract void putLongUnchecked(int index, long value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 156
    label "public abstract LongBuffer asLongBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a long buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * eight, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new long buffer&#10;     "
  ]
  node [
    id 157
    label "public abstract float getFloat()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a float value.&#10;     *&#10;     * <p> Reads the next four bytes at this buffer's current position,&#10;     * composing them into a float value according to the current byte order,&#10;     * and then increments the position by four.  </p>&#10;     *&#10;     * @return  The float value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 158
    label "public abstract ByteBuffer putFloat(float value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a float&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given float value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by four.  </p>&#10;     *&#10;     * @param  value&#10;     *         The float value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 159
    label "public abstract float getFloat(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a float value.&#10;     *&#10;     * <p> Reads four bytes at the given index, composing them into a&#10;     * float value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The float value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     "
  ]
  node [
    id 160
    label " abstract float getFloatUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 161
    label "public abstract ByteBuffer putFloat(int index, float value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a float&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given float value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The float value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 162
    label " abstract void putFloatUnchecked(int index, float value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 163
    label "public abstract FloatBuffer asFloatBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a float buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * four, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new float buffer&#10;     "
  ]
  node [
    id 164
    label "public abstract double getDouble()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a double value.&#10;     *&#10;     * <p> Reads the next eight bytes at this buffer's current position,&#10;     * composing them into a double value according to the current byte order,&#10;     * and then increments the position by eight.  </p>&#10;     *&#10;     * @return  The double value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 165
    label "public abstract ByteBuffer putDouble(double value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a double&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given double value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by eight.  </p>&#10;     *&#10;     * @param  value&#10;     *         The double value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 166
    label "public abstract double getDouble(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a double value.&#10;     *&#10;     * <p> Reads eight bytes at the given index, composing them into a&#10;     * double value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The double value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     "
  ]
  node [
    id 167
    label " abstract double getDoubleUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 168
    label "public abstract ByteBuffer putDouble(int index, double value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a double&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given double value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The double value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 169
    label " abstract void putDoubleUnchecked(int index, double value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 170
    label "public abstract DoubleBuffer asDoubleBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a double buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * eight, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new double buffer&#10;     "
  ]
  node [
    id 171
    label "public final int remaining()"
    type "method"
    comment "&#10;     * Returns the number of elements between the current position and the&#10;     * limit.&#10;     *&#10;     * @return  The number of elements remaining in this buffer&#10;     "
  ]
  node [
    id 172
    label "public final boolean hasRemaining()"
    type "method"
    comment "&#10;     * Tells whether there are any elements between the current position and&#10;     * the limit.&#10;     *&#10;     * @return  {@code true} if, and only if, there is at least one element&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 173
    label "public abstract boolean isReadOnly()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is read-only.&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is read-only&#10;     "
  ]
  node [
    id 174
    label "public abstract boolean hasArray()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is backed by an accessible&#10;     * array.&#10;     *&#10;     * <p> If this method returns {@code true} then the {@link #array() array}&#10;     * and {@link #arrayOffset() arrayOffset} methods may safely be invoked.&#10;     * </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer&#10;     *          is backed by an array and is not read-only&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 175
    label "public abstract Object array()"
    type "method"
    comment "&#10;     * Returns the array that backs this&#10;     * buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method is intended to allow array-backed buffers to be&#10;     * passed to native code more efficiently. Concrete subclasses&#10;     * provide more strongly-typed return values for this method.&#10;     *&#10;     * <p> Modifications to this buffer's content will cause the returned&#10;     * array's content to be modified, and vice versa.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The array that backs this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 176
    label "public abstract int arrayOffset()"
    type "method"
    comment "&#10;     * Returns the offset within this buffer's backing array of the first&#10;     * element of the buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> If this buffer is backed by an array then buffer position <i>p</i>&#10;     * corresponds to array index <i>p</i>&#38;nbsp;+&#38;nbsp;{@code arrayOffset()}.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The offset within this buffer's array&#10;     *          of the first element of the buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     *&#10;     * @since 1.6&#10;     "
  ]
  node [
    id 177
    label "public abstract Buffer slice()"
    type "method"
    comment "&#10;     * Creates a new buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of elements remaining in this buffer, its mark will be&#10;     * undefined. The new buffer will be direct if, and only if, this buffer is&#10;     * direct, and it will be read-only if, and only if, this buffer is&#10;     * read-only.  </p>&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 178
    label "public abstract Buffer slice(int index, int length)"
    type "method"
    comment "&#10;     * Creates a new buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at position {@code index}&#10;     * in this buffer, and will contain {@code length} elements. Changes to&#10;     * this buffer's content will be visible in the new buffer, and vice versa;&#10;     * the two buffers' position, limit, and mark values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be {@code length}, its mark will be undefined. The new buffer will&#10;     * be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @param   index&#10;     *          The position in this buffer at which the content of the new&#10;     *          buffer will start; must be non-negative and no larger than&#10;     *          {@link #limit() limit()}&#10;     *&#10;     * @param   length&#10;     *          The number of elements the new buffer will contain; must be&#10;     *          non-negative and no larger than {@code limit() - index}&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative or greater than {@code limit()},&#10;     *          {@code length} is negative, or {@code length > limit() - index}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 179
    label "public abstract Buffer duplicate()"
    type "method"
    comment "&#10;     * Creates a new buffer that shares this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer, and vice&#10;     * versa; the two buffers' position, limit, and mark values will be&#10;     * independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position and mark values will be&#10;     * identical to those of this buffer. The new buffer will be direct if, and&#10;     * only if, this buffer is direct, and it will be read-only if, and only if,&#10;     * this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 180
    label " abstract Object base()"
    type "method"
    comment "&#10;     *&#10;     * @return the base reference, paired with the address&#10;     * field, which in combination can be used for unsafe access into a heap&#10;     * buffer or direct byte buffer (and views of).&#10;     "
  ]
  node [
    id 181
    label " final int nextGetIndex()"
    type "method"
    comment "&#10;     * Checks the current position against the limit, throwing a {@link&#10;     * BufferUnderflowException} if it is not smaller than the limit, and then&#10;     * increments the position.&#10;     *&#10;     * @return  The current position value, before it is incremented&#10;     "
  ]
  node [
    id 182
    label " final int nextPutIndex()"
    type "method"
    comment "&#10;     * Checks the current position against the limit, throwing a {@link&#10;     * BufferOverflowException} if it is not smaller than the limit, and then&#10;     * increments the position.&#10;     *&#10;     * @return  The current position value, before it is incremented&#10;     "
  ]
  node [
    id 183
    label " final int checkIndex(int i)"
    type "method"
    comment "&#10;     * Checks the given index against the limit, throwing an {@link&#10;     * IndexOutOfBoundsException} if it is not smaller than the limit&#10;     * or is smaller than zero.&#10;     "
  ]
  node [
    id 184
    label "IndexOutOfBoundsException"
  ]
  node [
    id 185
    label "public final CoderResult flush(ByteBuffer out)"
    type "method"
    comment "&#10;     * Flushes this encoder.&#10;     *&#10;     * <p> Some encoders maintain internal state and may need to write some&#10;     * final bytes to the output buffer once the overall input sequence has&#10;     * been read.&#10;     *&#10;     * <p> Any additional output is written to the output buffer beginning at&#10;     * its current position.  At most {@link Buffer#remaining out.remaining()}&#10;     * bytes will be written.  The buffer's position will be advanced&#10;     * appropriately, but its mark and limit will not be modified.&#10;     *&#10;     * <p> If this method completes successfully then it returns {@link&#10;     * CoderResult#UNDERFLOW}.  If there is insufficient room in the output&#10;     * buffer then it returns {@link CoderResult#OVERFLOW}.  If this happens&#10;     * then this method must be invoked again, with an output buffer that has&#10;     * more room, in order to complete the current <a href=&#34;#steps&#34;>encoding&#10;     * operation</a>.&#10;     *&#10;     * <p> If this encoder has already been flushed then invoking this method&#10;     * has no effect.&#10;     *&#10;     * <p> This method invokes the {@link #implFlush implFlush} method to&#10;     * perform the actual flushing operation.  </p>&#10;     *&#10;     * @param  out&#10;     *         The output byte buffer&#10;     *&#10;     * @return  A coder-result object, either {@link CoderResult#UNDERFLOW} or&#10;     *          {@link CoderResult#OVERFLOW}&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If the previous step of the current encoding operation was an&#10;     *          invocation neither of the {@link #flush flush} method nor of&#10;     *          the three-argument {@link&#10;     *          #encode(CharBuffer,ByteBuffer,boolean) encode} method&#10;     *          with a value of {@code true} for the {@code endOfInput}&#10;     *          parameter&#10;     "
  ]
  node [
    id 186
    label "encode(CharBuffer"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 187
    label "flush"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 188
    label "implFlush"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 189
    label "protected CoderResult implFlush(ByteBuffer out)"
    type "method"
    comment "&#10;     * Flushes this encoder.&#10;     *&#10;     * <p> The default implementation of this method does nothing, and always&#10;     * returns {@link CoderResult#UNDERFLOW}.  This method should be overridden&#10;     * by encoders that may need to write final bytes to the output buffer&#10;     * once the entire input sequence has been read. </p>&#10;     *&#10;     * @param  out&#10;     *         The output byte buffer&#10;     *&#10;     * @return  A coder-result object, either {@link CoderResult#UNDERFLOW} or&#10;     *          {@link CoderResult#OVERFLOW}&#10;     "
  ]
  node [
    id 190
    label "public final CharsetEncoder reset()"
    type "method"
    comment "&#10;     * Resets this encoder, clearing any internal state.&#10;     *&#10;     * <p> This method resets charset-independent state and also invokes the&#10;     * {@link #implReset() implReset} method in order to perform any&#10;     * charset-specific reset actions.  </p>&#10;     *&#10;     * @return  This encoder&#10;     *&#10;     "
  ]
  node [
    id 191
    label "implReset()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 192
    label "protected void implReset()"
    type "method"
    comment "&#10;     * Resets this encoder, clearing any charset-specific internal state.&#10;     *&#10;     * <p> The default implementation of this method does nothing.  This method&#10;     * should be overridden by encoders that maintain internal state.  </p>&#10;     "
  ]
  node [
    id 193
    label "protected abstract CoderResult encodeLoop(CharBuffer in, ByteBuffer out)"
    type "method"
    comment "&#10;     * Encodes one or more characters into one or more bytes.&#10;     *&#10;     * <p> This method encapsulates the basic encoding loop, encoding as many&#10;     * characters as possible until it either runs out of input, runs out of room&#10;     * in the output buffer, or encounters an encoding error.  This method is&#10;     * invoked by the {@link #encode encode} method, which handles result&#10;     * interpretation and error recovery.&#10;     *&#10;     * <p> The buffers are read from, and written to, starting at their current&#10;     * positions.  At most {@link Buffer#remaining in.remaining()} characters&#10;     * will be read, and at most {@link Buffer#remaining out.remaining()}&#10;     * bytes will be written.  The buffers' positions will be advanced to&#10;     * reflect the characters read and the bytes written, but their marks and&#10;     * limits will not be modified.&#10;     *&#10;     * <p> This method returns a {@link CoderResult} object to describe its&#10;     * reason for termination, in the same manner as the {@link #encode encode}&#10;     * method.  Most implementations of this method will handle encoding errors&#10;     * by returning an appropriate result object for interpretation by the&#10;     * {@link #encode encode} method.  An optimized implementation may instead&#10;     * examine the relevant error action and implement that action itself.&#10;     *&#10;     * <p> An implementation of this method may perform arbitrary lookahead by&#10;     * returning {@link CoderResult#UNDERFLOW} until it receives sufficient&#10;     * input.  </p>&#10;     *&#10;     * @param  in&#10;     *         The input character buffer&#10;     *&#10;     * @param  out&#10;     *         The output byte buffer&#10;     *&#10;     * @return  A coder-result object describing the reason for termination&#10;     "
  ]
  node [
    id 194
    label "encode"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 195
    label "public final ByteBuffer encode(CharBuffer in) throws CharacterCodingException"
    type "method"
    comment "&#10;     * Convenience method that encodes the remaining content of a single input&#10;     * character buffer into a newly-allocated byte buffer.&#10;     *&#10;     * <p> This method implements an entire <a href=&#34;#steps&#34;>encoding&#10;     * operation</a>; that is, it resets this encoder, then it encodes the&#10;     * characters in the given character buffer, and finally it flushes this&#10;     * encoder.  This method should therefore not be invoked if an encoding&#10;     * operation is already in progress.  </p>&#10;     *&#10;     * @param  in&#10;     *         The input character buffer&#10;     *&#10;     * @return A newly-allocated byte buffer containing the result of the&#10;     *         encoding operation.  The buffer's position will be zero and its&#10;     *         limit will follow the last byte written.&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If an encoding operation is already in progress&#10;     *&#10;     * @throws  MalformedInputException&#10;     *          If the character sequence starting at the input buffer's current&#10;     *          position is not a legal sixteen-bit Unicode sequence and the current malformed-input action&#10;     *          is {@link CodingErrorAction#REPORT}&#10;     *&#10;     * @throws  UnmappableCharacterException&#10;     *          If the character sequence starting at the input buffer's current&#10;     *          position cannot be mapped to an equivalent byte sequence and&#10;     *          the current unmappable-character action is {@link&#10;     *          CodingErrorAction#REPORT}&#10;     *&#10;     * @throws  CoderMalfunctionError&#10;     *          If an invocation of the encodeLoop method threw&#10;     *          an unexpected exception&#10;     *&#10;     * @throws  NullPointerException if input buffer is null&#10;     "
  ]
  node [
    id 196
    label "public boolean canEncode(char c)"
    type "method"
    comment "&#10;     * Tells whether or not this encoder can encode the given character.&#10;     *&#10;     * <p> This method returns {@code false} if the given character is a&#10;     * surrogate character; such characters can be interpreted only when they&#10;     * are members of a pair consisting of a high surrogate followed by a low&#10;     * surrogate.  The {@link #canEncode(java.lang.CharSequence)&#10;     * canEncode(CharSequence)} method may be used to test whether or not a&#10;     * character sequence can be encoded.&#10;     *&#10;     * <p> This method may modify this encoder's state; it should therefore not&#10;     * be invoked if an <a href=&#34;#steps&#34;>encoding operation</a> is already in&#10;     * progress.&#10;     *&#10;     * <p> The default implementation of this method is not very efficient; it&#10;     * should generally be overridden to improve performance.  </p>&#10;     *&#10;     * @param   c&#10;     *          The given character&#10;     *&#10;     * @return  {@code true} if, and only if, this encoder can encode&#10;     *          the given character&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If an encoding operation is already in progress&#10;     "
  ]
  node [
    id 197
    label "canEncode(java.lang.CharSequence)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 198
    label "public boolean canEncode(CharSequence cs)"
    type "method"
    comment "&#10;     * Tells whether or not this encoder can encode the given character&#10;     * sequence.&#10;     *&#10;     * <p> If this method returns {@code false} for a particular character&#10;     * sequence then more information about why the sequence cannot be encoded&#10;     * may be obtained by performing a full <a href=&#34;#steps&#34;>encoding&#10;     * operation</a>.&#10;     *&#10;     * <p> This method may modify this encoder's state; it should therefore not&#10;     * be invoked if an encoding operation is already in progress.&#10;     *&#10;     * <p> The default implementation of this method is not very efficient; it&#10;     * should generally be overridden to improve performance.  </p>&#10;     *&#10;     * @param   cs&#10;     *          The given character sequence&#10;     *&#10;     * @return  {@code true} if, and only if, this encoder can encode&#10;     *          the given character without throwing any exceptions and without&#10;     *          performing any replacements&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If an encoding operation is already in progress&#10;     "
  ]
  node [
    id 199
    label "public byte[] getBytes(Charset charset)"
    type "method"
    comment "&#10;     * Encodes this {@code String} into a sequence of bytes using the given&#10;     * {@linkplain java.nio.charset.Charset charset}, storing the result into a&#10;     * new byte array.&#10;     *&#10;     * <p> This method always replaces malformed-input and unmappable-character&#10;     * sequences with this charset's default replacement byte array.  The&#10;     * {@link java.nio.charset.CharsetEncoder} class should be used when more&#10;     * control over the encoding process is required.&#10;     *&#10;     * @param  charset&#10;     *         The {@linkplain java.nio.charset.Charset} to be used to encode&#10;     *         the {@code String}&#10;     *&#10;     * @return  The resultant byte array&#10;     *&#10;     * @since  1.6&#10;     "
  ]
  node [
    id 200
    label "public byte[] getBytes()"
    type "method"
    comment "&#10;     * Encodes this {@code String} into a sequence of bytes using the&#10;     * platform's default charset, storing the result into a new byte array.&#10;     *&#10;     * <p> The behavior of this method when this string cannot be encoded in&#10;     * the default charset is unspecified.  The {@link&#10;     * java.nio.charset.CharsetEncoder} class should be used when more control&#10;     * over the encoding process is required.&#10;     *&#10;     * @return  The resultant byte array&#10;     *&#10;     * @since      1.1&#10;     "
  ]
  node [
    id 201
    label "public boolean equals(Object anObject)"
    type "method"
    comment "&#10;     * Compares this string to the specified object.  The result is {@code&#10;     * true} if and only if the argument is not {@code null} and is a {@code&#10;     * String} object that represents the same sequence of characters as this&#10;     * object.&#10;     *&#10;     * <p>For finer-grained String comparison, refer to&#10;     * {@link java.text.Collator}.&#10;     *&#10;     * @param  anObject&#10;     *         The object to compare this {@code String} against&#10;     *&#10;     * @return  {@code true} if the given object represents a {@code String}&#10;     *          equivalent to this string, {@code false} otherwise&#10;     *&#10;     * @see  #compareTo(String)&#10;     * @see  #equalsIgnoreCase(String)&#10;     "
  ]
  node [
    id 202
    label "java.text.Collator"
    type "class"
    comment ""
  ]
  node [
    id 203
    label "public static synchronized Collator getInstance()"
    type "method"
    comment "&#10;     * Gets the Collator for the current default locale.&#10;     * The default locale is determined by java.util.Locale.getDefault.&#10;     * @return the Collator for the default locale.(for example, en_US)&#10;     * @see java.util.Locale#getDefault&#10;     "
  ]
  node [
    id 204
    label "public static Collator getInstance(Locale desiredLocale)"
    type "method"
    comment "&#10;     * Gets the Collator for the desired locale.&#10;     * @param desiredLocale the desired locale.&#10;     * @return the Collator for the desired locale.&#10;     * @see java.util.Locale&#10;     * @see java.util.ResourceBundle&#10;     "
  ]
  node [
    id 205
    label "public abstract int compare(String source, String target)"
    type "method"
    comment "&#10;     * Compares the source string to the target string according to the&#10;     * collation rules for this Collator.  Returns an integer less than,&#10;     * equal to or greater than zero depending on whether the source String is&#10;     * less than, equal to or greater than the target string.  See the Collator&#10;     * class description for an example of use.&#10;     * <p>&#10;     * For a one time comparison, this method has the best performance. If a&#10;     * given String will be involved in multiple comparisons, CollationKey.compareTo&#10;     * has the best performance. See the Collator class description for an example&#10;     * using CollationKeys.&#10;     * @param source the source string.&#10;     * @param target the target string.&#10;     * @return Returns an integer value. Value is less than zero if source is less than&#10;     * target, value is zero if source and target are equal, value is greater than zero&#10;     * if source is greater than target.&#10;     * @see java.text.CollationKey&#10;     * @see java.text.Collator#getCollationKey&#10;     "
  ]
  node [
    id 206
    label "public int compare(Object o1, Object o2)"
    type "method"
    comment "&#10;     * Compares its two arguments for order.  Returns a negative integer,&#10;     * zero, or a positive integer as the first argument is less than, equal&#10;     * to, or greater than the second.&#10;     * <p>&#10;     * This implementation merely returns&#10;     *  {@code  compare((String)o1, (String)o2) }.&#10;     *&#10;     * @return a negative integer, zero, or a positive integer as the&#10;     *         first argument is less than, equal to, or greater than the&#10;     *         second.&#10;     * @throws    ClassCastException the arguments cannot be cast to Strings.&#10;     * @see java.util.Comparator&#10;     * @since   1.2&#10;     "
  ]
  node [
    id 207
    label "public abstract CollationKey getCollationKey(String source)"
    type "method"
    comment "&#10;     * Transforms the String into a series of bits that can be compared bitwise&#10;     * to other CollationKeys. CollationKeys provide better performance than&#10;     * Collator.compare when Strings are involved in multiple comparisons.&#10;     * See the Collator class description for an example using CollationKeys.&#10;     * @param source the string to be transformed into a collation key.&#10;     * @return the CollationKey for the given String based on this Collator's collation&#10;     * rules. If the source String is null, a null CollationKey is returned.&#10;     * @see java.text.CollationKey&#10;     * @see java.text.Collator#compare&#10;     "
  ]
  node [
    id 208
    label "public boolean equals(String source, String target)"
    type "method"
    comment "&#10;     * Convenience method for comparing the equality of two strings based on&#10;     * this Collator's collation rules.&#10;     * @param source the source string to be compared with.&#10;     * @param target the target string to be compared with.&#10;     * @return true if the strings are equal according to the collation&#10;     * rules.  false, otherwise.&#10;     * @see java.text.Collator#compare&#10;     "
  ]
  node [
    id 209
    label "public synchronized int getStrength()"
    type "method"
    comment "&#10;     * Returns this Collator's strength property.  The strength property determines&#10;     * the minimum level of difference considered significant during comparison.&#10;     * See the Collator class description for an example of use.&#10;     * @return this Collator's current strength property.&#10;     * @see java.text.Collator#setStrength&#10;     * @see java.text.Collator#PRIMARY&#10;     * @see java.text.Collator#SECONDARY&#10;     * @see java.text.Collator#TERTIARY&#10;     * @see java.text.Collator#IDENTICAL&#10;     "
  ]
  node [
    id 210
    label "public synchronized void setStrength(int newStrength)"
    type "method"
    comment "&#10;     * Sets this Collator's strength property.  The strength property determines&#10;     * the minimum level of difference considered significant during comparison.&#10;     * See the Collator class description for an example of use.&#10;     * @param newStrength  the new strength value.&#10;     * @see java.text.Collator#getStrength&#10;     * @see java.text.Collator#PRIMARY&#10;     * @see java.text.Collator#SECONDARY&#10;     * @see java.text.Collator#TERTIARY&#10;     * @see java.text.Collator#IDENTICAL&#10;     * @throws     IllegalArgumentException If the new strength value is not one of&#10;     * PRIMARY, SECONDARY, TERTIARY or IDENTICAL.&#10;     "
  ]
  node [
    id 211
    label "public synchronized int getDecomposition()"
    type "method"
    comment "&#10;     * Get the decomposition mode of this Collator. Decomposition mode&#10;     * determines how Unicode composed characters are handled. Adjusting&#10;     * decomposition mode allows the user to select between faster and more&#10;     * complete collation behavior.&#10;     * <p>The three values for decomposition mode are:&#10;     * <UL>&#10;     * <LI>NO_DECOMPOSITION,&#10;     * <LI>CANONICAL_DECOMPOSITION&#10;     * <LI>FULL_DECOMPOSITION.&#10;     * </UL>&#10;     * See the documentation for these three constants for a description&#10;     * of their meaning.&#10;     * @return the decomposition mode&#10;     * @see java.text.Collator#setDecomposition&#10;     * @see java.text.Collator#NO_DECOMPOSITION&#10;     * @see java.text.Collator#CANONICAL_DECOMPOSITION&#10;     * @see java.text.Collator#FULL_DECOMPOSITION&#10;     "
  ]
  node [
    id 212
    label "public synchronized void setDecomposition(int decompositionMode)"
    type "method"
    comment "&#10;     * Set the decomposition mode of this Collator. See getDecomposition&#10;     * for a description of decomposition mode.&#10;     * @param decompositionMode  the new decomposition mode.&#10;     * @see java.text.Collator#getDecomposition&#10;     * @see java.text.Collator#NO_DECOMPOSITION&#10;     * @see java.text.Collator#CANONICAL_DECOMPOSITION&#10;     * @see java.text.Collator#FULL_DECOMPOSITION&#10;     * @throws    IllegalArgumentException If the given value is not a valid decomposition&#10;     * mode.&#10;     "
  ]
  node [
    id 213
    label "public static synchronized Locale[] getAvailableLocales()"
    type "method"
    comment "&#10;     * Returns an array of all locales for which the&#10;     * {@code getInstance} methods of this class can return&#10;     * localized instances.&#10;     *&#10;     * @return An array of locales for which localized&#10;     *         {@code Collator} instances are available.&#10;     "
  ]
  node [
    id 214
    label "private int decompositionMode_Java_ICU(int mode)"
    type "method"
    comment " BEGIN Android-added: conversion method for decompositionMode constants."
  ]
  node [
    id 215
    label "public Object clone()"
    type "method"
    comment "&#10;     * Returns a new collator with the same decomposition mode and&#10;     * strength value as this collator.&#10;     *&#10;     * @return a shallow copy of this collator.&#10;     * @see java.lang.Cloneable&#10;     "
  ]
  node [
    id 216
    label "public boolean equals(Object that)"
    type "method"
    comment "&#10;     * Compares the equality of two Collators.&#10;     * @param that the Collator to be compared with this.&#10;     * @return true if this Collator is the same as that Collator;&#10;     * false otherwise.&#10;     "
  ]
  node [
    id 217
    label "public abstract int hashCode()"
    type "method"
    comment "&#10;     * Generates the hash code for this Collator.&#10;     "
  ]
  node [
    id 218
    label "public boolean contentEquals(StringBuffer sb)"
    type "method"
    comment "&#10;     * Compares this string to the specified {@code StringBuffer}.  The result&#10;     * is {@code true} if and only if this {@code String} represents the same&#10;     * sequence of characters as the specified {@code StringBuffer}. This method&#10;     * synchronizes on the {@code StringBuffer}.&#10;     *&#10;     * <p>For finer-grained String comparison, refer to&#10;     * {@link java.text.Collator}.&#10;     *&#10;     * @param  sb&#10;     *         The {@code StringBuffer} to compare this {@code String} against&#10;     *&#10;     * @return  {@code true} if this {@code String} represents the same&#10;     *          sequence of characters as the specified {@code StringBuffer},&#10;     *          {@code false} otherwise&#10;     *&#10;     * @since  1.4&#10;     "
  ]
  node [
    id 219
    label "public boolean contentEquals(CharSequence cs)"
    type "method"
    comment "&#10;     * Compares this string to the specified {@code CharSequence}.  The&#10;     * result is {@code true} if and only if this {@code String} represents the&#10;     * same sequence of char values as the specified sequence. Note that if the&#10;     * {@code CharSequence} is a {@code StringBuffer} then the method&#10;     * synchronizes on it.&#10;     *&#10;     * <p>For finer-grained String comparison, refer to&#10;     * {@link java.text.Collator}.&#10;     *&#10;     * @param  cs&#10;     *         The sequence to compare this {@code String} against&#10;     *&#10;     * @return  {@code true} if this {@code String} represents the same&#10;     *          sequence of char values as the specified sequence, {@code&#10;     *          false} otherwise&#10;     *&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 220
    label "public boolean equalsIgnoreCase(String anotherString)"
    type "method"
    comment "&#10;     * Compares this {@code String} to another {@code String}, ignoring case&#10;     * considerations.  Two strings are considered equal ignoring case if they&#10;     * are of the same length and corresponding characters in the two strings&#10;     * are equal ignoring case.&#10;     *&#10;     * <p> Two characters {@code c1} and {@code c2} are considered the same&#10;     * ignoring case if at least one of the following is true:&#10;     * <ul>&#10;     *   <li> The two characters are the same (as compared by the&#10;     *        {@code ==} operator)&#10;     *   <li> Calling {@code Character.toLowerCase(Character.toUpperCase(char))}&#10;     *        on each character produces the same result&#10;     * </ul>&#10;     *&#10;     * <p>Note that this method does <em>not</em> take locale into account, and&#10;     * will result in unsatisfactory results for certain locales.  The&#10;     * {@link java.text.Collator} class provides locale-sensitive comparison.&#10;     *&#10;     * @param  anotherString&#10;     *         The {@code String} to compare this {@code String} against&#10;     *&#10;     * @return  {@code true} if the argument is not {@code null} and it&#10;     *          represents an equivalent {@code String} ignoring case; {@code&#10;     *          false} otherwise&#10;     *&#10;     * @see  #equals(Object)&#10;     "
  ]
  node [
    id 221
    label "public native int compareTo(String anotherString)"
    type "method"
    comment "&#10;    public int compareTo(String anotherString) {&#10;        byte v1[] = value;&#10;        byte v2[] = anotherString.value;&#10;        if (coder() == anotherString.coder()) {&#10;            return isLatin1() ? StringLatin1.compareTo(v1, v2)&#10;                              : StringUTF16.compareTo(v1, v2);&#10;        }&#10;        return isLatin1() ? StringLatin1.compareToUTF16(v1, v2)&#10;                          : StringUTF16.compareToLatin1(v1, v2);&#10;     }&#10;    "
  ]
  node [
    id 222
    label "public int compareToIgnoreCase(String str)"
    type "method"
    comment "&#10;     * Compares two strings lexicographically, ignoring case&#10;     * differences. This method returns an integer whose sign is that of&#10;     * calling {@code compareTo} with normalized versions of the strings&#10;     * where case differences have been eliminated by calling&#10;     * {@code Character.toLowerCase(Character.toUpperCase(character))} on&#10;     * each character.&#10;     * <p>&#10;     * Note that this method does <em>not</em> take locale into account,&#10;     * and will result in an unsatisfactory ordering for certain locales.&#10;     * The {@link java.text.Collator} class provides locale-sensitive comparison.&#10;     *&#10;     * @param   str   the {@code String} to be compared.&#10;     * @return  a negative integer, zero, or a positive integer as the&#10;     *          specified String is greater than, equal to, or less&#10;     *          than this String, ignoring case considerations.&#10;     * @see     java.text.Collator&#10;     * @since   1.2&#10;     "
  ]
  node [
    id 223
    label "public boolean regionMatches(int toffset, String other, int ooffset, int len)"
    type "method"
    comment "&#10;     * Tests if two string regions are equal.&#10;     * <p>&#10;     * A substring of this {@code String} object is compared to a substring&#10;     * of the argument other. The result is true if these substrings&#10;     * represent identical character sequences. The substring of this&#10;     * {@code String} object to be compared begins at index {@code toffset}&#10;     * and has length {@code len}. The substring of other to be compared&#10;     * begins at index {@code ooffset} and has length {@code len}. The&#10;     * result is {@code false} if and only if at least one of the following&#10;     * is true:&#10;     * <ul><li>{@code toffset} is negative.&#10;     * <li>{@code ooffset} is negative.&#10;     * <li>{@code toffset+len} is greater than the length of this&#10;     * {@code String} object.&#10;     * <li>{@code ooffset+len} is greater than the length of the other&#10;     * argument.&#10;     * <li>There is some nonnegative integer <i>k</i> less than {@code len}&#10;     * such that:&#10;     * {@code this.charAt(toffset + }<i>k</i>{@code ) != other.charAt(ooffset + }&#10;     * <i>k</i>{@code )}&#10;     * </ul>&#10;     *&#10;     * <p>Note that this method does <em>not</em> take locale into account.  The&#10;     * {@link java.text.Collator} class provides locale-sensitive comparison.&#10;     *&#10;     * @param   toffset   the starting offset of the subregion in this string.&#10;     * @param   other     the string argument.&#10;     * @param   ooffset   the starting offset of the subregion in the string&#10;     *                    argument.&#10;     * @param   len       the number of characters to compare.&#10;     * @return  {@code true} if the specified subregion of this string&#10;     *          exactly matches the specified subregion of the string argument;&#10;     *          {@code false} otherwise.&#10;     "
  ]
  node [
    id 224
    label "public boolean regionMatches(boolean ignoreCase, int toffset, String other, int ooffset, int len)"
    type "method"
    comment "&#10;     * Tests if two string regions are equal.&#10;     * <p>&#10;     * A substring of this {@code String} object is compared to a substring&#10;     * of the argument {@code other}. The result is {@code true} if these&#10;     * substrings represent character sequences that are the same, ignoring&#10;     * case if and only if {@code ignoreCase} is true. The substring of&#10;     * this {@code String} object to be compared begins at index&#10;     * {@code toffset} and has length {@code len}. The substring of&#10;     * {@code other} to be compared begins at index {@code ooffset} and&#10;     * has length {@code len}. The result is {@code false} if and only if&#10;     * at least one of the following is true:&#10;     * <ul><li>{@code toffset} is negative.&#10;     * <li>{@code ooffset} is negative.&#10;     * <li>{@code toffset+len} is greater than the length of this&#10;     * {@code String} object.&#10;     * <li>{@code ooffset+len} is greater than the length of the other&#10;     * argument.&#10;     * <li>{@code ignoreCase} is {@code false} and there is some nonnegative&#10;     * integer <i>k</i> less than {@code len} such that:&#10;     * <blockquote><pre>&#10;     * this.charAt(toffset+k) != other.charAt(ooffset+k)&#10;     * </pre></blockquote>&#10;     * <li>{@code ignoreCase} is {@code true} and there is some nonnegative&#10;     * integer <i>k</i> less than {@code len} such that:&#10;     * <blockquote><pre>&#10;     * Character.toLowerCase(Character.toUpperCase(this.charAt(toffset+k))) !=&#10;     Character.toLowerCase(Character.toUpperCase(other.charAt(ooffset+k)))&#10;     * </pre></blockquote>&#10;     * </ul>&#10;     *&#10;     * <p>Note that this method does <em>not</em> take locale into account,&#10;     * and will result in unsatisfactory results for certain locales when&#10;     * {@code ignoreCase} is {@code true}.  The {@link java.text.Collator} class&#10;     * provides locale-sensitive comparison.&#10;     *&#10;     * @param   ignoreCase   if {@code true}, ignore case when comparing&#10;     *                       characters.&#10;     * @param   toffset      the starting offset of the subregion in this&#10;     *                       string.&#10;     * @param   other        the string argument.&#10;     * @param   ooffset      the starting offset of the subregion in the string&#10;     *                       argument.&#10;     * @param   len          the number of characters to compare.&#10;     * @return  {@code true} if the specified subregion of this string&#10;     *          matches the specified subregion of the string argument;&#10;     *          {@code false} otherwise. Whether the matching is exact&#10;     *          or case insensitive depends on the {@code ignoreCase}&#10;     *          argument.&#10;     "
  ]
  node [
    id 225
    label "public boolean startsWith(String prefix, int toffset)"
    type "method"
    comment "&#10;     * Tests if the substring of this string beginning at the&#10;     * specified index starts with the specified prefix.&#10;     *&#10;     * @param   prefix    the prefix.&#10;     * @param   toffset   where to begin looking in this string.&#10;     * @return  {@code true} if the character sequence represented by the&#10;     *          argument is a prefix of the substring of this object starting&#10;     *          at index {@code toffset}; {@code false} otherwise.&#10;     *          The result is {@code false} if {@code toffset} is&#10;     *          negative or greater than the length of this&#10;     *          {@code String} object; otherwise the result is the same&#10;     *          as the result of the expression&#10;     *          <pre>&#10;     *          this.substring(toffset).startsWith(prefix)&#10;     *          </pre>&#10;     "
  ]
  node [
    id 226
    label "public boolean startsWith(String prefix)"
    type "method"
    comment "&#10;     * Tests if this string starts with the specified prefix.&#10;     *&#10;     * @param   prefix   the prefix.&#10;     * @return  {@code true} if the character sequence represented by the&#10;     *          argument is a prefix of the character sequence represented by&#10;     *          this string; {@code false} otherwise.&#10;     *          Note also that {@code true} will be returned if the&#10;     *          argument is an empty string or is equal to this&#10;     *          {@code String} object as determined by the&#10;     *          {@link #equals(Object)} method.&#10;     * @since   1.0&#10;     "
  ]
  node [
    id 227
    label "equals(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 228
    label "public boolean endsWith(String suffix)"
    type "method"
    comment "&#10;     * Tests if this string ends with the specified suffix.&#10;     *&#10;     * @param   suffix   the suffix.&#10;     * @return  {@code true} if the character sequence represented by the&#10;     *          argument is a suffix of the character sequence represented by&#10;     *          this object; {@code false} otherwise. Note that the&#10;     *          result will be {@code true} if the argument is the&#10;     *          empty string or is equal to this {@code String} object&#10;     *          as determined by the {@link #equals(Object)} method.&#10;     "
  ]
  node [
    id 229
    label "public int indexOf(int ch)"
    type "method"
    comment "&#10;     * Returns the index within this string of the first occurrence of&#10;     * the specified character. If a character with value&#10;     * {@code ch} occurs in the character sequence represented by&#10;     * this {@code String} object, then the index (in Unicode&#10;     * code units) of the first such occurrence is returned. For&#10;     * values of {@code ch} in the range from 0 to 0xFFFF&#10;     * (inclusive), this is the smallest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * this.charAt(<i>k</i>) == ch&#10;     * </pre></blockquote>&#10;     * is true. For other values of {@code ch}, it is the&#10;     * smallest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * this.codePointAt(<i>k</i>) == ch&#10;     * </pre></blockquote>&#10;     * is true. In either case, if no such character occurs in this&#10;     * string, then {@code -1} is returned.&#10;     *&#10;     * @param   ch   a character (Unicode code point).&#10;     * @return  the index of the first occurrence of the character in the&#10;     *          character sequence represented by this object, or&#10;     *          {@code -1} if the character does not occur.&#10;     "
  ]
  node [
    id 230
    label "public int indexOf(int ch, int fromIndex)"
    type "method"
    comment "&#10;     * Returns the index within this string of the first occurrence of the&#10;     * specified character, starting the search at the specified index.&#10;     * <p>&#10;     * If a character with value {@code ch} occurs in the&#10;     * character sequence represented by this {@code String}&#10;     * object at an index no smaller than {@code fromIndex}, then&#10;     * the index of the first such occurrence is returned. For values&#10;     * of {@code ch} in the range from 0 to 0xFFFF (inclusive),&#10;     * this is the smallest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * (this.charAt(<i>k</i>) == ch) {@code &#38;&#38;} (<i>k</i> &#38;gt;= fromIndex)&#10;     * </pre></blockquote>&#10;     * is true. For other values of {@code ch}, it is the&#10;     * smallest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * (this.codePointAt(<i>k</i>) == ch) {@code &#38;&#38;} (<i>k</i> &#38;gt;= fromIndex)&#10;     * </pre></blockquote>&#10;     * is true. In either case, if no such character occurs in this&#10;     * string at or after position {@code fromIndex}, then&#10;     * {@code -1} is returned.&#10;     *&#10;     * <p>&#10;     * There is no restriction on the value of {@code fromIndex}. If it&#10;     * is negative, it has the same effect as if it were zero: this entire&#10;     * string may be searched. If it is greater than the length of this&#10;     * string, it has the same effect as if it were equal to the length of&#10;     * this string: {@code -1} is returned.&#10;     *&#10;     * <p>All indices are specified in {@code char} values&#10;     * (Unicode code units).&#10;     *&#10;     * @param   ch          a character (Unicode code point).&#10;     * @param   fromIndex   the index to start the search from.&#10;     * @return  the index of the first occurrence of the character in the&#10;     *          character sequence represented by this object that is greater&#10;     *          than or equal to {@code fromIndex}, or {@code -1}&#10;     *          if the character does not occur.&#10;     "
  ]
  node [
    id 231
    label "private int indexOfSupplementary(int ch, int fromIndex)"
    type "method"
    comment "&#10;     * Handles (rare) calls of indexOf with a supplementary character.&#10;     "
  ]
  node [
    id 232
    label "public int lastIndexOf(int ch)"
    type "method"
    comment "&#10;     * Returns the index within this string of the last occurrence of&#10;     * the specified character. For values of {@code ch} in the&#10;     * range from 0 to 0xFFFF (inclusive), the index (in Unicode code&#10;     * units) returned is the largest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * this.charAt(<i>k</i>) == ch&#10;     * </pre></blockquote>&#10;     * is true. For other values of {@code ch}, it is the&#10;     * largest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * this.codePointAt(<i>k</i>) == ch&#10;     * </pre></blockquote>&#10;     * is true.  In either case, if no such character occurs in this&#10;     * string, then {@code -1} is returned.  The&#10;     * {@code String} is searched backwards starting at the last&#10;     * character.&#10;     *&#10;     * @param   ch   a character (Unicode code point).&#10;     * @return  the index of the last occurrence of the character in the&#10;     *          character sequence represented by this object, or&#10;     *          {@code -1} if the character does not occur.&#10;     "
  ]
  node [
    id 233
    label "public int lastIndexOf(int ch, int fromIndex)"
    type "method"
    comment "&#10;     * Returns the index within this string of the last occurrence of&#10;     * the specified character, searching backward starting at the&#10;     * specified index. For values of {@code ch} in the range&#10;     * from 0 to 0xFFFF (inclusive), the index returned is the largest&#10;     * value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * (this.charAt(<i>k</i>) == ch) {@code &#38;&#38;} (<i>k</i> &#38;lt;= fromIndex)&#10;     * </pre></blockquote>&#10;     * is true. For other values of {@code ch}, it is the&#10;     * largest value <i>k</i> such that:&#10;     * <blockquote><pre>&#10;     * (this.codePointAt(<i>k</i>) == ch) {@code &#38;&#38;} (<i>k</i> &#38;lt;= fromIndex)&#10;     * </pre></blockquote>&#10;     * is true. In either case, if no such character occurs in this&#10;     * string at or before position {@code fromIndex}, then&#10;     * {@code -1} is returned.&#10;     *&#10;     * <p>All indices are specified in {@code char} values&#10;     * (Unicode code units).&#10;     *&#10;     * @param   ch          a character (Unicode code point).&#10;     * @param   fromIndex   the index to start the search from. There is no&#10;     *          restriction on the value of {@code fromIndex}. If it is&#10;     *          greater than or equal to the length of this string, it has&#10;     *          the same effect as if it were equal to one less than the&#10;     *          length of this string: this entire string may be searched.&#10;     *          If it is negative, it has the same effect as if it were -1:&#10;     *          -1 is returned.&#10;     * @return  the index of the last occurrence of the character in the&#10;     *          character sequence represented by this object that is less&#10;     *          than or equal to {@code fromIndex}, or {@code -1}&#10;     *          if the character does not occur before that point.&#10;     "
  ]
  node [
    id 234
    label "private int lastIndexOfSupplementary(int ch, int fromIndex)"
    type "method"
    comment "&#10;     * Handles (rare) calls of lastIndexOf with a supplementary character.&#10;     "
  ]
  node [
    id 235
    label "public int indexOf(String str)"
    type "method"
    comment "&#10;     * Returns the index within this string of the first occurrence of the&#10;     * specified substring.&#10;     *&#10;     * <p>The returned index is the smallest value {@code k} for which:&#10;     * <pre>{@code&#10;     * this.startsWith(str, k)&#10;     * }</pre>&#10;     * If no such value of {@code k} exists, then {@code -1} is returned.&#10;     *&#10;     * @param   str   the substring to search for.&#10;     * @return  the index of the first occurrence of the specified substring,&#10;     *          or {@code -1} if there is no such occurrence.&#10;     "
  ]
  node [
    id 236
    label "public int indexOf(String str, int fromIndex)"
    type "method"
    comment "&#10;     * Returns the index within this string of the first occurrence of the&#10;     * specified substring, starting at the specified index.&#10;     *&#10;     * <p>The returned index is the smallest value {@code k} for which:&#10;     * <pre>{@code&#10;     *     k >= Math.min(fromIndex, this.length()) &#38;&#38;&#10;     *                   this.startsWith(str, k)&#10;     * }</pre>&#10;     * If no such value of {@code k} exists, then {@code -1} is returned.&#10;     *&#10;     * @param   str         the substring to search for.&#10;     * @param   fromIndex   the index from which to start the search.&#10;     * @return  the index of the first occurrence of the specified substring,&#10;     *          starting at the specified index,&#10;     *          or {@code -1} if there is no such occurrence.&#10;     "
  ]
  node [
    id 237
    label "private static int indexOf(String source, String target, int fromIndex)"
    type "method"
    comment "&#10;     * The source is the string being searched, and the target is the string being searched for.&#10;     *&#10;     * @param   source       the characters being searched.&#10;     * @param   target       the characters being searched for.&#10;     * @param   fromIndex    the index to begin searching from.&#10;     "
  ]
  node [
    id 238
    label " static int indexOf(byte[] src, byte srcCoder, int srcCount, String tgtStr, int fromIndex)"
    type "method"
    comment "&#10;     * Code shared by String and AbstractStringBuilder to do searches. The&#10;     * source is the character array being searched, and the target&#10;     * is the string being searched for.&#10;     *&#10;     * @param   src       the characters being searched.&#10;     * @param   srcCoder  the coder of the source string.&#10;     * @param   srcCount  length of the source string.&#10;     * @param   tgtStr    the characters being searched for.&#10;     * @param   fromIndex the index to begin searching from.&#10;     "
  ]
  node [
    id 239
    label "public int lastIndexOf(String str)"
    type "method"
    comment "&#10;     * Returns the index within this string of the last occurrence of the&#10;     * specified substring.  The last occurrence of the empty string &#34;&#34;&#10;     * is considered to occur at the index value {@code this.length()}.&#10;     *&#10;     * <p>The returned index is the largest value {@code k} for which:&#10;     * <pre>{@code&#10;     * this.startsWith(str, k)&#10;     * }</pre>&#10;     * If no such value of {@code k} exists, then {@code -1} is returned.&#10;     *&#10;     * @param   str   the substring to search for.&#10;     * @return  the index of the last occurrence of the specified substring,&#10;     *          or {@code -1} if there is no such occurrence.&#10;     "
  ]
  node [
    id 240
    label "public int lastIndexOf(String str, int fromIndex)"
    type "method"
    comment "&#10;     * Returns the index within this string of the last occurrence of the&#10;     * specified substring, searching backward starting at the specified index.&#10;     *&#10;     * <p>The returned index is the largest value {@code k} for which:&#10;     * <pre>{@code&#10;     *     k <= Math.min(fromIndex, this.length()) &#38;&#38;&#10;     *                   this.startsWith(str, k)&#10;     * }</pre>&#10;     * If no such value of {@code k} exists, then {@code -1} is returned.&#10;     *&#10;     * @param   str         the substring to search for.&#10;     * @param   fromIndex   the index to start the search from.&#10;     * @return  the index of the last occurrence of the specified substring,&#10;     *          searching backward from the specified index,&#10;     *          or {@code -1} if there is no such occurrence.&#10;     "
  ]
  node [
    id 241
    label "private static int lastIndexOf(String source, String target, int fromIndex)"
    type "method"
    comment "&#10;     * The source is the string being searched, and the target is the string being searched for.&#10;     *&#10;     * @param   source       the characters being searched.&#10;     * @param   target       the characters being searched for.&#10;     * @param   fromIndex    the index to begin searching from.&#10;     "
  ]
  node [
    id 242
    label " static int lastIndexOf(byte[] src, byte srcCoder, int srcCount, String tgtStr, int fromIndex)"
    type "method"
    comment "&#10;     * Code shared by String and AbstractStringBuilder to do searches. The&#10;     * source is the character array being searched, and the target&#10;     * is the string being searched for.&#10;     *&#10;     * @param   src         the characters being searched.&#10;     * @param   srcCoder    coder handles the mapping between bytes/chars&#10;     * @param   srcCount    count of the source string.&#10;     * @param   tgtStr      the characters being searched for.&#10;     * @param   fromIndex   the index to begin searching from.&#10;     "
  ]
  node [
    id 243
    label " static int lastIndexOf(char[] source, int sourceOffset, int sourceCount, char[] target, int targetOffset, int targetCount, int fromIndex)"
    type "method"
    comment "&#10;     * Code shared by String and StringBuffer to do searches. The&#10;     * source is the character array being searched, and the target&#10;     * is the string being searched for.&#10;     *&#10;     * @param   source       the characters being searched.&#10;     * @param   sourceOffset offset of the source string.&#10;     * @param   sourceCount  count of the source string.&#10;     * @param   target       the characters being searched for.&#10;     * @param   targetOffset offset of the target string.&#10;     * @param   targetCount  count of the target string.&#10;     * @param   fromIndex    the index to begin searching from.&#10;     "
  ]
  node [
    id 244
    label "public String substring(int beginIndex)"
    type "method"
    comment "&#10;     * Returns a string that is a substring of this string. The&#10;     * substring begins with the character at the specified index and&#10;     * extends to the end of this string. <p>&#10;     * Examples:&#10;     * <blockquote><pre>&#10;     * &#34;unhappy&#34;.substring(2) returns &#34;happy&#34;&#10;     * &#34;Harbison&#34;.substring(3) returns &#34;bison&#34;&#10;     * &#34;emptiness&#34;.substring(9) returns &#34;&#34; (an empty string)&#10;     * </pre></blockquote>&#10;     *&#10;     * @param      beginIndex   the beginning index, inclusive.&#10;     * @return     the specified substring.&#10;     * @exception  IndexOutOfBoundsException  if&#10;     *             {@code beginIndex} is negative or larger than the&#10;     *             length of this {@code String} object.&#10;     "
  ]
  node [
    id 245
    label "public String substring(int beginIndex, int endIndex)"
    type "method"
    comment "&#10;     * Returns a string that is a substring of this string. The&#10;     * substring begins at the specified {@code beginIndex} and&#10;     * extends to the character at index {@code endIndex - 1}.&#10;     * Thus the length of the substring is {@code endIndex-beginIndex}.&#10;     * <p>&#10;     * Examples:&#10;     * <blockquote><pre>&#10;     * &#34;hamburger&#34;.substring(4, 8) returns &#34;urge&#34;&#10;     * &#34;smiles&#34;.substring(1, 5) returns &#34;mile&#34;&#10;     * </pre></blockquote>&#10;     *&#10;     * @param      beginIndex   the beginning index, inclusive.&#10;     * @param      endIndex     the ending index, exclusive.&#10;     * @return     the specified substring.&#10;     * @exception  IndexOutOfBoundsException  if the&#10;     *             {@code beginIndex} is negative, or&#10;     *             {@code endIndex} is larger than the length of&#10;     *             this {@code String} object, or&#10;     *             {@code beginIndex} is larger than&#10;     *             {@code endIndex}.&#10;     "
  ]
  node [
    id 246
    label "private native String fastSubstring(int start, int length)"
    type "method"
    comment " BEGIN Android-added: Native method to access char storage managed by runtime."
  ]
  node [
    id 247
    label "public CharSequence subSequence(int beginIndex, int endIndex)"
    type "method"
    comment "&#10;     * Returns a character sequence that is a subsequence of this sequence.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     *&#10;     * <blockquote><pre>&#10;     * str.subSequence(begin,&#38;nbsp;end)</pre></blockquote>&#10;     *&#10;     * behaves in exactly the same way as the invocation&#10;     *&#10;     * <blockquote><pre>&#10;     * str.substring(begin,&#38;nbsp;end)</pre></blockquote>&#10;     *&#10;     * @apiNote&#10;     * This method is defined so that the {@code String} class can implement&#10;     * the {@link CharSequence} interface.&#10;     *&#10;     * @param   beginIndex   the begin index, inclusive.&#10;     * @param   endIndex     the end index, exclusive.&#10;     * @return  the specified subsequence.&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          if {@code beginIndex} or {@code endIndex} is negative,&#10;     *          if {@code endIndex} is greater than {@code length()},&#10;     *          or if {@code beginIndex} is greater than {@code endIndex}&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 248
    label "public native String concat(String str)"
    type "method"
    comment "&#10;    public String concat(String str) {&#10;        if (str.isEmpty()) {&#10;            return this;&#10;        }&#10;        if (coder() == str.coder()) {&#10;            byte[] val = this.value;&#10;            byte[] oval = str.value;&#10;            int len = val.length + oval.length;&#10;            byte[] buf = Arrays.copyOf(val, len);&#10;            System.arraycopy(oval, 0, buf, val.length, oval.length);&#10;            return new String(buf, coder);&#10;        }&#10;        int len = length();&#10;        int olen = str.length();&#10;        byte[] buf = StringUTF16.newBytesFor(len + olen);&#10;        getBytes(buf, 0, UTF16);&#10;        str.getBytes(buf, len, UTF16);&#10;        return new String(buf, UTF16);&#10;    }&#10;    "
  ]
  node [
    id 249
    label "public String replace(char oldChar, char newChar)"
    type "method"
    comment "&#10;     * Returns a string resulting from replacing all occurrences of&#10;     * {@code oldChar} in this string with {@code newChar}.&#10;     * <p>&#10;     * If the character {@code oldChar} does not occur in the&#10;     * character sequence represented by this {@code String} object,&#10;     * then a reference to this {@code String} object is returned.&#10;     * Otherwise, a {@code String} object is returned that&#10;     * represents a character sequence identical to the character sequence&#10;     * represented by this {@code String} object, except that every&#10;     * occurrence of {@code oldChar} is replaced by an occurrence&#10;     * of {@code newChar}.&#10;     * <p>&#10;     * Examples:&#10;     * <blockquote><pre>&#10;     * &#34;mesquite in your cellar&#34;.replace('e', 'o')&#10;     *         returns &#34;mosquito in your collar&#34;&#10;     * &#34;the war of baronets&#34;.replace('r', 'y')&#10;     *         returns &#34;the way of bayonets&#34;&#10;     * &#34;sparring with a purple porpoise&#34;.replace('p', 't')&#10;     *         returns &#34;starring with a turtle tortoise&#34;&#10;     * &#34;JonL&#34;.replace('q', 'x') returns &#34;JonL&#34; (no change)&#10;     * </pre></blockquote>&#10;     *&#10;     * @param   oldChar   the old character.&#10;     * @param   newChar   the new character.&#10;     * @return  a string derived from this string by replacing every&#10;     *          occurrence of {@code oldChar} with {@code newChar}.&#10;     "
  ]
  node [
    id 250
    label "private native String doReplace(char oldChar, char newChar)"
    type "method"
    comment " Implementation of replace(char oldChar, char newChar) called when we found a match."
  ]
  node [
    id 251
    label "public boolean matches(String regex)"
    type "method"
    comment "&#10;     * Tells whether or not this string matches the given <a&#10;     * href=&#34;../util/regex/Pattern.html#sum&#34;>regular expression</a>.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <i>str</i>{@code .matches(}<i>regex</i>{@code )} yields exactly the&#10;     * same result as the expression&#10;     *&#10;     * <blockquote>&#10;     * {@link java.util.regex.Pattern}.{@link java.util.regex.Pattern#matches(String,CharSequence)&#10;     * matches(<i>regex</i>, <i>str</i>)}&#10;     * </blockquote>&#10;     *&#10;     * @param   regex&#10;     *          the regular expression to which this string is to be matched&#10;     *&#10;     * @return  {@code true} if, and only if, this string matches the&#10;     *          given regular expression&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          if the regular expression's syntax is invalid&#10;     *&#10;     * @see java.util.regex.Pattern&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 252
    label "java.util.regex.Pattern"
    type "class"
    comment ""
  ]
  node [
    id 253
    label "public static Pattern compile(String regex)"
    type "method"
    comment "&#10;     * Compiles the given regular expression into a pattern.&#10;     *&#10;     * @param  regex&#10;     *         The expression to be compiled&#10;     * @return the given regular expression compiled into a pattern&#10;     * @throws  PatternSyntaxException&#10;     *          If the expression's syntax is invalid&#10;     "
  ]
  node [
    id 254
    label "public static Pattern compile(String regex, int flags)"
    type "method"
    comment "&#10;     * Compiles the given regular expression into a pattern with the given&#10;     * flags.&#10;     *&#10;     * @param  regex&#10;     *         The expression to be compiled&#10;     *&#10;     * @param  flags&#10;     *         Match flags, a bit mask that may include&#10;     *         {@link #CASE_INSENSITIVE}, {@link #MULTILINE}, {@link #DOTALL},&#10;     *         {@link #UNICODE_CASE}, {@link #UNIX_LINES}, {@link #LITERAL},&#10;     *         and {@link #COMMENTS}&#10;     *&#10;     * @return the given regular expression compiled into a pattern with the given flags&#10;     * @throws  IllegalArgumentException&#10;     *          If bit values other than those corresponding to the defined&#10;     *          match flags are set in {@code flags}&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          If the expression's syntax is invalid&#10;     "
  ]
  node [
    id 255
    label "UNIX_LINES"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 256
    label "MULTILINE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 257
    label "LITERAL"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 258
    label "CASE_INSENSITIVE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 259
    label "UNICODE_CASE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 260
    label "DOTALL"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 261
    label "COMMENTS"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 262
    label "public String pattern()"
    type "method"
    comment "&#10;     * Returns the regular expression from which this pattern was compiled.&#10;     *&#10;     * @return  The source of this pattern&#10;     "
  ]
  node [
    id 263
    label "public Matcher matcher(CharSequence input)"
    type "method"
    comment "&#10;     * Creates a matcher that will match the given input against this pattern.&#10;     *&#10;     * @param  input&#10;     *         The character sequence to be matched&#10;     *&#10;     * @return  A new matcher for this pattern&#10;     "
  ]
  node [
    id 264
    label "public int flags()"
    type "method"
    comment "&#10;     * Returns this pattern's match flags.&#10;     *&#10;     * @return  The match flags specified when this pattern was compiled&#10;     "
  ]
  node [
    id 265
    label "public static boolean matches(String regex, CharSequence input)"
    type "method"
    comment "&#10;     * Compiles the given regular expression and attempts to match the given&#10;     * input against it.&#10;     *&#10;     * <p> An invocation of this convenience method of the form&#10;     *&#10;     * <blockquote><pre>&#10;     * Pattern.matches(regex, input);</pre></blockquote>&#10;     *&#10;     * behaves in exactly the same way as the expression&#10;     *&#10;     * <blockquote><pre>&#10;     * Pattern.compile(regex).matcher(input).matches()</pre></blockquote>&#10;     *&#10;     * <p> If a pattern is to be used multiple times, compiling it once and reusing&#10;     * it will be more efficient than invoking this method each time.  </p>&#10;     *&#10;     * @param  regex&#10;     *         The expression to be compiled&#10;     *&#10;     * @param  input&#10;     *         The character sequence to be matched&#10;     * @return whether or not the regular expression matches on the input&#10;     * @throws  PatternSyntaxException&#10;     *          If the expression's syntax is invalid&#10;     "
  ]
  node [
    id 266
    label "public String[] split(CharSequence input, int limit)"
    type "method"
    comment "&#10;     * Splits the given input sequence around matches of this pattern.&#10;     *&#10;     * <p> The array returned by this method contains each substring of the&#10;     * input sequence that is terminated by another subsequence that matches&#10;     * this pattern or is terminated by the end of the input sequence.  The&#10;     * substrings in the array are in the order in which they occur in the&#10;     * input. If this pattern does not match any subsequence of the input then&#10;     * the resulting array has just one element, namely the input sequence in&#10;     * string form.&#10;     *&#10;     * <p> When there is a positive-width match at the beginning of the input&#10;     * sequence then an empty leading substring is included at the beginning&#10;     * of the resulting array. A zero-width match at the beginning however&#10;     * can only produce such an empty leading substring for apps running on or&#10;     * targeting API versions <= 28.&#10;     *&#10;     * <p> The {@code limit} parameter controls the number of times the&#10;     * pattern is applied and therefore affects the length of the resulting&#10;     * array.&#10;     * <ul>&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is positive then the pattern will be applied&#10;     *    at most <i>limit</i>&#38;nbsp;-&#38;nbsp;1 times, the array's length will be&#10;     *    no greater than <i>limit</i>, and the array's last entry will contain&#10;     *    all input beyond the last matched delimiter.</p></li>&#10;     *&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is zero then the pattern will be applied as&#10;     *    many times as possible, the array can have any length, and trailing&#10;     *    empty strings will be discarded.</p></li>&#10;     *&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is negative then the pattern will be applied&#10;     *    as many times as possible and the array can have any length.</p></li>&#10;     * </ul>&#10;     *&#10;     * <p> The input {@code &#34;boo:and:foo&#34;}, for example, yields the following&#10;     * results with these parameters:&#10;     *&#10;     * <table class=&#34;plain&#34; style=&#34;margin-left:2em;&#34;>&#10;     * <caption style=&#34;display:none&#34;>Split example showing regex, limit, and result</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *     <th scope=&#34;col&#34;>Regex</th>&#10;     *     <th scope=&#34;col&#34;>Limit</th>&#10;     *     <th scope=&#34;col&#34;>Result</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr><th scope=&#34;row&#34; rowspan=&#34;3&#34; style=&#34;font-weight:normal&#34;>:</th>&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>2</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and:foo&#34; }}</td></tr>&#10;     * <tr><!-- : -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>5</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><!-- : -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>-2</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><th scope=&#34;row&#34; rowspan=&#34;3&#34; style=&#34;font-weight:normal&#34;>o</th>&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>5</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34;, &#34;&#34;, &#34;&#34; }}</td></tr>&#10;     * <tr><!-- o -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>-2</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34;, &#34;&#34;, &#34;&#34; }}</td></tr>&#10;     * <tr><!-- o -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>0</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34; }}</td></tr>&#10;     * </tbody>&#10;     * </table>&#10;     *&#10;     * @param  input&#10;     *         The character sequence to be split&#10;     *&#10;     * @param  limit&#10;     *         The result threshold, as described above&#10;     *&#10;     * @return  The array of strings computed by splitting the input&#10;     *          around matches of this pattern&#10;     "
  ]
  node [
    id 267
    label "public String[] split(CharSequence input)"
    type "method"
    comment "&#10;     * Splits the given input sequence around matches of this pattern.&#10;     *&#10;     * <p> This method works as if by invoking the two-argument {@link&#10;     * #split(java.lang.CharSequence, int) split} method with the given input&#10;     * sequence and a limit argument of zero.  Trailing empty strings are&#10;     * therefore not included in the resulting array. </p>&#10;     *&#10;     * <p> The input {@code &#34;boo:and:foo&#34;}, for example, yields the following&#10;     * results with these expressions:&#10;     *&#10;     * <table class=&#34;plain&#34; style=&#34;margin-left:2em&#34;>&#10;     * <caption style=&#34;display:none&#34;>Split examples showing regex and result</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *  <th scope=&#34;col&#34;>Regex</th>&#10;     *  <th scope=&#34;col&#34;>Result</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr><th scope=&#34;row&#34; style=&#34;text-weight:normal&#34;>:</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><th scope=&#34;row&#34; style=&#34;text-weight:normal&#34;>o</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34; }}</td></tr>&#10;     * </tbody>&#10;     * </table>&#10;     *&#10;     *&#10;     * @param  input&#10;     *         The character sequence to be split&#10;     *&#10;     * @return  The array of strings computed by splitting the input&#10;     *          around matches of this pattern&#10;     "
  ]
  node [
    id 268
    label "split(java.lang.CharSequence"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 269
    label "public static String quote(String s)"
    type "method"
    comment "&#10;     * Returns a literal pattern {@code String} for the specified&#10;     * {@code String}.&#10;     *&#10;     * <p>This method produces a {@code String} that can be used to&#10;     * create a {@code Pattern} that would match the string&#10;     * {@code s} as if it were a literal pattern.</p> Metacharacters&#10;     * or escape sequences in the input sequence will be given no special&#10;     * meaning.&#10;     *&#10;     * @param  s The string to be literalized&#10;     * @return  A literal string replacement&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 270
    label "private void readObject(java.io.ObjectInputStream s) throws java.io.IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Recompile the Pattern instance from a stream.  The original pattern&#10;     * string is read in and the object tree is recompiled from it.&#10;     "
  ]
  node [
    id 271
    label "private void compile() throws PatternSyntaxException"
    type "method"
    comment " Use native implementation instead of > 3000 lines of helper methods."
  ]
  node [
    id 272
    label "public Predicate<String> asPredicate()"
    type "method"
    comment "&#10;     * Creates a predicate that tests if this pattern is found in a given input&#10;     * string.&#10;     *&#10;     * @apiNote&#10;     * This method creates a predicate that behaves as if it creates a matcher&#10;     * from the input sequence and then calls {@code find}, for example a&#10;     * predicate of the form:&#10;     * <pre>{@code&#10;     *   s -> matcher(s).find();&#10;     * }</pre>&#10;     *&#10;     * @return  The predicate which can be used for finding a match on a&#10;     *          subsequence of a string&#10;     * @since   1.8&#10;     * @see     Matcher#find&#10;     "
  ]
  node [
    id 273
    label "public Predicate<String> asMatchPredicate()"
    type "method"
    comment "&#10;     * Creates a predicate that tests if this pattern matches a given input string.&#10;     *&#10;     * @apiNote&#10;     * This method creates a predicate that behaves as if it creates a matcher&#10;     * from the input sequence and then calls {@code matches}, for example a&#10;     * predicate of the form:&#10;     * <pre>{@code&#10;     *   s -> matcher(s).matches();&#10;     * }</pre>&#10;     *&#10;     * @return  The predicate which can be used for matching an input string&#10;     *          against this pattern.&#10;     * @since   11&#10;     * @see     Matcher#matches&#10;     "
  ]
  node [
    id 274
    label "public Stream<String> splitAsStream(final CharSequence input)"
    type "method"
    comment "&#10;     * Creates a stream from the given input sequence around matches of this&#10;     * pattern.&#10;     *&#10;     * <p> The stream returned by this method contains each substring of the&#10;     * input sequence that is terminated by another subsequence that matches&#10;     * this pattern or is terminated by the end of the input sequence.  The&#10;     * substrings in the stream are in the order in which they occur in the&#10;     * input. Trailing empty strings will be discarded and not encountered in&#10;     * the stream.&#10;     *&#10;     * <p> If this pattern does not match any subsequence of the input then&#10;     * the resulting stream has just one element, namely the input sequence in&#10;     * string form.&#10;     *&#10;     * <p> When there is a positive-width match at the beginning of the input&#10;     * sequence then an empty leading substring is included at the beginning&#10;     * of the stream. A zero-width match at the beginning however never produces&#10;     * such empty leading substring.&#10;     *&#10;     * <p> If the input sequence is mutable, it must remain constant during the&#10;     * execution of the terminal stream operation.  Otherwise, the result of the&#10;     * terminal stream operation is undefined.&#10;     *&#10;     * @param   input&#10;     *          The character sequence to be split&#10;     *&#10;     * @return  The stream of strings computed by splitting the input&#10;     *          around matches of this pattern&#10;     * @see     #split(CharSequence)&#10;     * @since   1.8&#10;     "
  ]
  node [
    id 275
    label "public boolean contains(CharSequence s)"
    type "method"
    comment "&#10;     * Returns true if and only if this string contains the specified&#10;     * sequence of char values.&#10;     *&#10;     * @param s the sequence to search for&#10;     * @return true if this string contains {@code s}, false otherwise&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 276
    label "public String replaceFirst(String regex, String replacement)"
    type "method"
    comment "&#10;     * Replaces the first substring of this string that matches the given <a&#10;     * href=&#34;../util/regex/Pattern.html#sum&#34;>regular expression</a> with the&#10;     * given replacement.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <i>str</i>{@code .replaceFirst(}<i>regex</i>{@code ,} <i>repl</i>{@code )}&#10;     * yields exactly the same result as the expression&#10;     *&#10;     * <blockquote>&#10;     * <code>&#10;     * {@link java.util.regex.Pattern}.{@link&#10;     * java.util.regex.Pattern#compile compile}(<i>regex</i>).{@link&#10;     * java.util.regex.Pattern#matcher(java.lang.CharSequence) matcher}(<i>str</i>).{@link&#10;     * java.util.regex.Matcher#replaceFirst replaceFirst}(<i>repl</i>)&#10;     * </code>&#10;     * </blockquote>&#10;     *&#10;     *<p>&#10;     * Note that backslashes ({@code \}) and dollar signs ({@code $}) in the&#10;     * replacement string may cause the results to be different than if it were&#10;     * being treated as a literal replacement string; see&#10;     * {@link java.util.regex.Matcher#replaceFirst}.&#10;     * Use {@link java.util.regex.Matcher#quoteReplacement} to suppress the special&#10;     * meaning of these characters, if desired.&#10;     *&#10;     * @param   regex&#10;     *          the regular expression to which this string is to be matched&#10;     * @param   replacement&#10;     *          the string to be substituted for the first match&#10;     *&#10;     * @return  The resulting {@code String}&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          if the regular expression's syntax is invalid&#10;     *&#10;     * @see java.util.regex.Pattern&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 277
    label "replaceFirst"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 278
    label "java.util.regex.Matcher"
    type "class"
    comment ""
  ]
  node [
    id 279
    label "public Pattern pattern()"
    type "method"
    comment "&#10;     * Returns the pattern that is interpreted by this matcher.&#10;     *&#10;     * @return  The pattern for which this matcher was created&#10;     "
  ]
  node [
    id 280
    label "public MatchResult toMatchResult()"
    type "method"
    comment "&#10;     * Returns the match state of this matcher as a {@link MatchResult}.&#10;     * The result is unaffected by subsequent operations performed upon this&#10;     * matcher.&#10;     *&#10;     * @return  a {@code MatchResult} with the state of this matcher&#10;     * @throws IllegalStateException if no match is found.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 281
    label "java.util.regex.MatchResult"
    type "class"
    comment "&#10; * The result of a match operation.&#10; *&#10; * <p>This interface contains query methods used to determine the&#10; * results of a match against a regular expression. The match boundaries,&#10; * groups and group boundaries can be seen but not modified through&#10; * a {@code MatchResult}.&#10; *&#10; * @author  Michael McCloskey&#10; * @see Matcher&#10; * @since 1.5&#10; "
  ]
  node [
    id 282
    label "public int start()"
    type "method"
    comment "&#10;     * Returns the start index of the previous match.&#10;     *&#10;     * @return  The index of the first character matched&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     "
  ]
  node [
    id 283
    label "public int start(int group)"
    type "method"
    comment "&#10;     * Returns the start index of the subsequence captured by the given group&#10;     * during the previous match operation.&#10;     *&#10;     * <p> <a href=&#34;Pattern.html#cg&#34;>Capturing groups</a> are indexed from left&#10;     * to right, starting at one.  Group zero denotes the entire pattern, so&#10;     * the expression <i>m.</i>{@code start(0)} is equivalent to&#10;     * <i>m.</i>{@code start()}.  </p>&#10;     *&#10;     * @param  group&#10;     *         The index of a capturing group in this matcher's pattern&#10;     *&#10;     * @return  The index of the first character captured by the group,&#10;     *          or {@code -1} if the match was successful but the group&#10;     *          itself did not match anything&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given index&#10;     "
  ]
  node [
    id 284
    label "public int end()"
    type "method"
    comment "&#10;     * Returns the offset after the last character matched.&#10;     *&#10;     * @return  The offset after the last character matched&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     "
  ]
  node [
    id 285
    label "public int end(int group)"
    type "method"
    comment "&#10;     * Returns the offset after the last character of the subsequence&#10;     * captured by the given group during the previous match operation.&#10;     *&#10;     * <p> <a href=&#34;Pattern.html#cg&#34;>Capturing groups</a> are indexed from left&#10;     * to right, starting at one.  Group zero denotes the entire pattern, so&#10;     * the expression <i>m.</i>{@code end(0)} is equivalent to&#10;     * <i>m.</i>{@code end()}.  </p>&#10;     *&#10;     * @param  group&#10;     *         The index of a capturing group in this matcher's pattern&#10;     *&#10;     * @return  The offset after the last character captured by the group,&#10;     *          or {@code -1} if the match was successful&#10;     *          but the group itself did not match anything&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given index&#10;     "
  ]
  node [
    id 286
    label "public String group()"
    type "method"
    comment "&#10;     * Returns the input subsequence matched by the previous match.&#10;     *&#10;     * <p> For a matcher <i>m</i> with input sequence <i>s</i>,&#10;     * the expressions <i>m.</i>{@code group()} and&#10;     * <i>s.</i>{@code substring(}<i>m.</i>{@code start(),}&#38;nbsp;<i>m.</i>&#10;     * {@code end())} are equivalent.  </p>&#10;     *&#10;     * <p> Note that some patterns, for example {@code a*}, match the empty&#10;     * string.  This method will return the empty string when the pattern&#10;     * successfully matches the empty string in the input.  </p>&#10;     *&#10;     * @return The (possibly empty) subsequence matched by the previous match,&#10;     *         in string form&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     "
  ]
  node [
    id 287
    label "public String group(int group)"
    type "method"
    comment "&#10;     * Returns the input subsequence captured by the given group during the&#10;     * previous match operation.&#10;     *&#10;     * <p> For a matcher <i>m</i>, input sequence <i>s</i>, and group index&#10;     * <i>g</i>, the expressions <i>m.</i>{@code group(}<i>g</i>{@code )} and&#10;     * <i>s.</i>{@code substring(}<i>m.</i>{@code start(}<i>g</i>{@code&#10;     * ),}&#38;nbsp;<i>m.</i>{@code end(}<i>g</i>{@code ))}&#10;     * are equivalent.  </p>&#10;     *&#10;     * <p> <a href=&#34;Pattern.html#cg&#34;>Capturing groups</a> are indexed from left&#10;     * to right, starting at one.  Group zero denotes the entire pattern, so&#10;     * the expression {@code m.group(0)} is equivalent to {@code m.group()}.&#10;     * </p>&#10;     *&#10;     * <p> If the match was successful but the group specified failed to match&#10;     * any part of the input sequence, then {@code null} is returned. Note&#10;     * that some groups, for example {@code (a*)}, match the empty string.&#10;     * This method will return the empty string when such a group successfully&#10;     * matches the empty string in the input.  </p>&#10;     *&#10;     * @param  group&#10;     *         The index of a capturing group in this matcher's pattern&#10;     *&#10;     * @return  The (possibly empty) subsequence captured by the group&#10;     *          during the previous match, or {@code null} if the group&#10;     *          failed to match part of the input&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given index&#10;     "
  ]
  node [
    id 288
    label "public int groupCount()"
    type "method"
    comment "&#10;     * Returns the number of capturing groups in this matcher's pattern.&#10;     *&#10;     * <p> Group zero denotes the entire pattern by convention. It is not&#10;     * included in this count.&#10;     *&#10;     * <p> Any non-negative integer smaller than or equal to the value&#10;     * returned by this method is guaranteed to be a valid group index for&#10;     * this matcher.  </p>&#10;     *&#10;     * @return The number of capturing groups in this matcher's pattern&#10;     "
  ]
  node [
    id 289
    label "public Matcher usePattern(Pattern newPattern)"
    type "method"
    comment "&#10;     * Changes the {@code Pattern} that this {@code Matcher} uses to&#10;     * find matches with.&#10;     *&#10;     * <p> This method causes this matcher to lose information&#10;     * about the groups of the last match that occurred. The&#10;     * matcher's position in the input is maintained and its&#10;     * last append position is unaffected.</p>&#10;     *&#10;     * @param  newPattern&#10;     *         The new pattern used by this matcher&#10;     * @return  This matcher&#10;     * @throws  IllegalArgumentException&#10;     *          If newPattern is {@code null}&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 290
    label "public Matcher reset()"
    type "method"
    comment "&#10;     * Resets this matcher.&#10;     *&#10;     * <p> Resetting a matcher discards all of its explicit state information&#10;     * and sets its append position to zero. The matcher's region is set to the&#10;     * default region, which is its entire character sequence. The anchoring&#10;     * and transparency of this matcher's region boundaries are unaffected.&#10;     *&#10;     * @return  This matcher&#10;     "
  ]
  node [
    id 291
    label "public Matcher reset(CharSequence input)"
    type "method"
    comment "&#10;     * Resets this matcher with a new input sequence.&#10;     *&#10;     * <p> Resetting a matcher discards all of its explicit state information&#10;     * and sets its append position to zero.  The matcher's region is set to&#10;     * the default region, which is its entire character sequence.  The&#10;     * anchoring and transparency of this matcher's region boundaries are&#10;     * unaffected.&#10;     *&#10;     * @param  input&#10;     *         The new input character sequence&#10;     *&#10;     * @return  This matcher&#10;     "
  ]
  node [
    id 292
    label "public int start(String name)"
    type "method"
    comment "&#10;     * Returns the start index of the subsequence captured by the given&#10;     * <a href=&#34;Pattern.html#groupname&#34;>named-capturing group</a> during the&#10;     * previous match operation.&#10;     *&#10;     * @param  name&#10;     *         The name of a named-capturing group in this matcher's pattern&#10;     *&#10;     * @return  The index of the first character captured by the group,&#10;     *          or {@code -1} if the match was successful but the group&#10;     *          itself did not match anything&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given name&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 293
    label "public int end(String name)"
    type "method"
    comment "&#10;     * Returns the offset after the last character of the subsequence&#10;     * captured by the given <a href=&#34;Pattern.html#groupname&#34;>named-capturing&#10;     * group</a> during the previous match operation.&#10;     *&#10;     * @param  name&#10;     *         The name of a named-capturing group in this matcher's pattern&#10;     *&#10;     * @return  The offset after the last character captured by the group,&#10;     *          or {@code -1} if the match was successful&#10;     *          but the group itself did not match anything&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given name&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 294
    label "public String group(String name)"
    type "method"
    comment "&#10;     * Returns the input subsequence captured by the given&#10;     * <a href=&#34;Pattern.html#groupname&#34;>named-capturing group</a> during the&#10;     * previous match operation.&#10;     *&#10;     * <p> If the match was successful but the group specified failed to match&#10;     * any part of the input sequence, then {@code null} is returned. Note&#10;     * that some groups, for example {@code (a*)}, match the empty string.&#10;     * This method will return the empty string when such a group successfully&#10;     * matches the empty string in the input.  </p>&#10;     *&#10;     * @param  name&#10;     *         The name of a named-capturing group in this matcher's pattern&#10;     *&#10;     * @return  The (possibly empty) subsequence captured by the named group&#10;     *          during the previous match, or {@code null} if the group&#10;     *          failed to match part of the input&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If there is no capturing group in the pattern&#10;     *          with the given name&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 295
    label "public boolean matches()"
    type "method"
    comment "&#10;     * Attempts to match the entire region against the pattern.&#10;     *&#10;     * <p> If the match succeeds then more information can be obtained via the&#10;     * {@code start}, {@code end}, and {@code group} methods.  </p>&#10;     *&#10;     * @return  {@code true} if, and only if, the entire region sequence&#10;     *          matches this matcher's pattern&#10;     "
  ]
  node [
    id 296
    label "public boolean find()"
    type "method"
    comment "&#10;     * Attempts to find the next subsequence of the input sequence that matches&#10;     * the pattern.&#10;     *&#10;     * <p> This method starts at the beginning of this matcher's region, or, if&#10;     * a previous invocation of the method was successful and the matcher has&#10;     * not since been reset, at the first character not matched by the previous&#10;     * match.&#10;     *&#10;     * <p> If the match succeeds then more information can be obtained via the&#10;     * {@code start}, {@code end}, and {@code group} methods.  </p>&#10;     *&#10;     * @return  {@code true} if, and only if, a subsequence of the input&#10;     *          sequence matches this matcher's pattern&#10;     "
  ]
  node [
    id 297
    label "public boolean find(int start)"
    type "method"
    comment "&#10;     * Resets this matcher and then attempts to find the next subsequence of&#10;     * the input sequence that matches the pattern, starting at the specified&#10;     * index.&#10;     *&#10;     * <p> If the match succeeds then more information can be obtained via the&#10;     * {@code start}, {@code end}, and {@code group} methods, and subsequent&#10;     * invocations of the {@link #find()} method will start at the first&#10;     * character not matched by this match.  </p>&#10;     *&#10;     * @param start the index to start searching for a match&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If start is less than zero or if start is greater than the&#10;     *          length of the input sequence.&#10;     *&#10;     * @return  {@code true} if, and only if, a subsequence of the input&#10;     *          sequence starting at the given index matches this matcher's&#10;     *          pattern&#10;     "
  ]
  node [
    id 298
    label "find()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 299
    label "public boolean lookingAt()"
    type "method"
    comment "&#10;     * Attempts to match the input sequence, starting at the beginning of the&#10;     * region, against the pattern.&#10;     *&#10;     * <p> Like the {@link #matches matches} method, this method always starts&#10;     * at the beginning of the region; unlike that method, it does not&#10;     * require that the entire region be matched.&#10;     *&#10;     * <p> If the match succeeds then more information can be obtained via the&#10;     * {@code start}, {@code end}, and {@code group} methods.  </p>&#10;     *&#10;     * @return  {@code true} if, and only if, a prefix of the input&#10;     *          sequence matches this matcher's pattern&#10;     "
  ]
  node [
    id 300
    label "matches"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 301
    label "public static String quoteReplacement(String s)"
    type "method"
    comment "&#10;     * Returns a literal replacement {@code String} for the specified&#10;     * {@code String}.&#10;     *&#10;     * This method produces a {@code String} that will work&#10;     * as a literal replacement {@code s} in the&#10;     * {@code appendReplacement} method of the {@link Matcher} class.&#10;     * The {@code String} produced will match the sequence of characters&#10;     * in {@code s} treated as a literal sequence. Slashes ('\') and&#10;     * dollar signs ('$') will be given no special meaning.&#10;     *&#10;     * @param  s The string to be literalized&#10;     * @return  A literal string replacement&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 302
    label "public Matcher appendReplacement(StringBuffer sb, String replacement)"
    type "method"
    comment "&#10;     * Implements a non-terminal append-and-replace step.&#10;     *&#10;     * <p> This method performs the following actions: </p>&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> It reads characters from the input sequence, starting at the&#10;     *   append position, and appends them to the given string buffer.  It&#10;     *   stops after reading the last character preceding the previous match,&#10;     *   that is, the character at index {@link&#10;     *   #start()}&#38;nbsp;{@code -}&#38;nbsp;{@code 1}.  </p></li>&#10;     *&#10;     *   <li><p> It appends the given replacement string to the string buffer.&#10;     *   </p></li>&#10;     *&#10;     *   <li><p> It sets the append position of this matcher to the index of&#10;     *   the last character matched, plus one, that is, to {@link #end()}.&#10;     *   </p></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * <p> The replacement string may contain references to subsequences&#10;     * captured during the previous match: Each occurrence of&#10;     * <code>${</code><i>name</i><code>}</code> or {@code $}<i>g</i>&#10;     * will be replaced by the result of evaluating the corresponding&#10;     * {@link #group(String) group(name)} or {@link #group(int) group(g)}&#10;     * respectively. For {@code $}<i>g</i>,&#10;     * the first number after the {@code $} is always treated as part of&#10;     * the group reference. Subsequent numbers are incorporated into g if&#10;     * they would form a legal group reference. Only the numerals '0'&#10;     * through '9' are considered as potential components of the group&#10;     * reference. If the second group matched the string {@code &#34;foo&#34;}, for&#10;     * example, then passing the replacement string {@code &#34;$2bar&#34;} would&#10;     * cause {@code &#34;foobar&#34;} to be appended to the string buffer. A dollar&#10;     * sign ({@code $}) may be included as a literal in the replacement&#10;     * string by preceding it with a backslash ({@code \$}).&#10;     *&#10;     * <p> Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * the replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> This method is intended to be used in a loop together with the&#10;     * {@link #appendTail(StringBuffer) appendTail} and {@link #find() find}&#10;     * methods.  The following code, for example, writes {@code one dog two dogs&#10;     * in the yard} to the standard-output stream: </p>&#10;     *&#10;     * <blockquote><pre>&#10;     * Pattern p = Pattern.compile(&#34;cat&#34;);&#10;     * Matcher m = p.matcher(&#34;one cat two cats in the yard&#34;);&#10;     * StringBuffer sb = new StringBuffer();&#10;     * while (m.find()) {&#10;     *     m.appendReplacement(sb, &#34;dog&#34;);&#10;     * }&#10;     * m.appendTail(sb);&#10;     * System.out.println(sb.toString());</pre></blockquote>&#10;     *&#10;     * @param  sb&#10;     *         The target string buffer&#10;     *&#10;     * @param  replacement&#10;     *         The replacement string&#10;     *&#10;     * @return  This matcher&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the replacement string refers to a named-capturing&#10;     *          group that does not exist in the pattern&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the replacement string refers to a capturing group&#10;     *          that does not exist in the pattern&#10;     "
  ]
  node [
    id 303
    label "group(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 304
    label "start()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 305
    label "end()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 306
    label "appendTail(StringBuffer)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 307
    label "group(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 308
    label "public Matcher appendReplacement(StringBuilder sb, String replacement)"
    type "method"
    comment "&#10;     * Implements a non-terminal append-and-replace step.&#10;     *&#10;     * <p> This method performs the following actions: </p>&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> It reads characters from the input sequence, starting at the&#10;     *   append position, and appends them to the given string builder.  It&#10;     *   stops after reading the last character preceding the previous match,&#10;     *   that is, the character at index {@link&#10;     *   #start()}&#38;nbsp;{@code -}&#38;nbsp;{@code 1}.  </p></li>&#10;     *&#10;     *   <li><p> It appends the given replacement string to the string builder.&#10;     *   </p></li>&#10;     *&#10;     *   <li><p> It sets the append position of this matcher to the index of&#10;     *   the last character matched, plus one, that is, to {@link #end()}.&#10;     *   </p></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * <p> The replacement string may contain references to subsequences&#10;     * captured during the previous match: Each occurrence of&#10;     * {@code $}<i>g</i> will be replaced by the result of&#10;     * evaluating {@link #group(int) group}{@code (}<i>g</i>{@code )}.&#10;     * The first number after the {@code $} is always treated as part of&#10;     * the group reference. Subsequent numbers are incorporated into g if&#10;     * they would form a legal group reference. Only the numerals '0'&#10;     * through '9' are considered as potential components of the group&#10;     * reference. If the second group matched the string {@code &#34;foo&#34;}, for&#10;     * example, then passing the replacement string {@code &#34;$2bar&#34;} would&#10;     * cause {@code &#34;foobar&#34;} to be appended to the string builder. A dollar&#10;     * sign ({@code $}) may be included as a literal in the replacement&#10;     * string by preceding it with a backslash ({@code \$}).&#10;     *&#10;     * <p> Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * the replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> This method is intended to be used in a loop together with the&#10;     * {@link #appendTail(StringBuilder) appendTail} and&#10;     * {@link #find() find} methods. The following code, for example, writes&#10;     * {@code one dog two dogs in the yard} to the standard-output stream: </p>&#10;     *&#10;     * <blockquote><pre>&#10;     * Pattern p = Pattern.compile(&#34;cat&#34;);&#10;     * Matcher m = p.matcher(&#34;one cat two cats in the yard&#34;);&#10;     * StringBuilder sb = new StringBuilder();&#10;     * while (m.find()) {&#10;     *     m.appendReplacement(sb, &#34;dog&#34;);&#10;     * }&#10;     * m.appendTail(sb);&#10;     * System.out.println(sb.toString());</pre></blockquote>&#10;     *&#10;     * @param  sb&#10;     *         The target string builder&#10;     * @param  replacement&#10;     *         The replacement string&#10;     * @return  This matcher&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          If no match has yet been attempted,&#10;     *          or if the previous match operation failed&#10;     * @throws  IllegalArgumentException&#10;     *          If the replacement string refers to a named-capturing&#10;     *          group that does not exist in the pattern&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the replacement string refers to a capturing group&#10;     *          that does not exist in the pattern&#10;     * @since 9&#10;     "
  ]
  node [
    id 309
    label "appendTail(StringBuilder)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 310
    label "public StringBuffer appendTail(StringBuffer sb)"
    type "method"
    comment "&#10;     * Implements a terminal append-and-replace step.&#10;     *&#10;     * <p> This method reads characters from the input sequence, starting at&#10;     * the append position, and appends them to the given string buffer.  It is&#10;     * intended to be invoked after one or more invocations of the {@link&#10;     * #appendReplacement(StringBuffer, String) appendReplacement} method in&#10;     * order to copy the remainder of the input sequence.  </p>&#10;     *&#10;     * @param  sb&#10;     *         The target string buffer&#10;     *&#10;     * @return  The target string buffer&#10;     "
  ]
  node [
    id 311
    label "appendReplacement(StringBuffer"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 312
    label "public StringBuilder appendTail(StringBuilder sb)"
    type "method"
    comment "&#10;     * Implements a terminal append-and-replace step.&#10;     *&#10;     * <p> This method reads characters from the input sequence, starting at&#10;     * the append position, and appends them to the given string builder.  It is&#10;     * intended to be invoked after one or more invocations of the {@link&#10;     * #appendReplacement(StringBuilder, String)&#10;     * appendReplacement} method in order to copy the remainder of the input&#10;     * sequence.  </p>&#10;     *&#10;     * @param  sb&#10;     *         The target string builder&#10;     *&#10;     * @return  The target string builder&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 313
    label "appendReplacement(StringBuilder"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 314
    label "public String replaceAll(String replacement)"
    type "method"
    comment "&#10;     * Replaces every subsequence of the input sequence that matches the&#10;     * pattern with the given replacement string.&#10;     *&#10;     * <p> This method first resets this matcher.  It then scans the input&#10;     * sequence looking for matches of the pattern.  Characters that are not&#10;     * part of any match are appended directly to the result string; each match&#10;     * is replaced in the result by the replacement string.  The replacement&#10;     * string may contain references to captured subsequences as in the {@link&#10;     * #appendReplacement appendReplacement} method.&#10;     *&#10;     * <p> Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * the replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> Given the regular expression {@code a*b}, the input&#10;     * {@code &#34;aabfooaabfooabfoob&#34;}, and the replacement string&#10;     * {@code &#34;-&#34;}, an invocation of this method on a matcher for that&#10;     * expression would yield the string {@code &#34;-foo-foo-foo-&#34;}.&#10;     *&#10;     * <p> Invoking this method changes this matcher's state.  If the matcher&#10;     * is to be used in further matching operations then it should first be&#10;     * reset.  </p>&#10;     *&#10;     * @param  replacement&#10;     *         The replacement string&#10;     *&#10;     * @return  The string constructed by replacing each matching subsequence&#10;     *          by the replacement string, substituting captured subsequences&#10;     *          as needed&#10;     "
  ]
  node [
    id 315
    label "appendReplacement"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 316
    label "public String replaceAll(Function<MatchResult, String> replacer)"
    type "method"
    comment "&#10;     * Replaces every subsequence of the input sequence that matches the&#10;     * pattern with the result of applying the given replacer function to the&#10;     * match result of this matcher corresponding to that subsequence.&#10;     * Exceptions thrown by the function are relayed to the caller.&#10;     *&#10;     * <p> This method first resets this matcher.  It then scans the input&#10;     * sequence looking for matches of the pattern.  Characters that are not&#10;     * part of any match are appended directly to the result string; each match&#10;     * is replaced in the result by the applying the replacer function that&#10;     * returns a replacement string.  Each replacement string may contain&#10;     * references to captured subsequences as in the {@link #appendReplacement&#10;     * appendReplacement} method.&#10;     *&#10;     * <p> Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * a replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> Given the regular expression {@code dog}, the input&#10;     * {@code &#34;zzzdogzzzdogzzz&#34;}, and the function&#10;     * {@code mr -> mr.group().toUpperCase()}, an invocation of this method on&#10;     * a matcher for that expression would yield the string&#10;     * {@code &#34;zzzDOGzzzDOGzzz&#34;}.&#10;     *&#10;     * <p> Invoking this method changes this matcher's state.  If the matcher&#10;     * is to be used in further matching operations then it should first be&#10;     * reset.  </p>&#10;     *&#10;     * <p> The replacer function should not modify this matcher's state during&#10;     * replacement.  This method will, on a best-effort basis, throw a&#10;     * {@link java.util.ConcurrentModificationException} if such modification is&#10;     * detected.&#10;     *&#10;     * <p> The state of each match result passed to the replacer function is&#10;     * guaranteed to be constant only for the duration of the replacer function&#10;     * call and only if the replacer function does not modify this matcher's&#10;     * state.&#10;     *&#10;     * @implNote&#10;     * This implementation applies the replacer function to this matcher, which&#10;     * is an instance of {@code MatchResult}.&#10;     *&#10;     * @param  replacer&#10;     *         The function to be applied to the match result of this matcher&#10;     *         that returns a replacement string.&#10;     * @return  The string constructed by replacing each matching subsequence&#10;     *          with the result of applying the replacer function to that&#10;     *          matched subsequence, substituting captured subsequences as&#10;     *          needed.&#10;     * @throws NullPointerException if the replacer function is null&#10;     * @throws ConcurrentModificationException if it is detected, on a&#10;     *         best-effort basis, that the replacer function modified this&#10;     *         matcher's state&#10;     * @since 9&#10;     "
  ]
  node [
    id 317
    label "appendReplacementappendReplacement"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 318
    label "java.util.ConcurrentModificationException"
    type "class"
    comment "&#10; * This exception may be thrown by methods that have detected concurrent&#10; * modification of an object when such modification is not permissible.&#10; * <p>&#10; * For example, it is not generally permissible for one thread to modify a Collection&#10; * while another thread is iterating over it.  In general, the results of the&#10; * iteration are undefined under these circumstances.  Some Iterator&#10; * implementations (including those of all the general purpose collection implementations&#10; * provided by the JRE) may choose to throw this exception if this behavior is&#10; * detected.  Iterators that do this are known as <i>fail-fast</i> iterators,&#10; * as they fail quickly and cleanly, rather that risking arbitrary,&#10; * non-deterministic behavior at an undetermined time in the future.&#10; * <p>&#10; * Note that this exception does not always indicate that an object has&#10; * been concurrently modified by a <i>different</i> thread.  If a single&#10; * thread issues a sequence of method invocations that violates the&#10; * contract of an object, the object may throw this exception.  For&#10; * example, if a thread modifies a collection directly while it is&#10; * iterating over the collection with a fail-fast iterator, the iterator&#10; * will throw this exception.&#10; *&#10; * <p>Note that fail-fast behavior cannot be guaranteed as it is, generally&#10; * speaking, impossible to make any hard guarantees in the presence of&#10; * unsynchronized concurrent modification.  Fail-fast operations&#10; * throw {@code ConcurrentModificationException} on a best-effort basis.&#10; * Therefore, it would be wrong to write a program that depended on this&#10; * exception for its correctness: <i>{@code ConcurrentModificationException}&#10; * should be used only to detect bugs.</i>&#10; *&#10; * @author  Josh Bloch&#10; * @see     Collection&#10; * @see     Iterator&#10; * @see     Spliterator&#10; * @see     ListIterator&#10; * @see     Vector&#10; * @see     LinkedList&#10; * @see     HashSet&#10; * @see     Hashtable&#10; * @see     TreeMap&#10; * @see     AbstractList&#10; * @since   1.2&#10; "
  ]
  node [
    id 319
    label "public Stream<MatchResult> results()"
    type "method"
    comment "&#10;     * Returns a stream of match results for each subsequence of the input&#10;     * sequence that matches the pattern.  The match results occur in the&#10;     * same order as the matching subsequences in the input sequence.&#10;     *&#10;     * <p> Each match result is produced as if by {@link #toMatchResult()}.&#10;     *&#10;     * <p> This method does not reset this matcher.  Matching starts on&#10;     * initiation of the terminal stream operation either at the beginning of&#10;     * this matcher's region, or, if the matcher has not since been reset, at&#10;     * the first character not matched by a previous match.&#10;     *&#10;     * <p> If the matcher is to be used for further matching operations after&#10;     * the terminal stream operation completes then it should be first reset.&#10;     *&#10;     * <p> This matcher's state should not be modified during execution of the&#10;     * returned stream's pipeline.  The returned stream's source&#10;     * {@code Spliterator} is <em>fail-fast</em> and will, on a best-effort&#10;     * basis, throw a {@link java.util.ConcurrentModificationException} if such&#10;     * modification is detected.&#10;     *&#10;     * @return a sequential stream of match results.&#10;     * @since 9&#10;     "
  ]
  node [
    id 320
    label "toMatchResult()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 321
    label "public String replaceFirst(String replacement)"
    type "method"
    comment "&#10;     * Replaces the first subsequence of the input sequence that matches the&#10;     * pattern with the given replacement string.&#10;     *&#10;     * <p> This method first resets this matcher.  It then scans the input&#10;     * sequence looking for a match of the pattern.  Characters that are not&#10;     * part of the match are appended directly to the result string; the match&#10;     * is replaced in the result by the replacement string.  The replacement&#10;     * string may contain references to captured subsequences as in the {@link&#10;     * #appendReplacement appendReplacement} method.&#10;     *&#10;     * <p>Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * the replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> Given the regular expression {@code dog}, the input&#10;     * {@code &#34;zzzdogzzzdogzzz&#34;}, and the replacement string&#10;     * {@code &#34;cat&#34;}, an invocation of this method on a matcher for that&#10;     * expression would yield the string {@code &#34;zzzcatzzzdogzzz&#34;}.  </p>&#10;     *&#10;     * <p> Invoking this method changes this matcher's state.  If the matcher&#10;     * is to be used in further matching operations then it should first be&#10;     * reset.  </p>&#10;     *&#10;     * @param  replacement&#10;     *         The replacement string&#10;     * @return  The string constructed by replacing the first matching&#10;     *          subsequence by the replacement string, substituting captured&#10;     *          subsequences as needed&#10;     "
  ]
  node [
    id 322
    label "public String replaceFirst(Function<MatchResult, String> replacer)"
    type "method"
    comment "&#10;     * Replaces the first subsequence of the input sequence that matches the&#10;     * pattern with the result of applying the given replacer function to the&#10;     * match result of this matcher corresponding to that subsequence.&#10;     * Exceptions thrown by the replace function are relayed to the caller.&#10;     *&#10;     * <p> This method first resets this matcher.  It then scans the input&#10;     * sequence looking for a match of the pattern.  Characters that are not&#10;     * part of the match are appended directly to the result string; the match&#10;     * is replaced in the result by the applying the replacer function that&#10;     * returns a replacement string.  The replacement string may contain&#10;     * references to captured subsequences as in the {@link #appendReplacement&#10;     * appendReplacement} method.&#10;     *&#10;     * <p>Note that backslashes ({@code \}) and dollar signs ({@code $}) in&#10;     * the replacement string may cause the results to be different than if it&#10;     * were being treated as a literal replacement string. Dollar signs may be&#10;     * treated as references to captured subsequences as described above, and&#10;     * backslashes are used to escape literal characters in the replacement&#10;     * string.&#10;     *&#10;     * <p> Given the regular expression {@code dog}, the input&#10;     * {@code &#34;zzzdogzzzdogzzz&#34;}, and the function&#10;     * {@code mr -> mr.group().toUpperCase()}, an invocation of this method on&#10;     * a matcher for that expression would yield the string&#10;     * {@code &#34;zzzDOGzzzdogzzz&#34;}.&#10;     *&#10;     * <p> Invoking this method changes this matcher's state.  If the matcher&#10;     * is to be used in further matching operations then it should first be&#10;     * reset.&#10;     *&#10;     * <p> The replacer function should not modify this matcher's state during&#10;     * replacement.  This method will, on a best-effort basis, throw a&#10;     * {@link java.util.ConcurrentModificationException} if such modification is&#10;     * detected.&#10;     *&#10;     * <p> The state of the match result passed to the replacer function is&#10;     * guaranteed to be constant only for the duration of the replacer function&#10;     * call and only if the replacer function does not modify this matcher's&#10;     * state.&#10;     *&#10;     * @implNote&#10;     * This implementation applies the replacer function to this matcher, which&#10;     * is an instance of {@code MatchResult}.&#10;     *&#10;     * @param  replacer&#10;     *         The function to be applied to the match result of this matcher&#10;     *         that returns a replacement string.&#10;     * @return  The string constructed by replacing the first matching&#10;     *          subsequence with the result of applying the replacer function to&#10;     *          the matched subsequence, substituting captured subsequences as&#10;     *          needed.&#10;     * @throws NullPointerException if the replacer function is null&#10;     * @throws ConcurrentModificationException if it is detected, on a&#10;     *         best-effort basis, that the replacer function modified this&#10;     *         matcher's state&#10;     * @since 9&#10;     "
  ]
  node [
    id 323
    label "public Matcher region(int start, int end)"
    type "method"
    comment "&#10;     * Sets the limits of this matcher's region. The region is the part of the&#10;     * input sequence that will be searched to find a match. Invoking this&#10;     * method resets the matcher, and then sets the region to start at the&#10;     * index specified by the {@code start} parameter and end at the&#10;     * index specified by the {@code end} parameter.&#10;     *&#10;     * <p>Depending on the transparency and anchoring being used (see&#10;     * {@link #useTransparentBounds(boolean) useTransparentBounds} and&#10;     * {@link #useAnchoringBounds(boolean) useAnchoringBounds}), certain&#10;     * constructs such as anchors may behave differently at or around the&#10;     * boundaries of the region.&#10;     *&#10;     * @param  start&#10;     *         The index to start searching at (inclusive)&#10;     * @param  end&#10;     *         The index to end searching at (exclusive)&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If start or end is less than zero, if&#10;     *          start is greater than the length of the input sequence, if&#10;     *          end is greater than the length of the input sequence, or if&#10;     *          start is greater than end.&#10;     * @return  this matcher&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 324
    label "useTransparentBounds(boolean)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 325
    label "useAnchoringBounds(boolean)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 326
    label "public int regionStart()"
    type "method"
    comment "&#10;     * Reports the start index of this matcher's region. The&#10;     * searches this matcher conducts are limited to finding matches&#10;     * within {@link #regionStart() regionStart} (inclusive) and&#10;     * {@link #regionEnd() regionEnd} (exclusive).&#10;     *&#10;     * @return  The starting point of this matcher's region&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 327
    label "regionEnd()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 328
    label "regionStart()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 329
    label "public int regionEnd()"
    type "method"
    comment "&#10;     * Reports the end index (exclusive) of this matcher's region.&#10;     * The searches this matcher conducts are limited to finding matches&#10;     * within {@link #regionStart() regionStart} (inclusive) and&#10;     * {@link #regionEnd() regionEnd} (exclusive).&#10;     *&#10;     * @return  the ending point of this matcher's region&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 330
    label "public boolean hasTransparentBounds()"
    type "method"
    comment "&#10;     * Queries the transparency of region bounds for this matcher.&#10;     *&#10;     * <p> This method returns {@code true} if this matcher uses&#10;     * <i>transparent</i> bounds, {@code false} if it uses <i>opaque</i>&#10;     * bounds.&#10;     *&#10;     * <p> See {@link #useTransparentBounds(boolean) useTransparentBounds} for a&#10;     * description of transparent and opaque bounds.&#10;     *&#10;     * <p> By default, a matcher uses opaque region boundaries.&#10;     *&#10;     * @return {@code true} iff this matcher is using transparent bounds,&#10;     *         {@code false} otherwise.&#10;     * @see java.util.regex.Matcher#useTransparentBounds(boolean)&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 331
    label "public Matcher useTransparentBounds(boolean b)"
    type "method"
    comment "&#10;     * Sets the transparency of region bounds for this matcher.&#10;     *&#10;     * <p> Invoking this method with an argument of {@code true} will set this&#10;     * matcher to use <i>transparent</i> bounds. If the boolean&#10;     * argument is {@code false}, then <i>opaque</i> bounds will be used.&#10;     *&#10;     * <p> Using transparent bounds, the boundaries of this&#10;     * matcher's region are transparent to lookahead, lookbehind,&#10;     * and boundary matching constructs. Those constructs can see beyond the&#10;     * boundaries of the region to see if a match is appropriate.&#10;     *&#10;     * <p> Using opaque bounds, the boundaries of this matcher's&#10;     * region are opaque to lookahead, lookbehind, and boundary matching&#10;     * constructs that may try to see beyond them. Those constructs cannot&#10;     * look past the boundaries so they will fail to match anything outside&#10;     * of the region.&#10;     *&#10;     * <p> By default, a matcher uses opaque bounds.&#10;     *&#10;     * @param  b a boolean indicating whether to use opaque or transparent&#10;     *         regions&#10;     * @return this matcher&#10;     * @see java.util.regex.Matcher#hasTransparentBounds&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 332
    label "public boolean hasAnchoringBounds()"
    type "method"
    comment "&#10;     * Queries the anchoring of region bounds for this matcher.&#10;     *&#10;     * <p> This method returns {@code true} if this matcher uses&#10;     * <i>anchoring</i> bounds, {@code false} otherwise.&#10;     *&#10;     * <p> See {@link #useAnchoringBounds(boolean) useAnchoringBounds} for a&#10;     * description of anchoring bounds.&#10;     *&#10;     * <p> By default, a matcher uses anchoring region boundaries.&#10;     *&#10;     * @return {@code true} iff this matcher is using anchoring bounds,&#10;     *         {@code false} otherwise.&#10;     * @see java.util.regex.Matcher#useAnchoringBounds(boolean)&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 333
    label "public Matcher useAnchoringBounds(boolean b)"
    type "method"
    comment "&#10;     * Sets the anchoring of region bounds for this matcher.&#10;     *&#10;     * <p> Invoking this method with an argument of {@code true} will set this&#10;     * matcher to use <i>anchoring</i> bounds. If the boolean&#10;     * argument is {@code false}, then <i>non-anchoring</i> bounds will be&#10;     * used.&#10;     *&#10;     * <p> Using anchoring bounds, the boundaries of this&#10;     * matcher's region match anchors such as ^ and $.&#10;     *&#10;     * <p> Without anchoring bounds, the boundaries of this&#10;     * matcher's region will not match anchors such as ^ and $.&#10;     *&#10;     * <p> By default, a matcher uses anchoring region boundaries.&#10;     *&#10;     * @param  b a boolean indicating whether or not to use anchoring bounds.&#10;     * @return this matcher&#10;     * @see java.util.regex.Matcher#hasAnchoringBounds&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 334
    label "public boolean hitEnd()"
    type "method"
    comment "&#10;     * <p>Returns true if the end of input was hit by the search engine in&#10;     * the last match operation performed by this matcher.&#10;     *&#10;     * <p>When this method returns true, then it is possible that more input&#10;     * would have changed the result of the last search.&#10;     *&#10;     * @return  true iff the end of input was hit in the last match; false&#10;     *          otherwise&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 335
    label "public boolean requireEnd()"
    type "method"
    comment "&#10;     * <p>Returns true if more input could change a positive match into a&#10;     * negative one.&#10;     *&#10;     * <p>If this method returns true, and a match was found, then more&#10;     * input could cause the match to be lost. If this method returns false&#10;     * and a match was found, then more input might change the match but the&#10;     * match won't be lost. If a match was not found, then requireEnd has no&#10;     * meaning.&#10;     *&#10;     * @return  true iff more input could change a positive match into a&#10;     *          negative one.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 336
    label " int getTextLength()"
    type "method"
    comment "&#10;     * Returns the end index of the text.&#10;     *&#10;     * @return the index after the last character in the text&#10;     "
  ]
  node [
    id 337
    label " CharSequence getSubSequence(int beginIndex, int endIndex)"
    type "method"
    comment "&#10;     * Generates a String from this matcher's input in the specified range.&#10;     *&#10;     * @param  beginIndex   the beginning index, inclusive&#10;     * @param  endIndex     the ending index, exclusive&#10;     * @return A String generated from this matcher's input&#10;     "
  ]
  node [
    id 338
    label "private Matcher reset(CharSequence input, int start, int end)"
    type "method"
    comment "&#10;     * Resets the Matcher. A new input sequence and a new region can be&#10;     * specified. Results of a previous find get lost. The next attempt to find&#10;     * an occurrence of the Pattern in the string will start at the beginning of&#10;     * the region. This is the internal version of reset() to which the several&#10;     * public versions delegate.&#10;     *&#10;     * @param input&#10;     *            the input sequence.&#10;     * @param start&#10;     *            the start of the region.&#10;     * @param end&#10;     *            the end of the region.&#10;     *&#10;     * @return the matcher itself.&#10;     "
  ]
  node [
    id 339
    label "private void ensureMatch()"
    type "method"
    comment "&#10;     * Makes sure that a successful match has been made. Is invoked internally&#10;     * from various places in the class.&#10;     *&#10;     * @throws IllegalStateException&#10;     *             if no successful match has been made.&#10;     "
  ]
  node [
    id 340
    label "public String replaceAll(String regex, String replacement)"
    type "method"
    comment "&#10;     * Replaces each substring of this string that matches the given <a&#10;     * href=&#34;../util/regex/Pattern.html#sum&#34;>regular expression</a> with the&#10;     * given replacement.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <i>str</i>{@code .replaceAll(}<i>regex</i>{@code ,} <i>repl</i>{@code )}&#10;     * yields exactly the same result as the expression&#10;     *&#10;     * <blockquote>&#10;     * <code>&#10;     * {@link java.util.regex.Pattern}.{@link&#10;     * java.util.regex.Pattern#compile compile}(<i>regex</i>).{@link&#10;     * java.util.regex.Pattern#matcher(java.lang.CharSequence) matcher}(<i>str</i>).{@link&#10;     * java.util.regex.Matcher#replaceAll replaceAll}(<i>repl</i>)&#10;     * </code>&#10;     * </blockquote>&#10;     *&#10;     *<p>&#10;     * Note that backslashes ({@code \}) and dollar signs ({@code $}) in the&#10;     * replacement string may cause the results to be different than if it were&#10;     * being treated as a literal replacement string; see&#10;     * {@link java.util.regex.Matcher#replaceAll Matcher.replaceAll}.&#10;     * Use {@link java.util.regex.Matcher#quoteReplacement} to suppress the special&#10;     * meaning of these characters, if desired.&#10;     *&#10;     * @param   regex&#10;     *          the regular expression to which this string is to be matched&#10;     * @param   replacement&#10;     *          the string to be substituted for each match&#10;     *&#10;     * @return  The resulting {@code String}&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          if the regular expression's syntax is invalid&#10;     *&#10;     * @see java.util.regex.Pattern&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 341
    label "public String replace(CharSequence target, CharSequence replacement)"
    type "method"
    comment "&#10;     * Replaces each substring of this string that matches the literal target&#10;     * sequence with the specified literal replacement sequence. The&#10;     * replacement proceeds from the beginning of the string to the end, for&#10;     * example, replacing &#34;aa&#34; with &#34;b&#34; in the string &#34;aaa&#34; will result in&#10;     * &#34;ba&#34; rather than &#34;ab&#34;.&#10;     *&#10;     * @param  target The sequence of char values to be replaced&#10;     * @param  replacement The replacement sequence of char values&#10;     * @return  The resulting string&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 342
    label "public String[] split(String regex, int limit)"
    type "method"
    comment "&#10;     * Splits this string around matches of the given&#10;     * <a href=&#34;../util/regex/Pattern.html#sum&#34;>regular expression</a>.&#10;     *&#10;     * <p> The array returned by this method contains each substring of this&#10;     * string that is terminated by another substring that matches the given&#10;     * expression or is terminated by the end of the string.  The substrings in&#10;     * the array are in the order in which they occur in this string.  If the&#10;     * expression does not match any part of the input then the resulting array&#10;     * has just one element, namely this string.&#10;     *&#10;     * <p> When there is a positive-width match at the beginning of this&#10;     * string then an empty leading substring is included at the beginning&#10;     * of the resulting array. A zero-width match at the beginning however&#10;     * never produces such empty leading substring.&#10;     *&#10;     * <p> The {@code limit} parameter controls the number of times the&#10;     * pattern is applied and therefore affects the length of the resulting&#10;     * array.&#10;     * <ul>&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is positive then the pattern will be applied&#10;     *    at most <i>limit</i>&#38;nbsp;-&#38;nbsp;1 times, the array's length will be&#10;     *    no greater than <i>limit</i>, and the array's last entry will contain&#10;     *    all input beyond the last matched delimiter.</p></li>&#10;     *&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is zero then the pattern will be applied as&#10;     *    many times as possible, the array can have any length, and trailing&#10;     *    empty strings will be discarded.</p></li>&#10;     *&#10;     *    <li><p>&#10;     *    If the <i>limit</i> is negative then the pattern will be applied&#10;     *    as many times as possible and the array can have any length.</p></li>&#10;     * </ul>&#10;     *&#10;     * <p> The string {@code &#34;boo:and:foo&#34;}, for example, yields the&#10;     * following results with these parameters:&#10;     *&#10;     * <blockquote><table class=&#34;plain&#34;>&#10;     * <caption style=&#34;display:none&#34;>Split example showing regex, limit, and result</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *     <th scope=&#34;col&#34;>Regex</th>&#10;     *     <th scope=&#34;col&#34;>Limit</th>&#10;     *     <th scope=&#34;col&#34;>Result</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr><th scope=&#34;row&#34; rowspan=&#34;3&#34; style=&#34;font-weight:normal&#34;>:</th>&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>2</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and:foo&#34; }}</td></tr>&#10;     * <tr><!-- : -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>5</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><!-- : -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>-2</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><th scope=&#34;row&#34; rowspan=&#34;3&#34; style=&#34;font-weight:normal&#34;>o</th>&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>5</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34;, &#34;&#34;, &#34;&#34; }}</td></tr>&#10;     * <tr><!-- o -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>-2</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34;, &#34;&#34;, &#34;&#34; }}</td></tr>&#10;     * <tr><!-- o -->&#10;     *     <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:right; padding-right:1em&#34;>0</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34; }}</td></tr>&#10;     * </tbody>&#10;     * </table></blockquote>&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <i>str.</i>{@code split(}<i>regex</i>{@code ,}&#38;nbsp;<i>n</i>{@code )}&#10;     * yields the same result as the expression&#10;     *&#10;     * <blockquote>&#10;     * <code>&#10;     * {@link java.util.regex.Pattern}.{@link&#10;     * java.util.regex.Pattern#compile compile}(<i>regex</i>).{@link&#10;     * java.util.regex.Pattern#split(java.lang.CharSequence,int) split}(<i>str</i>,&#38;nbsp;<i>n</i>)&#10;     * </code>&#10;     * </blockquote>&#10;     *&#10;     *&#10;     * @param  regex&#10;     *         the delimiting regular expression&#10;     *&#10;     * @param  limit&#10;     *         the result threshold, as described above&#10;     *&#10;     * @return  the array of strings computed by splitting this string&#10;     *          around matches of the given regular expression&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          if the regular expression's syntax is invalid&#10;     *&#10;     * @see java.util.regex.Pattern&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 343
    label "public String[] split(String regex)"
    type "method"
    comment "&#10;     * Splits this string around matches of the given <a&#10;     * href=&#34;../util/regex/Pattern.html#sum&#34;>regular expression</a>.&#10;     *&#10;     * <p> This method works as if by invoking the two-argument {@link&#10;     * #split(String, int) split} method with the given expression and a limit&#10;     * argument of zero.  Trailing empty strings are therefore not included in&#10;     * the resulting array.&#10;     *&#10;     * <p> The string {@code &#34;boo:and:foo&#34;}, for example, yields the following&#10;     * results with these expressions:&#10;     *&#10;     * <blockquote><table class=&#34;plain&#34;>&#10;     * <caption style=&#34;display:none&#34;>Split examples showing regex and result</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *  <th scope=&#34;col&#34;>Regex</th>&#10;     *  <th scope=&#34;col&#34;>Result</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr><th scope=&#34;row&#34; style=&#34;text-weight:normal&#34;>:</th>&#10;     *     <td>{@code { &#34;boo&#34;, &#34;and&#34;, &#34;foo&#34; }}</td></tr>&#10;     * <tr><th scope=&#34;row&#34; style=&#34;text-weight:normal&#34;>o</th>&#10;     *     <td>{@code { &#34;b&#34;, &#34;&#34;, &#34;:and:f&#34; }}</td></tr>&#10;     * </tbody>&#10;     * </table></blockquote>&#10;     *&#10;     *&#10;     * @param  regex&#10;     *         the delimiting regular expression&#10;     *&#10;     * @return  the array of strings computed by splitting this string&#10;     *          around matches of the given regular expression&#10;     *&#10;     * @throws  PatternSyntaxException&#10;     *          if the regular expression's syntax is invalid&#10;     *&#10;     * @see java.util.regex.Pattern&#10;     *&#10;     * @since 1.4&#10;     * @spec JSR-51&#10;     "
  ]
  node [
    id 344
    label "split(String"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 345
    label "public static String join(CharSequence delimiter, CharSequence... elements)"
    type "method"
    comment "&#10;     * Returns a new String composed of copies of the&#10;     * {@code CharSequence elements} joined together with a copy of&#10;     * the specified {@code delimiter}.&#10;     *&#10;     * <blockquote>For example,&#10;     * <pre>{@code&#10;     *     String message = String.join(&#34;-&#34;, &#34;Java&#34;, &#34;is&#34;, &#34;cool&#34;);&#10;     *     // message returned is: &#34;Java-is-cool&#34;&#10;     * }</pre></blockquote>&#10;     *&#10;     * Note that if an element is null, then {@code &#34;null&#34;} is added.&#10;     *&#10;     * @param  delimiter the delimiter that separates each element&#10;     * @param  elements the elements to join together.&#10;     *&#10;     * @return a new {@code String} that is composed of the {@code elements}&#10;     *         separated by the {@code delimiter}&#10;     *&#10;     * @throws NullPointerException If {@code delimiter} or {@code elements}&#10;     *         is {@code null}&#10;     *&#10;     * @see java.util.StringJoiner&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 346
    label "public static String join(CharSequence delimiter, Iterable<? extends CharSequence> elements)"
    type "method"
    comment "&#10;     * Returns a new {@code String} composed of copies of the&#10;     * {@code CharSequence elements} joined together with a copy of the&#10;     * specified {@code delimiter}.&#10;     *&#10;     * <blockquote>For example,&#10;     * <pre>{@code&#10;     *     List<String> strings = List.of(&#34;Java&#34;, &#34;is&#34;, &#34;cool&#34;);&#10;     *     String message = String.join(&#34; &#34;, strings);&#10;     *     //message returned is: &#34;Java is cool&#34;&#10;     *&#10;     *     Set<String> strings =&#10;     *         new LinkedHashSet<>(List.of(&#34;Java&#34;, &#34;is&#34;, &#34;very&#34;, &#34;cool&#34;));&#10;     *     String message = String.join(&#34;-&#34;, strings);&#10;     *     //message returned is: &#34;Java-is-very-cool&#34;&#10;     * }</pre></blockquote>&#10;     *&#10;     * Note that if an individual element is {@code null}, then {@code &#34;null&#34;} is added.&#10;     *&#10;     * @param  delimiter a sequence of characters that is used to separate each&#10;     *         of the {@code elements} in the resulting {@code String}&#10;     * @param  elements an {@code Iterable} that will have its {@code elements}&#10;     *         joined together.&#10;     *&#10;     * @return a new {@code String} that is composed from the {@code elements}&#10;     *         argument&#10;     *&#10;     * @throws NullPointerException If {@code delimiter} or {@code elements}&#10;     *         is {@code null}&#10;     *&#10;     * @see    #join(CharSequence,CharSequence...)&#10;     * @see    java.util.StringJoiner&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 347
    label "public String toLowerCase(Locale locale)"
    type "method"
    comment "&#10;     * Converts all of the characters in this {@code String} to lower&#10;     * case using the rules of the given {@code Locale}.  Case mapping is based&#10;     * on the Unicode Standard version specified by the {@link java.lang.Character Character}&#10;     * class. Since case mappings are not always 1:1 char mappings, the resulting&#10;     * {@code String} may be a different length than the original {@code String}.&#10;     * <p>&#10;     * Examples of lowercase  mappings are in the following table:&#10;     * <table class=&#34;plain&#34;>&#10;     * <caption style=&#34;display:none&#34;>Lowercase mapping examples showing language code of locale, upper case, lower case, and description</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *   <th scope=&#34;col&#34;>Language Code of Locale</th>&#10;     *   <th scope=&#34;col&#34;>Upper Case</th>&#10;     *   <th scope=&#34;col&#34;>Lower Case</th>&#10;     *   <th scope=&#34;col&#34;>Description</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr>&#10;     *   <td>tr (Turkish)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#38;#92;u0130</th>&#10;     *   <td>&#38;#92;u0069</td>&#10;     *   <td>capital letter I with dot above -&#38;gt; small letter i</td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>tr (Turkish)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#38;#92;u0049</th>&#10;     *   <td>&#38;#92;u0131</td>&#10;     *   <td>capital letter I -&#38;gt; small letter dotless i </td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>(all)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>French Fries</th>&#10;     *   <td>french fries</td>&#10;     *   <td>lowercased all chars in String</td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>(all)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#10;     *       &#38;Iota;&#38;Chi;&#38;Theta;&#38;Upsilon;&#38;Sigma;</th>&#10;     *   <td>&#38;iota;&#38;chi;&#38;theta;&#38;upsilon;&#38;sigma;</td>&#10;     *   <td>lowercased all chars in String</td>&#10;     * </tr>&#10;     * </tbody>&#10;     * </table>&#10;     *&#10;     * @param locale use the case transformation rules for this locale&#10;     * @return the {@code String}, converted to lowercase.&#10;     * @see     java.lang.String#toLowerCase()&#10;     * @see     java.lang.String#toUpperCase()&#10;     * @see     java.lang.String#toUpperCase(Locale)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 348
    label "java.lang.Character"
    type "class"
    comment "&#10; * The {@code Character} class wraps a value of the primitive&#10; * type {@code char} in an object. An object of class&#10; * {@code Character} contains a single field whose type is&#10; * {@code char}.&#10; * <p>&#10; * In addition, this class provides several methods for determining&#10; * a character's category (lowercase letter, digit, etc.) and for converting&#10; * characters from uppercase to lowercase and vice versa.&#10; * <p>&#10; * Character information is based on the Unicode Standard&#10; * <p>&#10; * The methods and data of class {@code Character} are defined by&#10; * the information in the <i>UnicodeData</i> file that is part of the&#10; * Unicode Character Database maintained by the Unicode&#10; * Consortium. This file specifies various properties including name&#10; * and general category for every defined Unicode code point or&#10; * character range.&#10; * <p>&#10; * The file and its description are available from the Unicode Consortium at:&#10; * <ul>&#10; * <li><a href=&#34;http://www.unicode.org&#34;>http://www.unicode.org</a>&#10; * </ul>&#10; *&#10; * <h2><a id=&#34;conformance&#34;>Unicode Conformance</a></h2>&#10; * <p>&#10; * The fields and methods of class {@code Character} are defined in terms&#10; * of character information from the Unicode Standard, specifically the&#10; * <i>UnicodeData</i> file that is part of the Unicode Character Database.&#10; * This file specifies properties including name and category for every&#10; * assigned Unicode code point or character range. The file is available&#10; * from the Unicode Consortium at&#10; * <a href=&#34;http://www.unicode.org&#34;>http://www.unicode.org</a>.&#10; * <p>&#10; * Character information is based on the Unicode Standard, version 13.0.&#10; * <p>&#10; * The Java platform has supported different versions of the Unicode&#10; * Standard over time. Upgrades to newer versions of the Unicode Standard&#10; * occurred in the following Java releases, each indicating the new version:&#10; * <table class=&#34;striped&#34;>&#10; * <caption style=&#34;display:none&#34;>Shows Java releases and supported Unicode versions</caption>&#10; * <thead>&#10; * <tr><th scope=&#34;col&#34;>Java release</th>&#10; *     <th scope=&#34;col&#34;>Unicode version</th></tr>&#10; * </thead>&#10; * <tbody>&#10; * <tr><td>Java SE 15</td>&#10; *     <td>Unicode 13.0</td></tr>&#10; * <tr><td>Java SE 13</td>&#10; *     <td>Unicode 12.1</td></tr>&#10; * <tr><td>Java SE 12</td>&#10; *     <td>Unicode 11.0</td></tr>&#10; * <tr><td>Java SE 11</td>&#10; *     <td>Unicode 10.0</td></tr>&#10; * <tr><td>Java SE 9</td>&#10; *     <td>Unicode 8.0</td></tr>&#10; * <tr><td>Java SE 8</td>&#10; *     <td>Unicode 6.2</td></tr>&#10; * <tr><td>Java SE 7</td>&#10; *     <td>Unicode 6.0</td></tr>&#10; * <tr><td>Java SE 5.0</td>&#10; *     <td>Unicode 4.0</td></tr>&#10; * <tr><td>Java SE 1.4</td>&#10; *     <td>Unicode 3.0</td></tr>&#10; * <tr><td>JDK 1.1</td>&#10; *     <td>Unicode 2.0</td></tr>&#10; * <tr><td>JDK 1.0.2</td>&#10; *     <td>Unicode 1.1.5</td></tr>&#10; * </tbody>&#10; * </table>&#10; * Variations from these base Unicode versions, such as recognized appendixes,&#10; * are documented elsewhere.&#10; * <h2><a id=&#34;unicode&#34;>Unicode Character Representations</a></h2>&#10; *&#10; * <p>The {@code char} data type (and therefore the value that a&#10; * {@code Character} object encapsulates) are based on the&#10; * original Unicode specification, which defined characters as&#10; * fixed-width 16-bit entities. The Unicode Standard has since been&#10; * changed to allow for characters whose representation requires more&#10; * than 16 bits.  The range of legal <em>code point</em>s is now&#10; * U+0000 to U+10FFFF, known as <em>Unicode scalar value</em>.&#10; * (Refer to the <a&#10; * href=&#34;http://www.unicode.org/reports/tr27/#notation&#34;><i>&#10; * definition</i></a> of the U+<i>n</i> notation in the Unicode&#10; * Standard.)&#10; *&#10; * <p><a id=&#34;BMP&#34;>The set of characters from U+0000 to U+FFFF</a> is&#10; * sometimes referred to as the <em>Basic Multilingual Plane (BMP)</em>.&#10; * <a id=&#34;supplementary&#34;>Characters</a> whose code points are greater&#10; * than U+FFFF are called <em>supplementary character</em>s.  The Java&#10; * platform uses the UTF-16 representation in {@code char} arrays and&#10; * in the {@code String} and {@code StringBuffer} classes. In&#10; * this representation, supplementary characters are represented as a pair&#10; * of {@code char} values, the first from the <em>high-surrogates</em>&#10; * range, (&#38;#92;uD800-&#38;#92;uDBFF), the second from the&#10; * <em>low-surrogates</em> range (&#38;#92;uDC00-&#38;#92;uDFFF).&#10; *&#10; * <p>A {@code char} value, therefore, represents Basic&#10; * Multilingual Plane (BMP) code points, including the surrogate&#10; * code points, or code units of the UTF-16 encoding. An&#10; * {@code int} value represents all Unicode code points,&#10; * including supplementary code points. The lower (least significant)&#10; * 21 bits of {@code int} are used to represent Unicode code&#10; * points and the upper (most significant) 11 bits must be zero.&#10; * Unless otherwise specified, the behavior with respect to&#10; * supplementary characters and surrogate {@code char} values is&#10; * as follows:&#10; *&#10; * <ul>&#10; * <li>The methods that only accept a {@code char} value cannot support&#10; * supplementary characters. They treat {@code char} values from the&#10; * surrogate ranges as undefined characters. For example,&#10; * {@code Character.isLetter('\u005CuD840')} returns {@code false}, even though&#10; * this specific value if followed by any low-surrogate value in a string&#10; * would represent a letter.&#10; *&#10; * <li>The methods that accept an {@code int} value support all&#10; * Unicode characters, including supplementary characters. For&#10; * example, {@code Character.isLetter(0x2F81A)} returns&#10; * {@code true} because the code point value represents a letter&#10; * (a CJK ideograph).&#10; * </ul>&#10; *&#10; * <p>In the Java SE API documentation, <em>Unicode code point</em> is&#10; * used for character values in the range between U+0000 and U+10FFFF,&#10; * and <em>Unicode code unit</em> is used for 16-bit&#10; * {@code char} values that are code units of the <em>UTF-16</em>&#10; * encoding. For more information on Unicode terminology, refer to the&#10; * <a href=&#34;http://www.unicode.org/glossary/&#34;>Unicode Glossary</a>.&#10; *&#10; * <!-- Android-removed: paragraph on ValueBased&#10; * <p>This is a <a href=&#34;{@docRoot}/java.base/java/lang/doc-files/ValueBased.html&#34;>value-based</a>&#10; * class; programmers should treat instances that are&#10; * {@linkplain #equals(Object) equal} as interchangeable and should not&#10; * use instances for synchronization, or unpredictable behavior may&#10; * occur. For example, in a future release, synchronization may fail.&#10; * -->&#10; *&#10; * @author  Lee Boynton&#10; * @author  Guy Steele&#10; * @author  Akira Tanaka&#10; * @author  Martin Buchholz&#10; * @author  Ulf Zibis&#10; * @since   1.0&#10; "
  ]
  node [
    id 349
    label "public static Character valueOf(char c)"
    type "method"
    comment "&#10;     * Returns a {@code Character} instance representing the specified&#10;     * {@code char} value.&#10;     * If a new {@code Character} instance is not required, this method&#10;     * should generally be used in preference to the constructor&#10;     * {@link #Character(char)}, as this method is likely to yield&#10;     * significantly better space and time performance by caching&#10;     * frequently requested values.&#10;     *&#10;     * This method will always cache values in the range {@code&#10;     * '\u005Cu0000'} to {@code '\u005Cu007F'}, inclusive, and may&#10;     * cache other values outside of this range.&#10;     *&#10;     * @param  c a char value.&#10;     * @return a {@code Character} instance representing {@code c}.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 350
    label "Character(char)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 351
    label "public char charValue()"
    type "method"
    comment "&#10;     * Returns the value of this {@code Character} object.&#10;     * @return  the primitive {@code char} value represented by&#10;     *          this object.&#10;     "
  ]
  node [
    id 352
    label "public static int hashCode(char value)"
    type "method"
    comment "&#10;     * Returns a hash code for a {@code char} value; compatible with&#10;     * {@code Character.hashCode()}.&#10;     *&#10;     * @since 1.8&#10;     *&#10;     * @param value The {@code char} for which to return a hash code.&#10;     * @return a hash code value for a {@code char} value.&#10;     "
  ]
  node [
    id 353
    label "public boolean equals(Object obj)"
    type "method"
    comment "&#10;     * Compares this object against the specified object.&#10;     * The result is {@code true} if and only if the argument is not&#10;     * {@code null} and is a {@code Character} object that&#10;     * represents the same {@code char} value as this object.&#10;     *&#10;     * @param   obj   the object to compare with.&#10;     * @return  {@code true} if the objects are the same;&#10;     *          {@code false} otherwise.&#10;     "
  ]
  node [
    id 354
    label "public static String toString(char c)"
    type "method"
    comment "&#10;     * Returns a {@code String} object representing the&#10;     * specified {@code char}.  The result is a string of length&#10;     * 1 consisting solely of the specified {@code char}.&#10;     *&#10;     * @param c the {@code char} to be converted&#10;     * @return the string representation of the specified {@code char}&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 355
    label "public static String toString(int codePoint)"
    type "method"
    comment "&#10;     * Returns a {@code String} object representing the&#10;     * specified character (Unicode code point).  The result is a string of&#10;     * length 1 or 2, consisting solely of the specified {@code codePoint}.&#10;     *&#10;     * @param codePoint the {@code codePoint} to be converted&#10;     * @return the string representation of the specified {@code codePoint}&#10;     * @throws IllegalArgumentException if the specified&#10;     *      {@code codePoint} is not a {@linkplain #isValidCodePoint&#10;     *      valid Unicode code point}.&#10;     * @since 11&#10;     "
  ]
  node [
    id 356
    label "public static boolean isValidCodePoint(int codePoint)"
    type "method"
    comment "&#10;     * Determines whether the specified code point is a valid&#10;     * <a href=&#34;http://www.unicode.org/glossary/#code_point&#34;>&#10;     * Unicode code point value</a>.&#10;     *&#10;     * @param  codePoint the Unicode code point to be tested&#10;     * @return {@code true} if the specified code point value is between&#10;     *         {@link #MIN_CODE_POINT} and&#10;     *         {@link #MAX_CODE_POINT} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 357
    label "MIN_CODE_POINT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 358
    label "MAX_CODE_POINT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 359
    label "public static boolean isBmpCodePoint(int codePoint)"
    type "method"
    comment "&#10;     * Determines whether the specified character (Unicode code point)&#10;     * is in the <a href=&#34;#BMP&#34;>Basic Multilingual Plane (BMP)</a>.&#10;     * Such code points can be represented using a single {@code char}.&#10;     *&#10;     * @param  codePoint the character (Unicode code point) to be to&#10;     * @return {@code true} if the specified code point is between&#10;     *         {@link #MIN_VALUE} and {@link #MAX_VALUE} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @since  1.7&#10;     "
  ]
  node [
    id 360
    label "MIN_VALUE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 361
    label "MAX_VALUE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 362
    label "public static boolean isSupplementaryCodePoint(int codePoint)"
    type "method"
    comment "&#10;     * Determines whether the specified character (Unicode code point)&#10;     * is in the <a href=&#34;#supplementary&#34;>supplementary character</a> range.&#10;     *&#10;     * @param  codePoint the character (Unicode code point) to be tested&#10;     * @return {@code true} if the specified code point is between&#10;     *         {@link #MIN_SUPPLEMENTARY_CODE_POINT} and&#10;     *         {@link #MAX_CODE_POINT} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 363
    label "MIN_SUPPLEMENTARY_CODE_POINT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 364
    label "public static boolean isHighSurrogate(char ch)"
    type "method"
    comment "&#10;     * Determines if the given {@code char} value is a&#10;     * <a href=&#34;http://www.unicode.org/glossary/#high_surrogate_code_unit&#34;>&#10;     * Unicode high-surrogate code unit</a>&#10;     * (also known as <i>leading-surrogate code unit</i>).&#10;     *&#10;     * <p>Such values do not represent characters by themselves,&#10;     * but are used in the representation of&#10;     * <a href=&#34;#supplementary&#34;>supplementary characters</a>&#10;     * in the UTF-16 encoding.&#10;     *&#10;     * @param  ch the {@code char} value to be tested.&#10;     * @return {@code true} if the {@code char} value is between&#10;     *         {@link #MIN_HIGH_SURROGATE} and&#10;     *         {@link #MAX_HIGH_SURROGATE} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @see    Character#isLowSurrogate(char)&#10;     * @see    Character.UnicodeBlock#of(int)&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 365
    label "MIN_HIGH_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 366
    label "MAX_HIGH_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 367
    label "public static boolean isLowSurrogate(char ch)"
    type "method"
    comment "&#10;     * Determines if the given {@code char} value is a&#10;     * <a href=&#34;http://www.unicode.org/glossary/#low_surrogate_code_unit&#34;>&#10;     * Unicode low-surrogate code unit</a>&#10;     * (also known as <i>trailing-surrogate code unit</i>).&#10;     *&#10;     * <p>Such values do not represent characters by themselves,&#10;     * but are used in the representation of&#10;     * <a href=&#34;#supplementary&#34;>supplementary characters</a>&#10;     * in the UTF-16 encoding.&#10;     *&#10;     * @param  ch the {@code char} value to be tested.&#10;     * @return {@code true} if the {@code char} value is between&#10;     *         {@link #MIN_LOW_SURROGATE} and&#10;     *         {@link #MAX_LOW_SURROGATE} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @see    Character#isHighSurrogate(char)&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 368
    label "MAX_LOW_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 369
    label "MIN_LOW_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 370
    label "public static boolean isSurrogate(char ch)"
    type "method"
    comment "&#10;     * Determines if the given {@code char} value is a Unicode&#10;     * <i>surrogate code unit</i>.&#10;     *&#10;     * <p>Such values do not represent characters by themselves,&#10;     * but are used in the representation of&#10;     * <a href=&#34;#supplementary&#34;>supplementary characters</a>&#10;     * in the UTF-16 encoding.&#10;     *&#10;     * <p>A char value is a surrogate code unit if and only if it is either&#10;     * a {@linkplain #isLowSurrogate(char) low-surrogate code unit} or&#10;     * a {@linkplain #isHighSurrogate(char) high-surrogate code unit}.&#10;     *&#10;     * @param  ch the {@code char} value to be tested.&#10;     * @return {@code true} if the {@code char} value is between&#10;     *         {@link #MIN_SURROGATE} and&#10;     *         {@link #MAX_SURROGATE} inclusive;&#10;     *         {@code false} otherwise.&#10;     * @since  1.7&#10;     "
  ]
  node [
    id 371
    label "MIN_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 372
    label "MAX_SURROGATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 373
    label "public static boolean isSurrogatePair(char high, char low)"
    type "method"
    comment "&#10;     * Determines whether the specified pair of {@code char}&#10;     * values is a valid&#10;     * <a href=&#34;http://www.unicode.org/glossary/#surrogate_pair&#34;>&#10;     * Unicode surrogate pair</a>.&#10;     *&#10;     * <p>This method is equivalent to the expression:&#10;     * <blockquote><pre>{@code&#10;     * isHighSurrogate(high) &#38;&#38; isLowSurrogate(low)&#10;     * }</pre></blockquote>&#10;     *&#10;     * @param  high the high-surrogate code value to be tested&#10;     * @param  low the low-surrogate code value to be tested&#10;     * @return {@code true} if the specified high and&#10;     * low-surrogate code values represent a valid surrogate pair;&#10;     * {@code false} otherwise.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 374
    label "public static int charCount(int codePoint)"
    type "method"
    comment "&#10;     * Determines the number of {@code char} values needed to&#10;     * represent the specified character (Unicode code point). If the&#10;     * specified character is equal to or greater than 0x10000, then&#10;     * the method returns 2. Otherwise, the method returns 1.&#10;     *&#10;     * <p>This method doesn't validate the specified character to be a&#10;     * valid Unicode code point. The caller must validate the&#10;     * character value using {@link #isValidCodePoint(int) isValidCodePoint}&#10;     * if necessary.&#10;     *&#10;     * @param   codePoint the character (Unicode code point) to be tested.&#10;     * @return  2 if the character is a valid supplementary character; 1 otherwise.&#10;     * @see     Character#isSupplementaryCodePoint(int)&#10;     * @since   1.5&#10;     "
  ]
  node [
    id 375
    label "isValidCodePoint(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 376
    label "public static int toCodePoint(char high, char low)"
    type "method"
    comment "&#10;     * Converts the specified surrogate pair to its supplementary code&#10;     * point value. This method does not validate the specified&#10;     * surrogate pair. The caller must validate it using {@link&#10;     * #isSurrogatePair(char, char) isSurrogatePair} if necessary.&#10;     *&#10;     * @param  high the high-surrogate code unit&#10;     * @param  low the low-surrogate code unit&#10;     * @return the supplementary code point composed from the&#10;     *         specified surrogate pair.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 377
    label "isSurrogatePair(char"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 378
    label "public static int codePointAt(CharSequence seq, int index)"
    type "method"
    comment "&#10;     * Returns the code point at the given index of the&#10;     * {@code CharSequence}. If the {@code char} value at&#10;     * the given index in the {@code CharSequence} is in the&#10;     * high-surrogate range, the following index is less than the&#10;     * length of the {@code CharSequence}, and the&#10;     * {@code char} value at the following index is in the&#10;     * low-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at the given index is returned.&#10;     *&#10;     * @param seq a sequence of {@code char} values (Unicode code&#10;     * units)&#10;     * @param index the index to the {@code char} values (Unicode&#10;     * code units) in {@code seq} to be converted&#10;     * @return the Unicode code point at the given index&#10;     * @throws NullPointerException if {@code seq} is null.&#10;     * @throws IndexOutOfBoundsException if the value&#10;     * {@code index} is negative or not less than&#10;     * {@link CharSequence#length() seq.length()}.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 379
    label "public static int codePointAt(char[] a, int index)"
    type "method"
    comment "&#10;     * Returns the code point at the given index of the&#10;     * {@code char} array. If the {@code char} value at&#10;     * the given index in the {@code char} array is in the&#10;     * high-surrogate range, the following index is less than the&#10;     * length of the {@code char} array, and the&#10;     * {@code char} value at the following index is in the&#10;     * low-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at the given index is returned.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param index the index to the {@code char} values (Unicode&#10;     * code units) in the {@code char} array to be converted&#10;     * @return the Unicode code point at the given index&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException if the value&#10;     * {@code index} is negative or not less than&#10;     * the length of the {@code char} array.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 380
    label "public static int codePointAt(char[] a, int index, int limit)"
    type "method"
    comment "&#10;     * Returns the code point at the given index of the&#10;     * {@code char} array, where only array elements with&#10;     * {@code index} less than {@code limit} can be used. If&#10;     * the {@code char} value at the given index in the&#10;     * {@code char} array is in the high-surrogate range, the&#10;     * following index is less than the {@code limit}, and the&#10;     * {@code char} value at the following index is in the&#10;     * low-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at the given index is returned.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param index the index to the {@code char} values (Unicode&#10;     * code units) in the {@code char} array to be converted&#10;     * @param limit the index after the last array element that&#10;     * can be used in the {@code char} array&#10;     * @return the Unicode code point at the given index&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException if the {@code index}&#10;     * argument is negative or not less than the {@code limit}&#10;     * argument, or if the {@code limit} argument is negative or&#10;     * greater than the length of the {@code char} array.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 381
    label " static int codePointAtImpl(char[] a, int index, int limit)"
    type "method"
    comment " throws ArrayIndexOutOfBoundsException if index out of bounds"
  ]
  node [
    id 382
    label "public static int codePointBefore(CharSequence seq, int index)"
    type "method"
    comment "&#10;     * Returns the code point preceding the given index of the&#10;     * {@code CharSequence}. If the {@code char} value at&#10;     * {@code (index - 1)} in the {@code CharSequence} is in&#10;     * the low-surrogate range, {@code (index - 2)} is not&#10;     * negative, and the {@code char} value at {@code (index - 2)}&#10;     * in the {@code CharSequence} is in the&#10;     * high-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at {@code (index - 1)} is&#10;     * returned.&#10;     *&#10;     * @param seq the {@code CharSequence} instance&#10;     * @param index the index following the code point that should be returned&#10;     * @return the Unicode code point value before the given index.&#10;     * @throws NullPointerException if {@code seq} is null.&#10;     * @throws IndexOutOfBoundsException if the {@code index}&#10;     * argument is less than 1 or greater than {@link&#10;     * CharSequence#length() seq.length()}.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 383
    label "public static int codePointBefore(char[] a, int index)"
    type "method"
    comment "&#10;     * Returns the code point preceding the given index of the&#10;     * {@code char} array. If the {@code char} value at&#10;     * {@code (index - 1)} in the {@code char} array is in&#10;     * the low-surrogate range, {@code (index - 2)} is not&#10;     * negative, and the {@code char} value at {@code (index - 2)}&#10;     * in the {@code char} array is in the&#10;     * high-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at {@code (index - 1)} is&#10;     * returned.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param index the index following the code point that should be returned&#10;     * @return the Unicode code point value before the given index.&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException if the {@code index}&#10;     * argument is less than 1 or greater than the length of the&#10;     * {@code char} array&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 384
    label "public static int codePointBefore(char[] a, int index, int start)"
    type "method"
    comment "&#10;     * Returns the code point preceding the given index of the&#10;     * {@code char} array, where only array elements with&#10;     * {@code index} greater than or equal to {@code start}&#10;     * can be used. If the {@code char} value at {@code (index - 1)}&#10;     * in the {@code char} array is in the&#10;     * low-surrogate range, {@code (index - 2)} is not less than&#10;     * {@code start}, and the {@code char} value at&#10;     * {@code (index - 2)} in the {@code char} array is in&#10;     * the high-surrogate range, then the supplementary code point&#10;     * corresponding to this surrogate pair is returned. Otherwise,&#10;     * the {@code char} value at {@code (index - 1)} is&#10;     * returned.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param index the index following the code point that should be returned&#10;     * @param start the index of the first array element in the&#10;     * {@code char} array&#10;     * @return the Unicode code point value before the given index.&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException if the {@code index}&#10;     * argument is not greater than the {@code start} argument or&#10;     * is greater than the length of the {@code char} array, or&#10;     * if the {@code start} argument is negative or not less than&#10;     * the length of the {@code char} array.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 385
    label " static int codePointBeforeImpl(char[] a, int index, int start)"
    type "method"
    comment " throws ArrayIndexOutOfBoundsException if index-1 out of bounds"
  ]
  node [
    id 386
    label "public static char highSurrogate(int codePoint)"
    type "method"
    comment "&#10;     * Returns the leading surrogate (a&#10;     * <a href=&#34;http://www.unicode.org/glossary/#high_surrogate_code_unit&#34;>&#10;     * high surrogate code unit</a>) of the&#10;     * <a href=&#34;http://www.unicode.org/glossary/#surrogate_pair&#34;>&#10;     * surrogate pair</a>&#10;     * representing the specified supplementary character (Unicode&#10;     * code point) in the UTF-16 encoding.  If the specified character&#10;     * is not a&#10;     * <a href=&#34;Character.html#supplementary&#34;>supplementary character</a>,&#10;     * an unspecified {@code char} is returned.&#10;     *&#10;     * <p>If&#10;     * {@link #isSupplementaryCodePoint isSupplementaryCodePoint(x)}&#10;     * is {@code true}, then&#10;     * {@link #isHighSurrogate isHighSurrogate}{@code (highSurrogate(x))} and&#10;     * {@link #toCodePoint toCodePoint}{@code (highSurrogate(x), }{@link #lowSurrogate lowSurrogate}{@code (x)) == x}&#10;     * are also always {@code true}.&#10;     *&#10;     * @param   codePoint a supplementary character (Unicode code point)&#10;     * @return  the leading surrogate code unit used to represent the&#10;     *          character in the UTF-16 encoding&#10;     * @since   1.7&#10;     "
  ]
  node [
    id 387
    label "isSupplementaryCodePoint"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 388
    label "toCodePoint"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 389
    label "lowSurrogate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 390
    label "isHighSurrogate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 391
    label "public static char lowSurrogate(int codePoint)"
    type "method"
    comment "&#10;     * Returns the trailing surrogate (a&#10;     * <a href=&#34;http://www.unicode.org/glossary/#low_surrogate_code_unit&#34;>&#10;     * low surrogate code unit</a>) of the&#10;     * <a href=&#34;http://www.unicode.org/glossary/#surrogate_pair&#34;>&#10;     * surrogate pair</a>&#10;     * representing the specified supplementary character (Unicode&#10;     * code point) in the UTF-16 encoding.  If the specified character&#10;     * is not a&#10;     * <a href=&#34;Character.html#supplementary&#34;>supplementary character</a>,&#10;     * an unspecified {@code char} is returned.&#10;     *&#10;     * <p>If&#10;     * {@link #isSupplementaryCodePoint isSupplementaryCodePoint(x)}&#10;     * is {@code true}, then&#10;     * {@link #isLowSurrogate isLowSurrogate}{@code (lowSurrogate(x))} and&#10;     * {@link #toCodePoint toCodePoint}{@code (}{@link #highSurrogate highSurrogate}{@code (x), lowSurrogate(x)) == x}&#10;     * are also always {@code true}.&#10;     *&#10;     * @param   codePoint a supplementary character (Unicode code point)&#10;     * @return  the trailing surrogate code unit used to represent the&#10;     *          character in the UTF-16 encoding&#10;     * @since   1.7&#10;     "
  ]
  node [
    id 392
    label "isLowSurrogate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 393
    label "highSurrogate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 394
    label "public static int toChars(int codePoint, char[] dst, int dstIndex)"
    type "method"
    comment "&#10;     * Converts the specified character (Unicode code point) to its&#10;     * UTF-16 representation. If the specified code point is a BMP&#10;     * (Basic Multilingual Plane or Plane 0) value, the same value is&#10;     * stored in {@code dst[dstIndex]}, and 1 is returned. If the&#10;     * specified code point is a supplementary character, its&#10;     * surrogate values are stored in {@code dst[dstIndex]}&#10;     * (high-surrogate) and {@code dst[dstIndex+1]}&#10;     * (low-surrogate), and 2 is returned.&#10;     *&#10;     * @param  codePoint the character (Unicode code point) to be converted.&#10;     * @param  dst an array of {@code char} in which the&#10;     * {@code codePoint}'s UTF-16 value is stored.&#10;     * @param dstIndex the start index into the {@code dst}&#10;     * array where the converted value is stored.&#10;     * @return 1 if the code point is a BMP code point, 2 if the&#10;     * code point is a supplementary code point.&#10;     * @throws IllegalArgumentException if the specified&#10;     * {@code codePoint} is not a valid Unicode code point.&#10;     * @throws NullPointerException if the specified {@code dst} is null.&#10;     * @throws IndexOutOfBoundsException if {@code dstIndex}&#10;     * is negative or not less than {@code dst.length}, or if&#10;     * {@code dst} at {@code dstIndex} doesn't have enough&#10;     * array element(s) to store the resulting {@code char}&#10;     * value(s). (If {@code dstIndex} is equal to&#10;     * {@code dst.length-1} and the specified&#10;     * {@code codePoint} is a supplementary character, the&#10;     * high-surrogate value is not stored in&#10;     * {@code dst[dstIndex]}.)&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 395
    label "public static char[] toChars(int codePoint)"
    type "method"
    comment "&#10;     * Converts the specified character (Unicode code point) to its&#10;     * UTF-16 representation stored in a {@code char} array. If&#10;     * the specified code point is a BMP (Basic Multilingual Plane or&#10;     * Plane 0) value, the resulting {@code char} array has&#10;     * the same value as {@code codePoint}. If the specified code&#10;     * point is a supplementary code point, the resulting&#10;     * {@code char} array has the corresponding surrogate pair.&#10;     *&#10;     * @param  codePoint a Unicode code point&#10;     * @return a {@code char} array having&#10;     *         {@code codePoint}'s UTF-16 representation.&#10;     * @throws IllegalArgumentException if the specified&#10;     * {@code codePoint} is not a valid Unicode code point.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 396
    label "public static int codePointCount(CharSequence seq, int beginIndex, int endIndex)"
    type "method"
    comment "&#10;     * Returns the number of Unicode code points in the text range of&#10;     * the specified char sequence. The text range begins at the&#10;     * specified {@code beginIndex} and extends to the&#10;     * {@code char} at index {@code endIndex - 1}. Thus the&#10;     * length (in {@code char}s) of the text range is&#10;     * {@code endIndex-beginIndex}. Unpaired surrogates within&#10;     * the text range count as one code point each.&#10;     *&#10;     * @param seq the char sequence&#10;     * @param beginIndex the index to the first {@code char} of&#10;     * the text range.&#10;     * @param endIndex the index after the last {@code char} of&#10;     * the text range.&#10;     * @return the number of Unicode code points in the specified text&#10;     * range&#10;     * @throws NullPointerException if {@code seq} is null.&#10;     * @throws IndexOutOfBoundsException if the&#10;     * {@code beginIndex} is negative, or {@code endIndex}&#10;     * is larger than the length of the given sequence, or&#10;     * {@code beginIndex} is larger than {@code endIndex}.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 397
    label "public static int codePointCount(char[] a, int offset, int count)"
    type "method"
    comment "&#10;     * Returns the number of Unicode code points in a subarray of the&#10;     * {@code char} array argument. The {@code offset}&#10;     * argument is the index of the first {@code char} of the&#10;     * subarray and the {@code count} argument specifies the&#10;     * length of the subarray in {@code char}s. Unpaired&#10;     * surrogates within the subarray count as one code point each.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param offset the index of the first {@code char} in the&#10;     * given {@code char} array&#10;     * @param count the length of the subarray in {@code char}s&#10;     * @return the number of Unicode code points in the specified subarray&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException if {@code offset} or&#10;     * {@code count} is negative, or if {@code offset +&#10;     * count} is larger than the length of the given array.&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 398
    label "public static int offsetByCodePoints(CharSequence seq, int index, int codePointOffset)"
    type "method"
    comment "&#10;     * Returns the index within the given char sequence that is offset&#10;     * from the given {@code index} by {@code codePointOffset}&#10;     * code points. Unpaired surrogates within the text range given by&#10;     * {@code index} and {@code codePointOffset} count as&#10;     * one code point each.&#10;     *&#10;     * @param seq the char sequence&#10;     * @param index the index to be offset&#10;     * @param codePointOffset the offset in code points&#10;     * @return the index within the char sequence&#10;     * @throws NullPointerException if {@code seq} is null.&#10;     * @throws IndexOutOfBoundsException if {@code index}&#10;     *   is negative or larger then the length of the char sequence,&#10;     *   or if {@code codePointOffset} is positive and the&#10;     *   subsequence starting with {@code index} has fewer than&#10;     *   {@code codePointOffset} code points, or if&#10;     *   {@code codePointOffset} is negative and the subsequence&#10;     *   before {@code index} has fewer than the absolute value&#10;     *   of {@code codePointOffset} code points.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 399
    label "public static int offsetByCodePoints(char[] a, int start, int count, int index, int codePointOffset)"
    type "method"
    comment "&#10;     * Returns the index within the given {@code char} subarray&#10;     * that is offset from the given {@code index} by&#10;     * {@code codePointOffset} code points. The&#10;     * {@code start} and {@code count} arguments specify a&#10;     * subarray of the {@code char} array. Unpaired surrogates&#10;     * within the text range given by {@code index} and&#10;     * {@code codePointOffset} count as one code point each.&#10;     *&#10;     * @param a the {@code char} array&#10;     * @param start the index of the first {@code char} of the&#10;     * subarray&#10;     * @param count the length of the subarray in {@code char}s&#10;     * @param index the index to be offset&#10;     * @param codePointOffset the offset in code points&#10;     * @return the index within the subarray&#10;     * @throws NullPointerException if {@code a} is null.&#10;     * @throws IndexOutOfBoundsException&#10;     *   if {@code start} or {@code count} is negative,&#10;     *   or if {@code start + count} is larger than the length of&#10;     *   the given array,&#10;     *   or if {@code index} is less than {@code start} or&#10;     *   larger then {@code start + count},&#10;     *   or if {@code codePointOffset} is positive and the text range&#10;     *   starting with {@code index} and ending with {@code start + count - 1}&#10;     *   has fewer than {@code codePointOffset} code&#10;     *   points,&#10;     *   or if {@code codePointOffset} is negative and the text range&#10;     *   starting with {@code start} and ending with {@code index - 1}&#10;     *   has fewer than the absolute value of&#10;     *   {@code codePointOffset} code points.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 400
    label "public static boolean isLowerCase(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a lowercase character.&#10;     * <p>&#10;     * A character is lowercase if its general category type, provided&#10;     * by {@code Character.getType(ch)}, is&#10;     * {@code LOWERCASE_LETTER}, or it has contributory property&#10;     * Other_Lowercase as defined by the Unicode Standard.&#10;     * <p>&#10;     * The following are examples of lowercase characters:&#10;     * <blockquote><pre>&#10;     * a b c d e f g h i j k l m n o p q r s t u v w x y z&#10;     * '&#38;#92;u00DF' '&#38;#92;u00E0' '&#38;#92;u00E1' '&#38;#92;u00E2' '&#38;#92;u00E3' '&#38;#92;u00E4' '&#38;#92;u00E5' '&#38;#92;u00E6'&#10;     * '&#38;#92;u00E7' '&#38;#92;u00E8' '&#38;#92;u00E9' '&#38;#92;u00EA' '&#38;#92;u00EB' '&#38;#92;u00EC' '&#38;#92;u00ED' '&#38;#92;u00EE'&#10;     * '&#38;#92;u00EF' '&#38;#92;u00F0' '&#38;#92;u00F1' '&#38;#92;u00F2' '&#38;#92;u00F3' '&#38;#92;u00F4' '&#38;#92;u00F5' '&#38;#92;u00F6'&#10;     * '&#38;#92;u00F8' '&#38;#92;u00F9' '&#38;#92;u00FA' '&#38;#92;u00FB' '&#38;#92;u00FC' '&#38;#92;u00FD' '&#38;#92;u00FE' '&#38;#92;u00FF'&#10;     * </pre></blockquote>&#10;     * <p> Many other Unicode characters are lowercase too.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isLowerCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is lowercase;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     Character#isTitleCase(char)&#10;     * @see     Character#toLowerCase(char)&#10;     * @see     Character#getType(char)&#10;     "
  ]
  node [
    id 401
    label "isLowerCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 402
    label "public static boolean isLowerCase(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isLowerCase(int codePoint) {&#10;        return CharacterData.of(codePoint).isLowerCase(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 403
    label "public static boolean isUpperCase(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is an uppercase character.&#10;     * <p>&#10;     * A character is uppercase if its general category type, provided by&#10;     * {@code Character.getType(ch)}, is {@code UPPERCASE_LETTER}.&#10;     * or it has contributory property Other_Uppercase as defined by the Unicode Standard.&#10;     * <p>&#10;     * The following are examples of uppercase characters:&#10;     * <blockquote><pre>&#10;     * A B C D E F G H I J K L M N O P Q R S T U V W X Y Z&#10;     * '&#38;#92;u00C0' '&#38;#92;u00C1' '&#38;#92;u00C2' '&#38;#92;u00C3' '&#38;#92;u00C4' '&#38;#92;u00C5' '&#38;#92;u00C6' '&#38;#92;u00C7'&#10;     * '&#38;#92;u00C8' '&#38;#92;u00C9' '&#38;#92;u00CA' '&#38;#92;u00CB' '&#38;#92;u00CC' '&#38;#92;u00CD' '&#38;#92;u00CE' '&#38;#92;u00CF'&#10;     * '&#38;#92;u00D0' '&#38;#92;u00D1' '&#38;#92;u00D2' '&#38;#92;u00D3' '&#38;#92;u00D4' '&#38;#92;u00D5' '&#38;#92;u00D6' '&#38;#92;u00D8'&#10;     * '&#38;#92;u00D9' '&#38;#92;u00DA' '&#38;#92;u00DB' '&#38;#92;u00DC' '&#38;#92;u00DD' '&#38;#92;u00DE'&#10;     * </pre></blockquote>&#10;     * <p> Many other Unicode characters are uppercase too.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isUpperCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is uppercase;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     Character#isTitleCase(char)&#10;     * @see     Character#toUpperCase(char)&#10;     * @see     Character#getType(char)&#10;     * @since   1.0&#10;     "
  ]
  node [
    id 404
    label "isUpperCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 405
    label "public static boolean isUpperCase(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isUpperCase(int codePoint) {&#10;        return CharacterData.of(codePoint).isUpperCase(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 406
    label "public static boolean isTitleCase(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a titlecase character.&#10;     * <p>&#10;     * A character is a titlecase character if its general&#10;     * category type, provided by {@code Character.getType(ch)},&#10;     * is {@code TITLECASE_LETTER}.&#10;     * <p>&#10;     * Some characters look like pairs of Latin letters. For example, there&#10;     * is an uppercase letter that looks like &#34;LJ&#34; and has a corresponding&#10;     * lowercase letter that looks like &#34;lj&#34;. A third form, which looks like &#34;Lj&#34;,&#10;     * is the appropriate form to use when rendering a word in lowercase&#10;     * with initial capitals, as for a book title.&#10;     * <p>&#10;     * These are some of the Unicode characters for which this method returns&#10;     * {@code true}:&#10;     * <ul>&#10;     * <li>{@code LATIN CAPITAL LETTER D WITH SMALL LETTER Z WITH CARON}&#10;     * <li>{@code LATIN CAPITAL LETTER L WITH SMALL LETTER J}&#10;     * <li>{@code LATIN CAPITAL LETTER N WITH SMALL LETTER J}&#10;     * <li>{@code LATIN CAPITAL LETTER D WITH SMALL LETTER Z}&#10;     * </ul>&#10;     * <p> Many other Unicode characters are titlecase too.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isTitleCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is titlecase;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     Character#isUpperCase(char)&#10;     * @see     Character#toTitleCase(char)&#10;     * @see     Character#getType(char)&#10;     * @since   1.0.2&#10;     "
  ]
  node [
    id 407
    label "isTitleCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 408
    label "public static boolean isTitleCase(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isTitleCase(int codePoint) {&#10;        return getType(codePoint) == Character.TITLECASE_LETTER;&#10;    }&#10;    "
  ]
  node [
    id 409
    label "public static boolean isDigit(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a digit.&#10;     * <p>&#10;     * A character is a digit if its general category type, provided&#10;     * by {@code Character.getType(ch)}, is&#10;     * {@code DECIMAL_DIGIT_NUMBER}.&#10;     * <p>&#10;     * Some Unicode character ranges that contain digits:&#10;     * <ul>&#10;     * <li>{@code '\u005Cu0030'} through {@code '\u005Cu0039'},&#10;     *     ISO-LATIN-1 digits ({@code '0'} through {@code '9'})&#10;     * <li>{@code '\u005Cu0660'} through {@code '\u005Cu0669'},&#10;     *     Arabic-Indic digits&#10;     * <li>{@code '\u005Cu06F0'} through {@code '\u005Cu06F9'},&#10;     *     Extended Arabic-Indic digits&#10;     * <li>{@code '\u005Cu0966'} through {@code '\u005Cu096F'},&#10;     *     Devanagari digits&#10;     * <li>{@code '\u005CuFF10'} through {@code '\u005CuFF19'},&#10;     *     Fullwidth digits&#10;     * </ul>&#10;     *&#10;     * Many other character ranges contain digits as well.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isDigit(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is a digit;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#digit(char, int)&#10;     * @see     Character#forDigit(int, int)&#10;     * @see     Character#getType(char)&#10;     "
  ]
  node [
    id 410
    label "isDigit(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 411
    label "public static boolean isDigit(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isDigit(int codePoint) {&#10;        return CharacterData.of(codePoint).isDigit(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 412
    label "public static boolean isDefined(char ch)"
    type "method"
    comment "&#10;     * Determines if a character is defined in Unicode.&#10;     * <p>&#10;     * A character is defined if at least one of the following is true:&#10;     * <ul>&#10;     * <li>It has an entry in the UnicodeData file.&#10;     * <li>It has a value in a range defined by the UnicodeData file.&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isDefined(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested&#10;     * @return  {@code true} if the character has a defined meaning&#10;     *          in Unicode; {@code false} otherwise.&#10;     * @see     Character#isDigit(char)&#10;     * @see     Character#isLetter(char)&#10;     * @see     Character#isLetterOrDigit(char)&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     Character#isTitleCase(char)&#10;     * @see     Character#isUpperCase(char)&#10;     * @since   1.0.2&#10;     "
  ]
  node [
    id 413
    label "isDefined(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 414
    label "public static boolean isDefined(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isDefined(int codePoint) {&#10;        return getType(codePoint) != Character.UNASSIGNED;&#10;    }&#10;    "
  ]
  node [
    id 415
    label "public static boolean isLetter(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a letter.&#10;     * <p>&#10;     * A character is considered to be a letter if its general&#10;     * category type, provided by {@code Character.getType(ch)},&#10;     * is any of the following:&#10;     * <ul>&#10;     * <li> {@code UPPERCASE_LETTER}&#10;     * <li> {@code LOWERCASE_LETTER}&#10;     * <li> {@code TITLECASE_LETTER}&#10;     * <li> {@code MODIFIER_LETTER}&#10;     * <li> {@code OTHER_LETTER}&#10;     * </ul>&#10;     *&#10;     * Not all letters have case. Many characters are&#10;     * letters but are neither uppercase nor lowercase nor titlecase.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isLetter(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is a letter;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isDigit(char)&#10;     * @see     Character#isJavaIdentifierStart(char)&#10;     * @see     Character#isJavaLetter(char)&#10;     * @see     Character#isJavaLetterOrDigit(char)&#10;     * @see     Character#isLetterOrDigit(char)&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     Character#isTitleCase(char)&#10;     * @see     Character#isUnicodeIdentifierStart(char)&#10;     * @see     Character#isUpperCase(char)&#10;     "
  ]
  node [
    id 416
    label "isLetter(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 417
    label "public static boolean isLetter(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isLetter(int codePoint) {&#10;        return ((((1 << Character.UPPERCASE_LETTER) |&#10;            (1 << Character.LOWERCASE_LETTER) |&#10;            (1 << Character.TITLECASE_LETTER) |&#10;            (1 << Character.MODIFIER_LETTER) |&#10;            (1 << Character.OTHER_LETTER)) >> getType(codePoint)) &#38; 1)&#10;            != 0;&#10;    }&#10;    "
  ]
  node [
    id 418
    label "public static boolean isLetterOrDigit(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a letter or digit.&#10;     * <p>&#10;     * A character is considered to be a letter or digit if either&#10;     * {@code Character.isLetter(char ch)} or&#10;     * {@code Character.isDigit(char ch)} returns&#10;     * {@code true} for the character.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isLetterOrDigit(int)} method.&#10;     *&#10;     * @param   ch   the character to be tested.&#10;     * @return  {@code true} if the character is a letter or digit;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isDigit(char)&#10;     * @see     Character#isJavaIdentifierPart(char)&#10;     * @see     Character#isJavaLetter(char)&#10;     * @see     Character#isJavaLetterOrDigit(char)&#10;     * @see     Character#isLetter(char)&#10;     * @see     Character#isUnicodeIdentifierPart(char)&#10;     * @since   1.0.2&#10;     "
  ]
  node [
    id 419
    label "isLetterOrDigit(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 420
    label "public static boolean isLetterOrDigit(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isLetterOrDigit(int codePoint) {&#10;        return ((((1 << Character.UPPERCASE_LETTER) |&#10;            (1 << Character.LOWERCASE_LETTER) |&#10;            (1 << Character.TITLECASE_LETTER) |&#10;            (1 << Character.MODIFIER_LETTER) |&#10;            (1 << Character.OTHER_LETTER) |&#10;            (1 << Character.DECIMAL_DIGIT_NUMBER)) >> getType(codePoint)) &#38; 1)&#10;            != 0;&#10;    }&#10;    "
  ]
  node [
    id 421
    label "public static boolean isAlphabetic(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isAlphabetic(int codePoint) {&#10;        return (((((1 << Character.UPPERCASE_LETTER) |&#10;            (1 << Character.LOWERCASE_LETTER) |&#10;            (1 << Character.TITLECASE_LETTER) |&#10;            (1 << Character.MODIFIER_LETTER) |&#10;            (1 << Character.OTHER_LETTER) |&#10;            (1 << Character.LETTER_NUMBER)) >> getType(codePoint)) &#38; 1) != 0) ||&#10;            CharacterData.of(codePoint).isOtherAlphabetic(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 422
    label "public static boolean isIdeographic(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isIdeographic(int codePoint) {&#10;        return CharacterData.of(codePoint).isIdeographic(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 423
    label "public static boolean isJavaIdentifierStart(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is&#10;     * permissible as the first character in a Java identifier.&#10;     * <p>&#10;     * A character may start a Java identifier if and only if&#10;     * one of the following conditions is true:&#10;     * <ul>&#10;     * <li> {@link #isLetter(char) isLetter(ch)} returns {@code true}&#10;     * <li> {@link #getType(char) getType(ch)} returns {@code LETTER_NUMBER}&#10;     * <li> {@code ch} is a currency symbol (such as {@code '$'})&#10;     * <li> {@code ch} is a connecting punctuation character (such as {@code '_'}).&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isJavaIdentifierStart(int)} method.&#10;     *&#10;     * @param   ch the character to be tested.&#10;     * @return  {@code true} if the character may start a Java identifier;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isJavaIdentifierPart(char)&#10;     * @see     Character#isLetter(char)&#10;     * @see     Character#isUnicodeIdentifierStart(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 424
    label "isLetter(char)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 425
    label "getType(char)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 426
    label "isJavaIdentifierStart(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 427
    label "public static boolean isJavaIdentifierStart(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isJavaIdentifierStart(int codePoint) {&#10;        return CharacterData.of(codePoint).isJavaIdentifierStart(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 428
    label "public static boolean isJavaIdentifierPart(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character may be part of a Java&#10;     * identifier as other than the first character.&#10;     * <p>&#10;     * A character may be part of a Java identifier if any of the following&#10;     * conditions are true:&#10;     * <ul>&#10;     * <li>  it is a letter&#10;     * <li>  it is a currency symbol (such as {@code '$'})&#10;     * <li>  it is a connecting punctuation character (such as {@code '_'})&#10;     * <li>  it is a digit&#10;     * <li>  it is a numeric letter (such as a Roman numeral character)&#10;     * <li>  it is a combining mark&#10;     * <li>  it is a non-spacing mark&#10;     * <li> {@code isIdentifierIgnorable} returns&#10;     * {@code true} for the character&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isJavaIdentifierPart(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return {@code true} if the character may be part of a&#10;     *          Java identifier; {@code false} otherwise.&#10;     * @see     Character#isIdentifierIgnorable(char)&#10;     * @see     Character#isJavaIdentifierStart(char)&#10;     * @see     Character#isLetterOrDigit(char)&#10;     * @see     Character#isUnicodeIdentifierPart(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 429
    label "isJavaIdentifierPart(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 430
    label "public static boolean isJavaIdentifierPart(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isJavaIdentifierPart(int codePoint) {&#10;        return CharacterData.of(codePoint).isJavaIdentifierPart(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 431
    label "public static boolean isUnicodeIdentifierStart(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is permissible as the&#10;     * first character in a Unicode identifier.&#10;     * <p>&#10;     * A character may start a Unicode identifier if and only if&#10;     * one of the following conditions is true:&#10;     * <ul>&#10;     * <li> {@link #isLetter(char) isLetter(ch)} returns {@code true}&#10;     * <li> {@link #getType(char) getType(ch)} returns&#10;     *      {@code LETTER_NUMBER}.&#10;     * <li> it is an <a href=&#34;http://www.unicode.org/reports/tr44/#Other_ID_Start&#34;>&#10;     *      {@code Other_ID_Start}</a> character.&#10;     * </ul>&#10;     * <p>&#10;     * This method conforms to <a href=&#34;https://unicode.org/reports/tr31/#R1&#34;>&#10;     * UAX31-R1: Default Identifiers</a> requirement of the Unicode Standard,&#10;     * with the following profile of UAX31:&#10;     * <pre>&#10;     * Start := ID_Start + 'VERTICAL TILDE' (U+2E2F)&#10;     * </pre>&#10;     * {@code 'VERTICAL TILDE'} is added to {@code Start} for backward&#10;     * compatibility.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isUnicodeIdentifierStart(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  {@code true} if the character may start a Unicode&#10;     *          identifier; {@code false} otherwise.&#10;     * @see     Character#isJavaIdentifierStart(char)&#10;     * @see     Character#isLetter(char)&#10;     * @see     Character#isUnicodeIdentifierPart(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 432
    label "isUnicodeIdentifierStart(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 433
    label "public static boolean isUnicodeIdentifierStart(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isUnicodeIdentifierStart(int codePoint) {&#10;        return CharacterData.of(codePoint).isUnicodeIdentifierStart(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 434
    label "public static boolean isUnicodeIdentifierPart(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character may be part of a Unicode&#10;     * identifier as other than the first character.&#10;     * <p>&#10;     * A character may be part of a Unicode identifier if and only if&#10;     * one of the following statements is true:&#10;     * <ul>&#10;     * <li>  it is a letter&#10;     * <li>  it is a connecting punctuation character (such as {@code '_'})&#10;     * <li>  it is a digit&#10;     * <li>  it is a numeric letter (such as a Roman numeral character)&#10;     * <li>  it is a combining mark&#10;     * <li>  it is a non-spacing mark&#10;     * <li> {@code isIdentifierIgnorable} returns&#10;     * {@code true} for this character.&#10;     * <li> it is an <a href=&#34;http://www.unicode.org/reports/tr44/#Other_ID_Start&#34;>&#10;     *      {@code Other_ID_Start}</a> character.&#10;     * <li> it is an <a href=&#34;http://www.unicode.org/reports/tr44/#Other_ID_Continue&#34;>&#10;     *      {@code Other_ID_Continue}</a> character.&#10;     * </ul>&#10;     * <p>&#10;     * This method conforms to <a href=&#34;https://unicode.org/reports/tr31/#R1&#34;>&#10;     * UAX31-R1: Default Identifiers</a> requirement of the Unicode Standard,&#10;     * with the following profile of UAX31:&#10;     * <pre>&#10;     * Continue := Start + ID_Continue + ignorable&#10;     * Medial := empty&#10;     * ignorable := isIdentifierIgnorable(char) returns true for the character&#10;     * </pre>&#10;     * {@code ignorable} is added to {@code Continue} for backward&#10;     * compatibility.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isUnicodeIdentifierPart(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  {@code true} if the character may be part of a&#10;     *          Unicode identifier; {@code false} otherwise.&#10;     * @see     Character#isIdentifierIgnorable(char)&#10;     * @see     Character#isJavaIdentifierPart(char)&#10;     * @see     Character#isLetterOrDigit(char)&#10;     * @see     Character#isUnicodeIdentifierStart(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 435
    label "isUnicodeIdentifierPart(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 436
    label "public static boolean isUnicodeIdentifierPart(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isUnicodeIdentifierPart(int codePoint) {&#10;        return CharacterData.of(codePoint).isUnicodeIdentifierPart(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 437
    label "public static boolean isIdentifierIgnorable(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character should be regarded as&#10;     * an ignorable character in a Java identifier or a Unicode identifier.&#10;     * <p>&#10;     * The following Unicode characters are ignorable in a Java identifier&#10;     * or a Unicode identifier:&#10;     * <ul>&#10;     * <li>ISO control characters that are not whitespace&#10;     * <ul>&#10;     * <li>{@code '\u005Cu0000'} through {@code '\u005Cu0008'}&#10;     * <li>{@code '\u005Cu000E'} through {@code '\u005Cu001B'}&#10;     * <li>{@code '\u005Cu007F'} through {@code '\u005Cu009F'}&#10;     * </ul>&#10;     *&#10;     * <li>all characters that have the {@code FORMAT} general&#10;     * category value&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isIdentifierIgnorable(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  {@code true} if the character is an ignorable control&#10;     *          character that may be part of a Java or Unicode identifier;&#10;     *           {@code false} otherwise.&#10;     * @see     Character#isJavaIdentifierPart(char)&#10;     * @see     Character#isUnicodeIdentifierPart(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 438
    label "isIdentifierIgnorable(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 439
    label "public static boolean isIdentifierIgnorable(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isIdentifierIgnorable(int codePoint) {&#10;        return CharacterData.of(codePoint).isIdentifierIgnorable(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 440
    label "public static char toLowerCase(char ch)"
    type "method"
    comment "&#10;     * Converts the character argument to lowercase using case&#10;     * mapping information from the UnicodeData file.&#10;     * <p>&#10;     * Note that&#10;     * {@code Character.isLowerCase(Character.toLowerCase(ch))}&#10;     * does not always return {@code true} for some ranges of&#10;     * characters, particularly those that are symbols or ideographs.&#10;     *&#10;     * <p>In general, {@link String#toLowerCase()} should be used to map&#10;     * characters to lowercase. {@code String} case mapping methods&#10;     * have several benefits over {@code Character} case mapping methods.&#10;     * {@code String} case mapping methods can perform locale-sensitive&#10;     * mappings, context-sensitive mappings, and 1:M character mappings, whereas&#10;     * the {@code Character} case mapping methods cannot.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #toLowerCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be converted.&#10;     * @return  the lowercase equivalent of the character, if any;&#10;     *          otherwise, the character itself.&#10;     * @see     Character#isLowerCase(char)&#10;     * @see     String#toLowerCase()&#10;     "
  ]
  node [
    id 441
    label "toLowerCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 442
    label "public static int toLowerCase(int codePoint)"
    type "method"
    comment "&#10;    public static int toLowerCase(int codePoint) {&#10;        return CharacterData.of(codePoint).toLowerCase(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 443
    label "public static char toUpperCase(char ch)"
    type "method"
    comment "&#10;     * Converts the character argument to uppercase using case mapping&#10;     * information from the UnicodeData file.&#10;     * <p>&#10;     * Note that&#10;     * {@code Character.isUpperCase(Character.toUpperCase(ch))}&#10;     * does not always return {@code true} for some ranges of&#10;     * characters, particularly those that are symbols or ideographs.&#10;     *&#10;     * <p>In general, {@link String#toUpperCase()} should be used to map&#10;     * characters to uppercase. {@code String} case mapping methods&#10;     * have several benefits over {@code Character} case mapping methods.&#10;     * {@code String} case mapping methods can perform locale-sensitive&#10;     * mappings, context-sensitive mappings, and 1:M character mappings, whereas&#10;     * the {@code Character} case mapping methods cannot.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #toUpperCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be converted.&#10;     * @return  the uppercase equivalent of the character, if any;&#10;     *          otherwise, the character itself.&#10;     * @see     Character#isUpperCase(char)&#10;     * @see     String#toUpperCase()&#10;     "
  ]
  node [
    id 444
    label "toUpperCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 445
    label "public static int toUpperCase(int codePoint)"
    type "method"
    comment "&#10;    public static int toUpperCase(int codePoint) {&#10;        return CharacterData.of(codePoint).toUpperCase(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 446
    label "public static char toTitleCase(char ch)"
    type "method"
    comment "&#10;     * Converts the character argument to titlecase using case mapping&#10;     * information from the UnicodeData file. If a character has no&#10;     * explicit titlecase mapping and is not itself a titlecase char&#10;     * according to UnicodeData, then the uppercase mapping is&#10;     * returned as an equivalent titlecase mapping. If the&#10;     * {@code char} argument is already a titlecase&#10;     * {@code char}, the same {@code char} value will be&#10;     * returned.&#10;     * <p>&#10;     * Note that&#10;     * {@code Character.isTitleCase(Character.toTitleCase(ch))}&#10;     * does not always return {@code true} for some ranges of&#10;     * characters.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #toTitleCase(int)} method.&#10;     *&#10;     * @param   ch   the character to be converted.&#10;     * @return  the titlecase equivalent of the character, if any;&#10;     *          otherwise, the character itself.&#10;     * @see     Character#isTitleCase(char)&#10;     * @see     Character#toLowerCase(char)&#10;     * @see     Character#toUpperCase(char)&#10;     * @since   1.0.2&#10;     "
  ]
  node [
    id 447
    label "toTitleCase(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 448
    label "public static int toTitleCase(int codePoint)"
    type "method"
    comment "&#10;    public static int toTitleCase(int codePoint) {&#10;        return CharacterData.of(codePoint).toTitleCase(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 449
    label "public static int digit(char ch, int radix)"
    type "method"
    comment "&#10;     * Returns the numeric value of the character {@code ch} in the&#10;     * specified radix.&#10;     * <p>&#10;     * If the radix is not in the range {@code MIN_RADIX} &#38;le;&#10;     * {@code radix} &#38;le; {@code MAX_RADIX} or if the&#10;     * value of {@code ch} is not a valid digit in the specified&#10;     * radix, {@code -1} is returned. A character is a valid digit&#10;     * if at least one of the following is true:&#10;     * <ul>&#10;     * <li>The method {@code isDigit} is {@code true} of the character&#10;     *     and the Unicode decimal digit value of the character (or its&#10;     *     single-character decomposition) is less than the specified radix.&#10;     *     In this case the decimal digit value is returned.&#10;     * <li>The character is one of the uppercase Latin letters&#10;     *     {@code 'A'} through {@code 'Z'} and its code is less than&#10;     *     {@code radix + 'A' - 10}.&#10;     *     In this case, {@code ch - 'A' + 10}&#10;     *     is returned.&#10;     * <li>The character is one of the lowercase Latin letters&#10;     *     {@code 'a'} through {@code 'z'} and its code is less than&#10;     *     {@code radix + 'a' - 10}.&#10;     *     In this case, {@code ch - 'a' + 10}&#10;     *     is returned.&#10;     * <li>The character is one of the fullwidth uppercase Latin letters A&#10;     *     ({@code '\u005CuFF21'}) through Z ({@code '\u005CuFF3A'})&#10;     *     and its code is less than&#10;     *     {@code radix + '\u005CuFF21' - 10}.&#10;     *     In this case, {@code ch - '\u005CuFF21' + 10}&#10;     *     is returned.&#10;     * <li>The character is one of the fullwidth lowercase Latin letters a&#10;     *     ({@code '\u005CuFF41'}) through z ({@code '\u005CuFF5A'})&#10;     *     and its code is less than&#10;     *     {@code radix + '\u005CuFF41' - 10}.&#10;     *     In this case, {@code ch - '\u005CuFF41' + 10}&#10;     *     is returned.&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #digit(int, int)} method.&#10;     *&#10;     * @param   ch      the character to be converted.&#10;     * @param   radix   the radix.&#10;     * @return  the numeric value represented by the character in the&#10;     *          specified radix.&#10;     * @see     Character#forDigit(int, int)&#10;     * @see     Character#isDigit(char)&#10;     "
  ]
  node [
    id 450
    label "digit(int"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 451
    label "public static int digit(int codePoint, int radix)"
    type "method"
    comment "&#10;    public static int digit(int codePoint, int radix) {&#10;        return CharacterData.of(codePoint).digit(codePoint, radix);&#10;    }&#10;    "
  ]
  node [
    id 452
    label "public static int getNumericValue(char ch)"
    type "method"
    comment "&#10;     * Returns the {@code int} value that the specified Unicode&#10;     * character represents. For example, the character&#10;     * {@code '\u005Cu216C'} (the roman numeral fifty) will return&#10;     * an int with a value of 50.&#10;     * <p>&#10;     * The letters A-Z in their uppercase ({@code '\u005Cu0041'} through&#10;     * {@code '\u005Cu005A'}), lowercase&#10;     * ({@code '\u005Cu0061'} through {@code '\u005Cu007A'}), and&#10;     * full width variant ({@code '\u005CuFF21'} through&#10;     * {@code '\u005CuFF3A'} and {@code '\u005CuFF41'} through&#10;     * {@code '\u005CuFF5A'}) forms have numeric values from 10&#10;     * through 35. This is independent of the Unicode specification,&#10;     * which does not assign numeric values to these {@code char}&#10;     * values.&#10;     * <p>&#10;     * If the character does not have a numeric value, then -1 is returned.&#10;     * If the character has a numeric value that cannot be represented as a&#10;     * nonnegative integer (for example, a fractional value), then -2&#10;     * is returned.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #getNumericValue(int)} method.&#10;     *&#10;     * @param   ch      the character to be converted.&#10;     * @return  the numeric value of the character, as a nonnegative {@code int}&#10;     *          value; -2 if the character has a numeric value but the value&#10;     *          can not be represented as a nonnegative {@code int} value;&#10;     *          -1 if the character has no numeric value.&#10;     * @see     Character#forDigit(int, int)&#10;     * @see     Character#isDigit(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 453
    label "getNumericValue(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 454
    label "public static int getNumericValue(int codePoint)"
    type "method"
    comment "&#10;    public static int getNumericValue(int codePoint) {&#10;        return CharacterData.of(codePoint).getNumericValue(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 455
    label "public static boolean isSpaceChar(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is a Unicode space character.&#10;     * A character is considered to be a space character if and only if&#10;     * it is specified to be a space character by the Unicode Standard. This&#10;     * method returns true if the character's general category type is any of&#10;     * the following:&#10;     * <ul>&#10;     * <li> {@code SPACE_SEPARATOR}&#10;     * <li> {@code LINE_SEPARATOR}&#10;     * <li> {@code PARAGRAPH_SEPARATOR}&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isSpaceChar(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  {@code true} if the character is a space character;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isWhitespace(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 456
    label "isSpaceChar(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 457
    label "public static boolean isSpaceChar(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isSpaceChar(int codePoint) {&#10;        return ((((1 << Character.SPACE_SEPARATOR) |&#10;                  (1 << Character.LINE_SEPARATOR) |&#10;                  (1 << Character.PARAGRAPH_SEPARATOR)) >> getType(codePoint)) &#38; 1)&#10;            != 0;&#10;    }&#10;    "
  ]
  node [
    id 458
    label "public static boolean isWhitespace(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is white space according to Java.&#10;     * A character is a Java whitespace character if and only if it satisfies&#10;     * one of the following criteria:&#10;     * <ul>&#10;     * <li> It is a Unicode space character ({@code SPACE_SEPARATOR},&#10;     *      {@code LINE_SEPARATOR}, or {@code PARAGRAPH_SEPARATOR})&#10;     *      but is not also a non-breaking space ({@code '\u005Cu00A0'},&#10;     *      {@code '\u005Cu2007'}, {@code '\u005Cu202F'}).&#10;     * <li> It is {@code '\u005Ct'}, U+0009 HORIZONTAL TABULATION.&#10;     * <li> It is {@code '\u005Cn'}, U+000A LINE FEED.&#10;     * <li> It is {@code '\u005Cu000B'}, U+000B VERTICAL TABULATION.&#10;     * <li> It is {@code '\u005Cf'}, U+000C FORM FEED.&#10;     * <li> It is {@code '\u005Cr'}, U+000D CARRIAGE RETURN.&#10;     * <li> It is {@code '\u005Cu001C'}, U+001C FILE SEPARATOR.&#10;     * <li> It is {@code '\u005Cu001D'}, U+001D GROUP SEPARATOR.&#10;     * <li> It is {@code '\u005Cu001E'}, U+001E RECORD SEPARATOR.&#10;     * <li> It is {@code '\u005Cu001F'}, U+001F UNIT SEPARATOR.&#10;     * </ul>&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isWhitespace(int)} method.&#10;     *&#10;     * @param   ch the character to be tested.&#10;     * @return  {@code true} if the character is a Java whitespace&#10;     *          character; {@code false} otherwise.&#10;     * @see     Character#isSpaceChar(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 459
    label "isWhitespace(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 460
    label "public static boolean isWhitespace(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isWhitespace(int codePoint) {&#10;        return CharacterData.of(codePoint).isWhitespace(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 461
    label "public static boolean isISOControl(char ch)"
    type "method"
    comment "&#10;     * Determines if the specified character is an ISO control&#10;     * character.  A character is considered to be an ISO control&#10;     * character if its code is in the range {@code '\u005Cu0000'}&#10;     * through {@code '\u005Cu001F'} or in the range&#10;     * {@code '\u005Cu007F'} through {@code '\u005Cu009F'}.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isISOControl(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  {@code true} if the character is an ISO control character;&#10;     *          {@code false} otherwise.&#10;     *&#10;     * @see     Character#isSpaceChar(char)&#10;     * @see     Character#isWhitespace(char)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 462
    label "isISOControl(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 463
    label "public static boolean isISOControl(int codePoint)"
    type "method"
    comment "&#10;     * Determines if the referenced character (Unicode code point) is an ISO control&#10;     * character.  A character is considered to be an ISO control&#10;     * character if its code is in the range {@code '\u005Cu0000'}&#10;     * through {@code '\u005Cu001F'} or in the range&#10;     * {@code '\u005Cu007F'} through {@code '\u005Cu009F'}.&#10;     *&#10;     * @param   codePoint the character (Unicode code point) to be tested.&#10;     * @return  {@code true} if the character is an ISO control character;&#10;     *          {@code false} otherwise.&#10;     * @see     Character#isSpaceChar(int)&#10;     * @see     Character#isWhitespace(int)&#10;     * @since   1.5&#10;     "
  ]
  node [
    id 464
    label "public static int getType(char ch)"
    type "method"
    comment "&#10;     * Returns a value indicating a character's general category.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #getType(int)} method.&#10;     *&#10;     * @param   ch      the character to be tested.&#10;     * @return  a value of type {@code int} representing the&#10;     *          character's general category.&#10;     * @see     Character#COMBINING_SPACING_MARK&#10;     * @see     Character#CONNECTOR_PUNCTUATION&#10;     * @see     Character#CONTROL&#10;     * @see     Character#CURRENCY_SYMBOL&#10;     * @see     Character#DASH_PUNCTUATION&#10;     * @see     Character#DECIMAL_DIGIT_NUMBER&#10;     * @see     Character#ENCLOSING_MARK&#10;     * @see     Character#END_PUNCTUATION&#10;     * @see     Character#FINAL_QUOTE_PUNCTUATION&#10;     * @see     Character#FORMAT&#10;     * @see     Character#INITIAL_QUOTE_PUNCTUATION&#10;     * @see     Character#LETTER_NUMBER&#10;     * @see     Character#LINE_SEPARATOR&#10;     * @see     Character#LOWERCASE_LETTER&#10;     * @see     Character#MATH_SYMBOL&#10;     * @see     Character#MODIFIER_LETTER&#10;     * @see     Character#MODIFIER_SYMBOL&#10;     * @see     Character#NON_SPACING_MARK&#10;     * @see     Character#OTHER_LETTER&#10;     * @see     Character#OTHER_NUMBER&#10;     * @see     Character#OTHER_PUNCTUATION&#10;     * @see     Character#OTHER_SYMBOL&#10;     * @see     Character#PARAGRAPH_SEPARATOR&#10;     * @see     Character#PRIVATE_USE&#10;     * @see     Character#SPACE_SEPARATOR&#10;     * @see     Character#START_PUNCTUATION&#10;     * @see     Character#SURROGATE&#10;     * @see     Character#TITLECASE_LETTER&#10;     * @see     Character#UNASSIGNED&#10;     * @see     Character#UPPERCASE_LETTER&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 465
    label "getType(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 466
    label "public static int getType(int codePoint)"
    type "method"
    comment "&#10;    public static int getType(int codePoint) {&#10;        return CharacterData.of(codePoint).getType(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 467
    label "public static char forDigit(int digit, int radix)"
    type "method"
    comment "&#10;     * Determines the character representation for a specific digit in&#10;     * the specified radix. If the value of {@code radix} is not a&#10;     * valid radix, or the value of {@code digit} is not a valid&#10;     * digit in the specified radix, the null character&#10;     * ({@code '\u005Cu0000'}) is returned.&#10;     * <p>&#10;     * The {@code radix} argument is valid if it is greater than or&#10;     * equal to {@code MIN_RADIX} and less than or equal to&#10;     * {@code MAX_RADIX}. The {@code digit} argument is valid if&#10;     * {@code 0 <= digit < radix}.&#10;     * <p>&#10;     * If the digit is less than 10, then&#10;     * {@code '0' + digit} is returned. Otherwise, the value&#10;     * {@code 'a' + digit - 10} is returned.&#10;     *&#10;     * @param   digit   the number to convert to a character.&#10;     * @param   radix   the radix.&#10;     * @return  the {@code char} representation of the specified digit&#10;     *          in the specified radix.&#10;     * @see     Character#MIN_RADIX&#10;     * @see     Character#MAX_RADIX&#10;     * @see     Character#digit(char, int)&#10;     "
  ]
  node [
    id 468
    label "public static byte getDirectionality(char ch)"
    type "method"
    comment "&#10;     * Returns the Unicode directionality property for the given&#10;     * character.  Character directionality is used to calculate the&#10;     * visual ordering of text. The directionality value of undefined&#10;     * {@code char} values is {@code DIRECTIONALITY_UNDEFINED}.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #getDirectionality(int)} method.&#10;     *&#10;     * @param  ch {@code char} for which the directionality property&#10;     *            is requested.&#10;     * @return the directionality property of the {@code char} value.&#10;     *&#10;     * @see Character#DIRECTIONALITY_UNDEFINED&#10;     * @see Character#DIRECTIONALITY_LEFT_TO_RIGHT&#10;     * @see Character#DIRECTIONALITY_RIGHT_TO_LEFT&#10;     * @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC&#10;     * @see Character#DIRECTIONALITY_EUROPEAN_NUMBER&#10;     * @see Character#DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR&#10;     * @see Character#DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR&#10;     * @see Character#DIRECTIONALITY_ARABIC_NUMBER&#10;     * @see Character#DIRECTIONALITY_COMMON_NUMBER_SEPARATOR&#10;     * @see Character#DIRECTIONALITY_NONSPACING_MARK&#10;     * @see Character#DIRECTIONALITY_BOUNDARY_NEUTRAL&#10;     * @see Character#DIRECTIONALITY_PARAGRAPH_SEPARATOR&#10;     * @see Character#DIRECTIONALITY_SEGMENT_SEPARATOR&#10;     * @see Character#DIRECTIONALITY_WHITESPACE&#10;     * @see Character#DIRECTIONALITY_OTHER_NEUTRALS&#10;     * @see Character#DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING&#10;     * @see Character#DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE&#10;     * @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING&#10;     * @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE&#10;     * @see Character#DIRECTIONALITY_POP_DIRECTIONAL_FORMAT&#10;     * @see Character#DIRECTIONALITY_LEFT_TO_RIGHT_ISOLATE&#10;     * @see Character#DIRECTIONALITY_RIGHT_TO_LEFT_ISOLATE&#10;     * @see Character#DIRECTIONALITY_FIRST_STRONG_ISOLATE&#10;     * @see Character#DIRECTIONALITY_POP_DIRECTIONAL_ISOLATE&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 469
    label "getDirectionality(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 470
    label "public static byte getDirectionality(int codePoint)"
    type "method"
    comment "&#10;    public static byte getDirectionality(int codePoint) {&#10;        return CharacterData.of(codePoint).getDirectionality(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 471
    label "public static boolean isMirrored(char ch)"
    type "method"
    comment "&#10;     * Determines whether the character is mirrored according to the&#10;     * Unicode specification.  Mirrored characters should have their&#10;     * glyphs horizontally mirrored when displayed in text that is&#10;     * right-to-left.  For example, {@code '\u005Cu0028'} LEFT&#10;     * PARENTHESIS is semantically defined to be an <i>opening&#10;     * parenthesis</i>.  This will appear as a &#34;(&#34; in text that is&#10;     * left-to-right but as a &#34;)&#34; in text that is right-to-left.&#10;     *&#10;     * <p><b>Note:</b> This method cannot handle <a&#10;     * href=&#34;#supplementary&#34;> supplementary characters</a>. To support&#10;     * all Unicode characters, including supplementary characters, use&#10;     * the {@link #isMirrored(int)} method.&#10;     *&#10;     * @param  ch {@code char} for which the mirrored property is requested&#10;     * @return {@code true} if the char is mirrored, {@code false}&#10;     *         if the {@code char} is not mirrored or is not defined.&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 472
    label "isMirrored(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 473
    label "public static boolean isMirrored(int codePoint)"
    type "method"
    comment "&#10;    public static boolean isMirrored(int codePoint) {&#10;        return CharacterData.of(codePoint).isMirrored(codePoint);&#10;    }&#10;    "
  ]
  node [
    id 474
    label "public int compareTo(Character anotherCharacter)"
    type "method"
    comment "&#10;     * Compares two {@code Character} objects numerically.&#10;     *&#10;     * @param   anotherCharacter   the {@code Character} to be compared.&#10;     * @return  the value {@code 0} if the argument {@code Character}&#10;     *          is equal to this {@code Character}; a value less than&#10;     *          {@code 0} if this {@code Character} is numerically less&#10;     *          than the {@code Character} argument; and a value greater than&#10;     *          {@code 0} if this {@code Character} is numerically greater&#10;     *          than the {@code Character} argument (unsigned comparison).&#10;     *          Note that this is strictly a numerical comparison; it is not&#10;     *          locale-dependent.&#10;     * @since   1.2&#10;     "
  ]
  node [
    id 475
    label "public static int compare(char x, char y)"
    type "method"
    comment "&#10;     * Compares two {@code char} values numerically.&#10;     * The value returned is identical to what would be returned by:&#10;     * <pre>&#10;     *    Character.valueOf(x).compareTo(Character.valueOf(y))&#10;     * </pre>&#10;     *&#10;     * @param  x the first {@code char} to compare&#10;     * @param  y the second {@code char} to compare&#10;     * @return the value {@code 0} if {@code x == y};&#10;     *         a value less than {@code 0} if {@code x < y}; and&#10;     *         a value greater than {@code 0} if {@code x > y}&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 476
    label "public static char reverseBytes(char ch)"
    type "method"
    comment "&#10;     * Returns the value obtained by reversing the order of the bytes in the&#10;     * specified {@code char} value.&#10;     *&#10;     * @param ch The {@code char} of which to reverse the byte order.&#10;     * @return the value obtained by reversing (or, equivalently, swapping)&#10;     *     the bytes in the specified {@code char} value.&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 477
    label "public static String getName(int codePoint)"
    type "method"
    comment "&#10;     * Returns the Unicode name of the specified character&#10;     * {@code codePoint}, or null if the code point is&#10;     * {@link #UNASSIGNED unassigned}.&#10;     * <p>&#10;     * Note: if the specified character is not assigned a name by&#10;     * the <i>UnicodeData</i> file (part of the Unicode Character&#10;     * Database maintained by the Unicode Consortium), the returned&#10;     * name is the same as the result of expression:&#10;     *&#10;     * <blockquote>{@code&#10;     *     Character.UnicodeBlock.of(codePoint).toString().replace('_', ' ')&#10;     *     + &#34; &#34;&#10;     *     + Integer.toHexString(codePoint).toUpperCase(Locale.ROOT);&#10;     *&#10;     * }</blockquote>&#10;     *&#10;     * @param  codePoint the character (Unicode code point)&#10;     *&#10;     * @return the Unicode name of the specified character, or null if&#10;     *         the code point is unassigned.&#10;     *&#10;     * @throws IllegalArgumentException if the specified&#10;     *            {@code codePoint} is not a valid Unicode&#10;     *            code point.&#10;     *&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 478
    label "UNASSIGNED"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 479
    label "public static int codePointOf(String name)"
    type "method"
    comment "&#10;     * Returns the code point value of the Unicode character specified by&#10;     * the given Unicode character name.&#10;     * <p>&#10;     * Note: if a character is not assigned a name by the <i>UnicodeData</i>&#10;     * file (part of the Unicode Character Database maintained by the Unicode&#10;     * Consortium), its name is defined as the result of expression:&#10;     *&#10;     * <blockquote>{@code&#10;     *     Character.UnicodeBlock.of(codePoint).toString().replace('_', ' ')&#10;     *     + &#34; &#34;&#10;     *     + Integer.toHexString(codePoint).toUpperCase(Locale.ROOT);&#10;     *&#10;     * }</blockquote>&#10;     * <p>&#10;     * The {@code name} matching is case insensitive, with any leading and&#10;     * trailing whitespace character removed.&#10;     *&#10;     * @param  name the Unicode character name&#10;     *&#10;     * @return the code point value of the character specified by its name.&#10;     *&#10;     * @throws IllegalArgumentException if the specified {@code name}&#10;     *         is not a valid Unicode character name.&#10;     * @throws NullPointerException if {@code name} is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 480
    label "private static native String getNameImpl(int codePoint)"
    type "method"
    comment " Implement getNameImpl() and codePointOfImpl() natively."
  ]
  node [
    id 481
    label "public String toLowerCase()"
    type "method"
    comment "&#10;     * Converts all of the characters in this {@code String} to lower&#10;     * case using the rules of the default locale. This is equivalent to calling&#10;     * {@code toLowerCase(Locale.getDefault())}.&#10;     * <p>&#10;     * <b>Note:</b> This method is locale sensitive, and may produce unexpected&#10;     * results if used for strings that are intended to be interpreted locale&#10;     * independently.&#10;     * Examples are programming language identifiers, protocol keys, and HTML&#10;     * tags.&#10;     * For instance, {@code &#34;TITLE&#34;.toLowerCase()} in a Turkish locale&#10;     * returns {@code &#34;t\u005Cu0131tle&#34;}, where '\u005Cu0131' is the&#10;     * LATIN SMALL LETTER DOTLESS I character.&#10;     * To obtain correct results for locale insensitive strings, use&#10;     * {@code toLowerCase(Locale.ROOT)}.&#10;     *&#10;     * @return  the {@code String}, converted to lowercase.&#10;     * @see     java.lang.String#toLowerCase(Locale)&#10;     "
  ]
  node [
    id 482
    label "public String toUpperCase(Locale locale)"
    type "method"
    comment "&#10;     * Converts all of the characters in this {@code String} to upper&#10;     * case using the rules of the given {@code Locale}. Case mapping is based&#10;     * on the Unicode Standard version specified by the {@link java.lang.Character Character}&#10;     * class. Since case mappings are not always 1:1 char mappings, the resulting&#10;     * {@code String} may be a different length than the original {@code String}.&#10;     * <p>&#10;     * Examples of locale-sensitive and 1:M case mappings are in the following table.&#10;     *&#10;     * <table class=&#34;plain&#34;>&#10;     * <caption style=&#34;display:none&#34;>Examples of locale-sensitive and 1:M case mappings. Shows Language code of locale, lower case, upper case, and description.</caption>&#10;     * <thead>&#10;     * <tr>&#10;     *   <th scope=&#34;col&#34;>Language Code of Locale</th>&#10;     *   <th scope=&#34;col&#34;>Lower Case</th>&#10;     *   <th scope=&#34;col&#34;>Upper Case</th>&#10;     *   <th scope=&#34;col&#34;>Description</th>&#10;     * </tr>&#10;     * </thead>&#10;     * <tbody>&#10;     * <tr>&#10;     *   <td>tr (Turkish)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#38;#92;u0069</th>&#10;     *   <td>&#38;#92;u0130</td>&#10;     *   <td>small letter i -&#38;gt; capital letter I with dot above</td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>tr (Turkish)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#38;#92;u0131</th>&#10;     *   <td>&#38;#92;u0049</td>&#10;     *   <td>small letter dotless i -&#38;gt; capital letter I</td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>(all)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>&#38;#92;u00df</th>&#10;     *   <td>&#38;#92;u0053 &#38;#92;u0053</td>&#10;     *   <td>small letter sharp s -&#38;gt; two letters: SS</td>&#10;     * </tr>&#10;     * <tr>&#10;     *   <td>(all)</td>&#10;     *   <th scope=&#34;row&#34; style=&#34;font-weight:normal; text-align:left&#34;>Fahrvergn&#38;uuml;gen</th>&#10;     *   <td>FAHRVERGN&#38;Uuml;GEN</td>&#10;     *   <td></td>&#10;     * </tr>&#10;     * </tbody>&#10;     * </table>&#10;     * @param locale use the case transformation rules for this locale&#10;     * @return the {@code String}, converted to uppercase.&#10;     * @see     java.lang.String#toUpperCase()&#10;     * @see     java.lang.String#toLowerCase()&#10;     * @see     java.lang.String#toLowerCase(Locale)&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 483
    label "public String toUpperCase()"
    type "method"
    comment "&#10;     * Converts all of the characters in this {@code String} to upper&#10;     * case using the rules of the default locale. This method is equivalent to&#10;     * {@code toUpperCase(Locale.getDefault())}.&#10;     * <p>&#10;     * <b>Note:</b> This method is locale sensitive, and may produce unexpected&#10;     * results if used for strings that are intended to be interpreted locale&#10;     * independently.&#10;     * Examples are programming language identifiers, protocol keys, and HTML&#10;     * tags.&#10;     * For instance, {@code &#34;title&#34;.toUpperCase()} in a Turkish locale&#10;     * returns {@code &#34;T\u005Cu0130TLE&#34;}, where '\u005Cu0130' is the&#10;     * LATIN CAPITAL LETTER I WITH DOT ABOVE character.&#10;     * To obtain correct results for locale insensitive strings, use&#10;     * {@code toUpperCase(Locale.ROOT)}.&#10;     *&#10;     * @return  the {@code String}, converted to uppercase.&#10;     * @see     java.lang.String#toUpperCase(Locale)&#10;     "
  ]
  node [
    id 484
    label "public String trim()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with all leading&#10;     * and trailing space removed, where space is defined&#10;     * as any character whose codepoint is less than or equal to&#10;     * {@code 'U+0020'} (the space character).&#10;     * <p>&#10;     * If this {@code String} object represents an empty character&#10;     * sequence, or the first and last characters of character sequence&#10;     * represented by this {@code String} object both have codes&#10;     * that are not space (as defined above), then a&#10;     * reference to this {@code String} object is returned.&#10;     * <p>&#10;     * Otherwise, if all characters in this string are space (as&#10;     * defined above), then a  {@code String} object representing an&#10;     * empty string is returned.&#10;     * <p>&#10;     * Otherwise, let <i>k</i> be the index of the first character in the&#10;     * string whose code is not a space (as defined above) and let&#10;     * <i>m</i> be the index of the last character in the string whose code&#10;     * is not a space (as defined above). A {@code String}&#10;     * object is returned, representing the substring of this string that&#10;     * begins with the character at index <i>k</i> and ends with the&#10;     * character at index <i>m</i>-that is, the result of&#10;     * {@code this.substring(k, m + 1)}.&#10;     * <p>&#10;     * This method may be used to trim space (as defined above) from&#10;     * the beginning and end of a string.&#10;     *&#10;     * @return  a string whose value is this string, with all leading&#10;     *          and trailing space removed, or this string if it&#10;     *          has no leading or trailing space.&#10;     "
  ]
  node [
    id 485
    label "public String strip()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with all leading&#10;     * and trailing {@link Character#isWhitespace(int) white space}&#10;     * removed.&#10;     * <p>&#10;     * If this {@code String} object represents an empty string,&#10;     * or if all code points in this string are&#10;     * {@link Character#isWhitespace(int) white space}, then an empty string&#10;     * is returned.&#10;     * <p>&#10;     * Otherwise, returns a substring of this string beginning with the first&#10;     * code point that is not a {@link Character#isWhitespace(int) white space}&#10;     * up to and including the last code point that is not a&#10;     * {@link Character#isWhitespace(int) white space}.&#10;     * <p>&#10;     * This method may be used to strip&#10;     * {@link Character#isWhitespace(int) white space} from&#10;     * the beginning and end of a string.&#10;     *&#10;     * @return  a string whose value is this string, with all leading&#10;     *          and trailing white space removed&#10;     *&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 486
    label "public String stripLeading()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with all leading&#10;     * {@link Character#isWhitespace(int) white space} removed.&#10;     * <p>&#10;     * If this {@code String} object represents an empty string,&#10;     * or if all code points in this string are&#10;     * {@link Character#isWhitespace(int) white space}, then an empty string&#10;     * is returned.&#10;     * <p>&#10;     * Otherwise, returns a substring of this string beginning with the first&#10;     * code point that is not a {@link Character#isWhitespace(int) white space}&#10;     * up to to and including the last code point of this string.&#10;     * <p>&#10;     * This method may be used to trim&#10;     * {@link Character#isWhitespace(int) white space} from&#10;     * the beginning of a string.&#10;     *&#10;     * @return  a string whose value is this string, with all leading white&#10;     *          space removed&#10;     *&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 487
    label "public String stripTrailing()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with all trailing&#10;     * {@link Character#isWhitespace(int) white space} removed.&#10;     * <p>&#10;     * If this {@code String} object represents an empty string,&#10;     * or if all characters in this string are&#10;     * {@link Character#isWhitespace(int) white space}, then an empty string&#10;     * is returned.&#10;     * <p>&#10;     * Otherwise, returns a substring of this string beginning with the first&#10;     * code point of this string up to and including the last code point&#10;     * that is not a {@link Character#isWhitespace(int) white space}.&#10;     * <p>&#10;     * This method may be used to trim&#10;     * {@link Character#isWhitespace(int) white space} from&#10;     * the end of a string.&#10;     *&#10;     * @return  a string whose value is this string, with all trailing white&#10;     *          space removed&#10;     *&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 488
    label "public boolean isBlank()"
    type "method"
    comment "&#10;     * Returns {@code true} if the string is empty or contains only&#10;     * {@link Character#isWhitespace(int) white space} codepoints,&#10;     * otherwise {@code false}.&#10;     *&#10;     * @return {@code true} if the string is empty or contains only&#10;     *         {@link Character#isWhitespace(int) white space} codepoints,&#10;     *         otherwise {@code false}&#10;     *&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 489
    label "public Stream<String> lines()"
    type "method"
    comment "&#10;     * Returns a stream of lines extracted from this string,&#10;     * separated by line terminators.&#10;     * <p>&#10;     * A <i>line terminator</i> is one of the following:&#10;     * a line feed character {@code &#34;\n&#34;} (U+000A),&#10;     * a carriage return character {@code &#34;\r&#34;} (U+000D),&#10;     * or a carriage return followed immediately by a line feed&#10;     * {@code &#34;\r\n&#34;} (U+000D U+000A).&#10;     * <p>&#10;     * A <i>line</i> is either a sequence of zero or more characters&#10;     * followed by a line terminator, or it is a sequence of one or&#10;     * more characters followed by the end of the string. A&#10;     * line does not include the line terminator.&#10;     * <p>&#10;     * The stream returned by this method contains the lines from&#10;     * this string in the order in which they occur.&#10;     *&#10;     * @apiNote This definition of <i>line</i> implies that an empty&#10;     *          string has zero lines and that there is no empty line&#10;     *          following a line terminator at the end of a string.&#10;     *&#10;     * @implNote This method provides better performance than&#10;     *           split(&#34;\R&#34;) by supplying elements lazily and&#10;     *           by faster search of new line terminators.&#10;     *&#10;     * @return  the stream of lines extracted from this string&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 490
    label "public String indent(int n)"
    type "method"
    comment "&#10;     * Adjusts the indentation of each line of this string based on the value of&#10;     * {@code n}, and normalizes line termination characters.&#10;     * <p>&#10;     * This string is conceptually separated into lines using&#10;     * {@link String#lines()}. Each line is then adjusted as described below&#10;     * and then suffixed with a line feed {@code &#34;\n&#34;} (U+000A). The resulting&#10;     * lines are then concatenated and returned.&#10;     * <p>&#10;     * If {@code n > 0} then {@code n} spaces (U+0020) are inserted at the&#10;     * beginning of each line.&#10;     * <p>&#10;     * If {@code n < 0} then up to {@code n}&#10;     * {@linkplain Character#isWhitespace(int) white space characters} are removed&#10;     * from the beginning of each line. If a given line does not contain&#10;     * sufficient white space then all leading&#10;     * {@linkplain Character#isWhitespace(int) white space characters} are removed.&#10;     * Each white space character is treated as a single character. In&#10;     * particular, the tab character {@code &#34;\t&#34;} (U+0009) is considered a&#10;     * single character; it is not expanded.&#10;     * <p>&#10;     * If {@code n == 0} then the line remains unchanged. However, line&#10;     * terminators are still normalized.&#10;     *&#10;     * @param n  number of leading&#10;     *           {@linkplain Character#isWhitespace(int) white space characters}&#10;     *           to add or remove&#10;     *&#10;     * @return string with indentation adjusted and line endings normalized&#10;     *&#10;     * @see String#lines()&#10;     * @see String#isBlank()&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 12&#10;     "
  ]
  node [
    id 491
    label "lines()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 492
    label "public String stripIndent()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with incidental&#10;     * {@linkplain Character#isWhitespace(int) white space} removed from&#10;     * the beginning and end of every line.&#10;     * <p>&#10;     * Incidental {@linkplain Character#isWhitespace(int) white space}&#10;     * is often present in a text block to align the content with the opening&#10;     * delimiter. For example, in the following code, dots represent incidental&#10;     * {@linkplain Character#isWhitespace(int) white space}:&#10;     * <blockquote><pre>&#10;     * String html = &#34;&#34;&#34;&#10;     * ..............&#38;lt;html&#38;gt;&#10;     * ..............    &#38;lt;body&#38;gt;&#10;     * ..............        &#38;lt;p&#38;gt;Hello, world&#38;lt;/p&#38;gt;&#10;     * ..............    &#38;lt;/body&#38;gt;&#10;     * ..............&#38;lt;/html&#38;gt;&#10;     * ..............&#34;&#34;&#34;;&#10;     * </pre></blockquote>&#10;     * This method treats the incidental&#10;     * {@linkplain Character#isWhitespace(int) white space} as indentation to be&#10;     * stripped, producing a string that preserves the relative indentation of&#10;     * the content. Using | to visualize the start of each line of the string:&#10;     * <blockquote><pre>&#10;     * |&#38;lt;html&#38;gt;&#10;     * |    &#38;lt;body&#38;gt;&#10;     * |        &#38;lt;p&#38;gt;Hello, world&#38;lt;/p&#38;gt;&#10;     * |    &#38;lt;/body&#38;gt;&#10;     * |&#38;lt;/html&#38;gt;&#10;     * </pre></blockquote>&#10;     * First, the individual lines of this string are extracted. A <i>line</i>&#10;     * is a sequence of zero or more characters followed by either a line&#10;     * terminator or the end of the string.&#10;     * If the string has at least one line terminator, the last line consists&#10;     * of the characters between the last terminator and the end of the string.&#10;     * Otherwise, if the string has no terminators, the last line is the start&#10;     * of the string to the end of the string, in other words, the entire&#10;     * string.&#10;     * A line does not include the line terminator.&#10;     * <p>&#10;     * Then, the <i>minimum indentation</i> (min) is determined as follows:&#10;     * <ul>&#10;     *   <li><p>For each non-blank line (as defined by {@link String#isBlank()}),&#10;     *   the leading {@linkplain Character#isWhitespace(int) white space}&#10;     *   characters are counted.</p>&#10;     *   </li>&#10;     *   <li><p>The leading {@linkplain Character#isWhitespace(int) white space}&#10;     *   characters on the last line are also counted even if&#10;     *   {@linkplain String#isBlank() blank}.</p>&#10;     *   </li>&#10;     * </ul>&#10;     * <p>The <i>min</i> value is the smallest of these counts.&#10;     * <p>&#10;     * For each {@linkplain String#isBlank() non-blank} line, <i>min</i> leading&#10;     * {@linkplain Character#isWhitespace(int) white space} characters are&#10;     * removed, and any trailing {@linkplain Character#isWhitespace(int) white&#10;     * space} characters are removed. {@linkplain String#isBlank() Blank} lines&#10;     * are replaced with the empty string.&#10;     *&#10;     * <p>&#10;     * Finally, the lines are joined into a new string, using the LF character&#10;     * {@code &#34;\n&#34;} (U+000A) to separate lines.&#10;     *&#10;     * @apiNote&#10;     * This method's primary purpose is to shift a block of lines as far as&#10;     * possible to the left, while preserving relative indentation. Lines&#10;     * that were indented the least will thus have no leading&#10;     * {@linkplain Character#isWhitespace(int) white space}.&#10;     * The result will have the same number of line terminators as this string.&#10;     * If this string ends with a line terminator then the result will end&#10;     * with a line terminator.&#10;     *&#10;     * @implSpec&#10;     * This method treats all {@linkplain Character#isWhitespace(int) white space}&#10;     * characters as having equal width. As long as the indentation on every&#10;     * line is consistently composed of the same character sequences, then the&#10;     * result will be as described above.&#10;     *&#10;     * @return string with incidental indentation removed and line&#10;     *         terminators normalized&#10;     *&#10;     * @see String#lines()&#10;     * @see String#isBlank()&#10;     * @see String#indent(int)&#10;     * @see Character#isWhitespace(int)&#10;     *&#10;     * @since 15&#10;     *&#10;     "
  ]
  node [
    id 493
    label "isBlank()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 494
    label "public String translateEscapes()"
    type "method"
    comment "&#10;     * Returns a string whose value is this string, with escape sequences&#10;     * translated as if in a string literal.&#10;     * <p>&#10;     * Escape sequences are translated as follows;&#10;     * <table class=&#34;striped&#34;>&#10;     *   <caption style=&#34;display:none&#34;>Translation</caption>&#10;     *   <thead>&#10;     *   <tr>&#10;     *     <th scope=&#34;col&#34;>Escape</th>&#10;     *     <th scope=&#34;col&#34;>Name</th>&#10;     *     <th scope=&#34;col&#34;>Translation</th>&#10;     *   </tr>&#10;     *   </thead>&#10;     *   <tbody>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Cb}</th>&#10;     *     <td>backspace</td>&#10;     *     <td>{@code U+0008}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Ct}</th>&#10;     *     <td>horizontal tab</td>&#10;     *     <td>{@code U+0009}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Cn}</th>&#10;     *     <td>line feed</td>&#10;     *     <td>{@code U+000A}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Cf}</th>&#10;     *     <td>form feed</td>&#10;     *     <td>{@code U+000C}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Cr}</th>&#10;     *     <td>carriage return</td>&#10;     *     <td>{@code U+000D}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005Cs}</th>&#10;     *     <td>space</td>&#10;     *     <td>{@code U+0020}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005C&#34;}</th>&#10;     *     <td>double quote</td>&#10;     *     <td>{@code U+0022}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005C'}</th>&#10;     *     <td>single quote</td>&#10;     *     <td>{@code U+0027}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005C\u005C}</th>&#10;     *     <td>backslash</td>&#10;     *     <td>{@code U+005C}</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005C0 - \u005C377}</th>&#10;     *     <td>octal escape</td>&#10;     *     <td>code point equivalents</td>&#10;     *   </tr>&#10;     *   <tr>&#10;     *     <th scope=&#34;row&#34;>{@code \u005C<line-terminator>}</th>&#10;     *     <td>continuation</td>&#10;     *     <td>discard</td>&#10;     *   </tr>&#10;     *   </tbody>&#10;     * </table>&#10;     *&#10;     * @implNote&#10;     * This method does <em>not</em> translate Unicode escapes such as &#34;{@code \u005cu2022}&#34;.&#10;     * Unicode escapes are translated by the Java compiler when reading input characters and&#10;     * are not part of the string literal specification.&#10;     *&#10;     * @throws IllegalArgumentException when an escape sequence is malformed.&#10;     *&#10;     * @return String with escape sequences translated.&#10;     *&#10;     * @jls 3.10.7 Escape Sequences&#10;     *&#10;     * @since 15&#10;     "
  ]
  node [
    id 495
    label "public R transform(Function<? super String, ? extends R> f)"
    type "method"
    comment "&#10;     * This method allows the application of a function to {@code this}&#10;     * string. The function should expect a single String argument&#10;     * and produce an {@code R} result.&#10;     * <p>&#10;     * Any exception thrown by {@code f.apply()} will be propagated to the&#10;     * caller.&#10;     *&#10;     * @param f    a function to apply&#10;     *&#10;     * @param <R>  the type of the result&#10;     *&#10;     * @return     the result of applying the function to this string&#10;     *&#10;     * @see java.util.function.Function&#10;     *&#10;     * @since 12&#10;     "
  ]
  node [
    id 496
    label "public native char[] toCharArray()"
    type "method"
    comment "&#10;    public char[] toCharArray() {&#10;        return isLatin1() ? StringLatin1.toChars(value)&#10;                          : StringUTF16.toChars(value);&#10;    }&#10;    "
  ]
  node [
    id 497
    label "public static String format(String format, Object... args)"
    type "method"
    comment "&#10;     * Returns a formatted string using the specified format string and&#10;     * arguments.&#10;     *&#10;     * <p> The locale always used is the one returned by {@link&#10;     * java.util.Locale#getDefault(java.util.Locale.Category)&#10;     * Locale.getDefault(Locale.Category)} with&#10;     * {@link java.util.Locale.Category#FORMAT FORMAT} category specified.&#10;     *&#10;     * @param  format&#10;     *         A <a href=&#34;../util/Formatter.html#syntax&#34;>format string</a>&#10;     *&#10;     * @param  args&#10;     *         Arguments referenced by the format specifiers in the format&#10;     *         string.  If there are more arguments than format specifiers, the&#10;     *         extra arguments are ignored.  The number of arguments is&#10;     *         variable and may be zero.  The maximum number of arguments is&#10;     *         limited by the maximum dimension of a Java array as defined by&#10;     *         <cite>The Java&#38;trade; Virtual Machine Specification</cite>.&#10;     *         The behaviour on a&#10;     *         {@code null} argument depends on the <a&#10;     *         href=&#34;../util/Formatter.html#syntax&#34;>conversion</a>.&#10;     *&#10;     * @throws  java.util.IllegalFormatException&#10;     *          If a format string contains an illegal syntax, a format&#10;     *          specifier that is incompatible with the given arguments,&#10;     *          insufficient arguments given the format string, or other&#10;     *          illegal conditions.  For specification of all possible&#10;     *          formatting errors, see the <a&#10;     *          href=&#34;../util/Formatter.html#detail&#34;>Details</a> section of the&#10;     *          formatter class specification.&#10;     *&#10;     * @return  A formatted string&#10;     *&#10;     * @see  java.util.Formatter&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 498
    label "getDefault(java.util.Locale.Category)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 499
    label "FORMAT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 500
    label "public static String format(Locale l, String format, Object... args)"
    type "method"
    comment "&#10;     * Returns a formatted string using the specified locale, format string,&#10;     * and arguments.&#10;     *&#10;     * @param  l&#10;     *         The {@linkplain java.util.Locale locale} to apply during&#10;     *         formatting.  If {@code l} is {@code null} then no localization&#10;     *         is applied.&#10;     *&#10;     * @param  format&#10;     *         A <a href=&#34;../util/Formatter.html#syntax&#34;>format string</a>&#10;     *&#10;     * @param  args&#10;     *         Arguments referenced by the format specifiers in the format&#10;     *         string.  If there are more arguments than format specifiers, the&#10;     *         extra arguments are ignored.  The number of arguments is&#10;     *         variable and may be zero.  The maximum number of arguments is&#10;     *         limited by the maximum dimension of a Java array as defined by&#10;     *         <cite>The Java&#38;trade; Virtual Machine Specification</cite>.&#10;     *         The behaviour on a&#10;     *         {@code null} argument depends on the&#10;     *         <a href=&#34;../util/Formatter.html#syntax&#34;>conversion</a>.&#10;     *&#10;     * @throws  java.util.IllegalFormatException&#10;     *          If a format string contains an illegal syntax, a format&#10;     *          specifier that is incompatible with the given arguments,&#10;     *          insufficient arguments given the format string, or other&#10;     *          illegal conditions.  For specification of all possible&#10;     *          formatting errors, see the <a&#10;     *          href=&#34;../util/Formatter.html#detail&#34;>Details</a> section of the&#10;     *          formatter class specification&#10;     *&#10;     * @return  A formatted string&#10;     *&#10;     * @see  java.util.Formatter&#10;     * @since  1.5&#10;     "
  ]
  node [
    id 501
    label "public String formatted(Object... args)"
    type "method"
    comment "&#10;     * Formats using this string as the format string, and the supplied&#10;     * arguments.&#10;     *&#10;     * @implSpec This method is equivalent to {@code String.format(this, args)}.&#10;     *&#10;     * @param  args&#10;     *         Arguments referenced by the format specifiers in this string.&#10;     *&#10;     * @return  A formatted string&#10;     *&#10;     * @see  java.lang.String#format(String,Object...)&#10;     * @see  java.util.Formatter&#10;     *&#10;     * @since 15&#10;     *&#10;     "
  ]
  node [
    id 502
    label "public static String valueOf(Object obj)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code Object} argument.&#10;     *&#10;     * @param   obj   an {@code Object}.&#10;     * @return  if the argument is {@code null}, then a string equal to&#10;     *          {@code &#34;null&#34;}; otherwise, the value of&#10;     *          {@code obj.toString()} is returned.&#10;     * @see     java.lang.Object#toString()&#10;     "
  ]
  node [
    id 503
    label "public static String valueOf(char[] data)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code char} array&#10;     * argument. The contents of the character array are copied; subsequent&#10;     * modification of the character array does not affect the returned&#10;     * string.&#10;     *&#10;     * @param   data     the character array.&#10;     * @return  a {@code String} that contains the characters of the&#10;     *          character array.&#10;     "
  ]
  node [
    id 504
    label "public static String valueOf(char[] data, int offset, int count)"
    type "method"
    comment "&#10;     * Returns the string representation of a specific subarray of the&#10;     * {@code char} array argument.&#10;     * <p>&#10;     * The {@code offset} argument is the index of the first&#10;     * character of the subarray. The {@code count} argument&#10;     * specifies the length of the subarray. The contents of the subarray&#10;     * are copied; subsequent modification of the character array does not&#10;     * affect the returned string.&#10;     *&#10;     * @param   data     the character array.&#10;     * @param   offset   initial offset of the subarray.&#10;     * @param   count    length of the subarray.&#10;     * @return  a {@code String} that contains the characters of the&#10;     *          specified subarray of the character array.&#10;     * @exception IndexOutOfBoundsException if {@code offset} is&#10;     *          negative, or {@code count} is negative, or&#10;     *          {@code offset+count} is larger than&#10;     *          {@code data.length}.&#10;     "
  ]
  node [
    id 505
    label "public static String copyValueOf(char[] data, int offset, int count)"
    type "method"
    comment "&#10;     * Equivalent to {@link #valueOf(char[], int, int)}.&#10;     *&#10;     * @param   data     the character array.&#10;     * @param   offset   initial offset of the subarray.&#10;     * @param   count    length of the subarray.&#10;     * @return  a {@code String} that contains the characters of the&#10;     *          specified subarray of the character array.&#10;     * @exception IndexOutOfBoundsException if {@code offset} is&#10;     *          negative, or {@code count} is negative, or&#10;     *          {@code offset+count} is larger than&#10;     *          {@code data.length}.&#10;     "
  ]
  node [
    id 506
    label "valueOf(char"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 507
    label "public static String copyValueOf(char[] data)"
    type "method"
    comment "&#10;     * Equivalent to {@link #valueOf(char[])}.&#10;     *&#10;     * @param   data   the character array.&#10;     * @return  a {@code String} that contains the characters of the&#10;     *          character array.&#10;     "
  ]
  node [
    id 508
    label "public static String valueOf(boolean b)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code boolean} argument.&#10;     *&#10;     * @param   b   a {@code boolean}.&#10;     * @return  if the argument is {@code true}, a string equal to&#10;     *          {@code &#34;true&#34;} is returned; otherwise, a string equal to&#10;     *          {@code &#34;false&#34;} is returned.&#10;     "
  ]
  node [
    id 509
    label "public static String valueOf(char c)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code char}&#10;     * argument.&#10;     *&#10;     * @param   c   a {@code char}.&#10;     * @return  a string of length {@code 1} containing&#10;     *          as its single character the argument {@code c}.&#10;     "
  ]
  node [
    id 510
    label "public static String valueOf(int i)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code int} argument.&#10;     * <p>&#10;     * The representation is exactly the one returned by the&#10;     * {@code Integer.toString} method of one argument.&#10;     *&#10;     * @param   i   an {@code int}.&#10;     * @return  a string representation of the {@code int} argument.&#10;     * @see     java.lang.Integer#toString(int, int)&#10;     "
  ]
  node [
    id 511
    label "public static String valueOf(long l)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code long} argument.&#10;     * <p>&#10;     * The representation is exactly the one returned by the&#10;     * {@code Long.toString} method of one argument.&#10;     *&#10;     * @param   l   a {@code long}.&#10;     * @return  a string representation of the {@code long} argument.&#10;     * @see     java.lang.Long#toString(long)&#10;     "
  ]
  node [
    id 512
    label "public static String valueOf(float f)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code float} argument.&#10;     * <p>&#10;     * The representation is exactly the one returned by the&#10;     * {@code Float.toString} method of one argument.&#10;     *&#10;     * @param   f   a {@code float}.&#10;     * @return  a string representation of the {@code float} argument.&#10;     * @see     java.lang.Float#toString(float)&#10;     "
  ]
  node [
    id 513
    label "public static String valueOf(double d)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code double} argument.&#10;     * <p>&#10;     * The representation is exactly the one returned by the&#10;     * {@code Double.toString} method of one argument.&#10;     *&#10;     * @param   d   a {@code double}.&#10;     * @return  a  string representation of the {@code double} argument.&#10;     * @see     java.lang.Double#toString(double)&#10;     "
  ]
  node [
    id 514
    label "public native String intern()"
    type "method"
    comment " Android-added: Annotate native method as @FastNative."
  ]
  node [
    id 515
    label "public String repeat(int count)"
    type "method"
    comment "&#10;     * Returns a string whose value is the concatenation of this&#10;     * string repeated {@code count} times.&#10;     * <p>&#10;     * If this string is empty or count is zero then the empty&#10;     * string is returned.&#10;     *&#10;     * @param   count number of times to repeat&#10;     *&#10;     * @return  A string composed of this string repeated&#10;     *          {@code count} times or the empty string if this&#10;     *          string is empty or count is zero&#10;     *&#10;     * @throws  IllegalArgumentException if the {@code count} is&#10;     *          negative.&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 516
    label " void getBytes(byte[] dst, int dstBegin, byte coder)"
    type "method"
    comment "&#10;     * Copy character bytes from this string into dst starting at dstBegin.&#10;     * This method doesn't perform any range checking.&#10;     *&#10;     * Invoker guarantees: dst is in UTF16 (inflate itself for asb), if two&#10;     * coders are different, and dst is big enough (range check)&#10;     *&#10;     * @param dstBegin  the char index, not offset of byte[]&#10;     * @param coder     the coder of dst[]&#10;     "
  ]
  node [
    id 517
    label "private native void fillBytesLatin1(byte[] dst, int byteIndex)"
    type "method"
    comment "&#10;     * Fill the underlying characters into the byte buffer. No range check.&#10;     * The caller should guarantee that dst is big enough for this operation.&#10;     "
  ]
  node [
    id 518
    label "private native void fillBytesUTF16(byte[] dst, int byteIndex)"
    type "method"
    comment "&#10;     * Fill the underlying characters into the byte buffer. No range check.&#10;     * The caller should guarantee that dst is big enough for this operation.&#10;     "
  ]
  node [
    id 519
    label " byte coder()"
    type "method"
    comment "&#10;     * Android note: It returns UTF16 if the string has any 0x00 char.&#10;     * See the difference between {@link StringLatin1#canEncode(int)} and&#10;     * art::mirror::String::IsASCII(uint16_t) in string.h.&#10;     "
  ]
  node [
    id 520
    label "canEncode(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 521
    label "java.lang.StringLatin1"
    type "class"
    comment ""
  ]
  node [
    id 522
    label "public static int compareToUTF16(byte[] value, byte[] other, int len1, int len2)"
    type "method"
    comment "&#10;     * Checks the boundary and then compares the byte arrays.&#10;     "
  ]
  node [
    id 523
    label "public static void inflate(byte[] src, int srcOff, char[] dst, int dstOff, int len)"
    type "method"
    comment " inflatedCopy byte[] -> char[]"
  ]
  node [
    id 524
    label "public static void inflate(byte[] src, int srcOff, byte[] dst, int dstOff, int len)"
    type "method"
    comment " inflatedCopy byte[] -> byte[]"
  ]
  node [
    id 525
    label " static void checkIndex(int index, int length)"
    type "method"
    comment "&#10;     * StringIndexOutOfBoundsException  if {@code index} is&#10;     * negative or greater than or equal to {@code length}.&#10;     "
  ]
  node [
    id 526
    label " static void checkOffset(int offset, int length)"
    type "method"
    comment "&#10;     * StringIndexOutOfBoundsException  if {@code offset}&#10;     * is negative or greater than {@code length}.&#10;     "
  ]
  node [
    id 527
    label " static void checkBoundsOffCount(int offset, int count, int length)"
    type "method"
    comment "&#10;     * Check {@code offset}, {@code count} against {@code 0} and {@code length}&#10;     * bounds.&#10;     *&#10;     * @throws  StringIndexOutOfBoundsException&#10;     *          If {@code offset} is negative, {@code count} is negative,&#10;     *          or {@code offset} is greater than {@code length - count}&#10;     "
  ]
  node [
    id 528
    label " static String valueOfCodePoint(int codePoint)"
    type "method"
    comment "&#10;     * Returns the string representation of the {@code codePoint}&#10;     * argument.&#10;     *&#10;     * @param   codePoint a {@code codePoint}.&#10;     * @return  a string of length {@code 1} or {@code 2} containing&#10;     *          as its single character the argument {@code codePoint}.&#10;     * @throws IllegalArgumentException if the specified&#10;     *          {@code codePoint} is not a {@linkplain Character#isValidCodePoint&#10;     *          valid Unicode code point}.&#10;     "
  ]
  node [
    id 529
    label " static void checkBoundsBeginEnd(int begin, int end, int length)"
    type "method"
    comment "&#10;     * Check {@code begin}, {@code end} against {@code 0} and {@code length}&#10;     * bounds.&#10;     *&#10;     * @throws  StringIndexOutOfBoundsException&#10;     *          If {@code begin} is negative, {@code begin} is greater than&#10;     *          {@code end}, or {@code end} is greater than {@code length}.&#10;     "
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
    target 199
    type "child"
  ]
  edge [
    source 0
    target 200
    type "child"
  ]
  edge [
    source 0
    target 201
    type "child"
  ]
  edge [
    source 0
    target 218
    type "child"
  ]
  edge [
    source 0
    target 219
    type "child"
  ]
  edge [
    source 0
    target 220
    type "child"
  ]
  edge [
    source 0
    target 221
    type "child"
  ]
  edge [
    source 0
    target 222
    type "child"
  ]
  edge [
    source 0
    target 223
    type "child"
  ]
  edge [
    source 0
    target 224
    type "child"
  ]
  edge [
    source 0
    target 225
    type "child"
  ]
  edge [
    source 0
    target 226
    type "child"
  ]
  edge [
    source 0
    target 228
    type "child"
  ]
  edge [
    source 0
    target 116
    type "child"
  ]
  edge [
    source 0
    target 229
    type "child"
  ]
  edge [
    source 0
    target 230
    type "child"
  ]
  edge [
    source 0
    target 231
    type "child"
  ]
  edge [
    source 0
    target 232
    type "child"
  ]
  edge [
    source 0
    target 233
    type "child"
  ]
  edge [
    source 0
    target 234
    type "child"
  ]
  edge [
    source 0
    target 235
    type "child"
  ]
  edge [
    source 0
    target 236
    type "child"
  ]
  edge [
    source 0
    target 237
    type "child"
  ]
  edge [
    source 0
    target 238
    type "child"
  ]
  edge [
    source 0
    target 239
    type "child"
  ]
  edge [
    source 0
    target 240
    type "child"
  ]
  edge [
    source 0
    target 241
    type "child"
  ]
  edge [
    source 0
    target 242
    type "child"
  ]
  edge [
    source 0
    target 243
    type "child"
  ]
  edge [
    source 0
    target 244
    type "child"
  ]
  edge [
    source 0
    target 245
    type "child"
  ]
  edge [
    source 0
    target 246
    type "child"
  ]
  edge [
    source 0
    target 247
    type "child"
  ]
  edge [
    source 0
    target 248
    type "child"
  ]
  edge [
    source 0
    target 249
    type "child"
  ]
  edge [
    source 0
    target 250
    type "child"
  ]
  edge [
    source 0
    target 251
    type "child"
  ]
  edge [
    source 0
    target 275
    type "child"
  ]
  edge [
    source 0
    target 276
    type "child"
  ]
  edge [
    source 0
    target 340
    type "child"
  ]
  edge [
    source 0
    target 341
    type "child"
  ]
  edge [
    source 0
    target 342
    type "child"
  ]
  edge [
    source 0
    target 343
    type "child"
  ]
  edge [
    source 0
    target 345
    type "child"
  ]
  edge [
    source 0
    target 346
    type "child"
  ]
  edge [
    source 0
    target 347
    type "child"
  ]
  edge [
    source 0
    target 481
    type "child"
  ]
  edge [
    source 0
    target 482
    type "child"
  ]
  edge [
    source 0
    target 483
    type "child"
  ]
  edge [
    source 0
    target 484
    type "child"
  ]
  edge [
    source 0
    target 485
    type "child"
  ]
  edge [
    source 0
    target 486
    type "child"
  ]
  edge [
    source 0
    target 487
    type "child"
  ]
  edge [
    source 0
    target 488
    type "child"
  ]
  edge [
    source 0
    target 489
    type "child"
  ]
  edge [
    source 0
    target 490
    type "child"
  ]
  edge [
    source 0
    target 492
    type "child"
  ]
  edge [
    source 0
    target 494
    type "child"
  ]
  edge [
    source 0
    target 495
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
    target 496
    type "child"
  ]
  edge [
    source 0
    target 497
    type "child"
  ]
  edge [
    source 0
    target 500
    type "child"
  ]
  edge [
    source 0
    target 501
    type "child"
  ]
  edge [
    source 0
    target 502
    type "child"
  ]
  edge [
    source 0
    target 503
    type "child"
  ]
  edge [
    source 0
    target 504
    type "child"
  ]
  edge [
    source 0
    target 505
    type "child"
  ]
  edge [
    source 0
    target 507
    type "child"
  ]
  edge [
    source 0
    target 508
    type "child"
  ]
  edge [
    source 0
    target 509
    type "child"
  ]
  edge [
    source 0
    target 510
    type "child"
  ]
  edge [
    source 0
    target 511
    type "child"
  ]
  edge [
    source 0
    target 512
    type "child"
  ]
  edge [
    source 0
    target 513
    type "child"
  ]
  edge [
    source 0
    target 514
    type "child"
  ]
  edge [
    source 0
    target 515
    type "child"
  ]
  edge [
    source 0
    target 516
    type "child"
  ]
  edge [
    source 0
    target 517
    type "child"
  ]
  edge [
    source 0
    target 518
    type "child"
  ]
  edge [
    source 0
    target 519
    type "child"
  ]
  edge [
    source 0
    target 525
    type "child"
  ]
  edge [
    source 0
    target 526
    type "child"
  ]
  edge [
    source 0
    target 527
    type "child"
  ]
  edge [
    source 0
    target 528
    type "child"
  ]
  edge [
    source 0
    target 529
    type "child"
  ]
  edge [
    source 1
    target 49
    type "link"
  ]
  edge [
    source 2
    target 3
    type "link"
  ]
  edge [
    source 5
    target 3
    type "link"
  ]
  edge [
    source 6
    target 3
    type "link"
  ]
  edge [
    source 7
    target 8
    type "child"
  ]
  edge [
    source 7
    target 9
    type "child"
  ]
  edge [
    source 7
    target 10
    type "child"
  ]
  edge [
    source 7
    target 11
    type "child"
  ]
  edge [
    source 7
    target 12
    type "child"
  ]
  edge [
    source 7
    target 13
    type "child"
  ]
  edge [
    source 7
    target 14
    type "child"
  ]
  edge [
    source 7
    target 15
    type "child"
  ]
  edge [
    source 10
    target 3
    type "link"
  ]
  edge [
    source 12
    target 79
    type "link"
  ]
  edge [
    source 12
    target 76
    type "link"
  ]
  edge [
    source 21
    target 22
    type "link"
  ]
  edge [
    source 22
    target 23
    type "child"
  ]
  edge [
    source 22
    target 24
    type "child"
  ]
  edge [
    source 22
    target 25
    type "child"
  ]
  edge [
    source 22
    target 29
    type "child"
  ]
  edge [
    source 22
    target 30
    type "child"
  ]
  edge [
    source 22
    target 31
    type "child"
  ]
  edge [
    source 22
    target 32
    type "child"
  ]
  edge [
    source 22
    target 34
    type "child"
  ]
  edge [
    source 22
    target 35
    type "child"
  ]
  edge [
    source 22
    target 36
    type "child"
  ]
  edge [
    source 22
    target 38
    type "child"
  ]
  edge [
    source 22
    target 39
    type "child"
  ]
  edge [
    source 22
    target 40
    type "child"
  ]
  edge [
    source 22
    target 41
    type "child"
  ]
  edge [
    source 22
    target 185
    type "child"
  ]
  edge [
    source 22
    target 189
    type "child"
  ]
  edge [
    source 22
    target 190
    type "child"
  ]
  edge [
    source 22
    target 192
    type "child"
  ]
  edge [
    source 22
    target 193
    type "child"
  ]
  edge [
    source 22
    target 195
    type "child"
  ]
  edge [
    source 22
    target 196
    type "child"
  ]
  edge [
    source 22
    target 198
    type "child"
  ]
  edge [
    source 25
    target 26
    type "link"
  ]
  edge [
    source 25
    target 27
    type "link"
  ]
  edge [
    source 25
    target 28
    type "link"
  ]
  edge [
    source 32
    target 33
    type "link"
  ]
  edge [
    source 36
    target 37
    type "link"
  ]
  edge [
    source 41
    target 42
    type "link"
  ]
  edge [
    source 41
    target 43
    type "link"
  ]
  edge [
    source 41
    target 54
    type "link"
  ]
  edge [
    source 41
    target 55
    type "link"
  ]
  edge [
    source 41
    target 57
    type "link"
  ]
  edge [
    source 41
    target 53
    type "link"
  ]
  edge [
    source 41
    target 58
    type "link"
  ]
  edge [
    source 41
    target 3
    type "link"
  ]
  edge [
    source 43
    target 12
    type "child"
  ]
  edge [
    source 43
    target 44
    type "child"
  ]
  edge [
    source 43
    target 45
    type "child"
  ]
  edge [
    source 43
    target 46
    type "child"
  ]
  edge [
    source 43
    target 47
    type "child"
  ]
  edge [
    source 43
    target 48
    type "child"
  ]
  edge [
    source 43
    target 1
    type "child"
  ]
  edge [
    source 43
    target 50
    type "child"
  ]
  edge [
    source 43
    target 51
    type "child"
  ]
  edge [
    source 43
    target 52
    type "child"
  ]
  edge [
    source 52
    target 42
    type "link"
  ]
  edge [
    source 52
    target 53
    type "link"
  ]
  edge [
    source 56
    target 12
    type "child"
  ]
  edge [
    source 59
    target 60
    type "child"
  ]
  edge [
    source 59
    target 61
    type "child"
  ]
  edge [
    source 59
    target 62
    type "child"
  ]
  edge [
    source 59
    target 63
    type "child"
  ]
  edge [
    source 59
    target 64
    type "child"
  ]
  edge [
    source 59
    target 65
    type "child"
  ]
  edge [
    source 59
    target 66
    type "child"
  ]
  edge [
    source 59
    target 67
    type "child"
  ]
  edge [
    source 59
    target 68
    type "child"
  ]
  edge [
    source 59
    target 69
    type "child"
  ]
  edge [
    source 59
    target 70
    type "child"
  ]
  edge [
    source 59
    target 71
    type "child"
  ]
  edge [
    source 59
    target 72
    type "child"
  ]
  edge [
    source 59
    target 113
    type "child"
  ]
  edge [
    source 59
    target 171
    type "child"
  ]
  edge [
    source 59
    target 172
    type "child"
  ]
  edge [
    source 59
    target 173
    type "child"
  ]
  edge [
    source 59
    target 174
    type "child"
  ]
  edge [
    source 59
    target 175
    type "child"
  ]
  edge [
    source 59
    target 176
    type "child"
  ]
  edge [
    source 59
    target 115
    type "child"
  ]
  edge [
    source 59
    target 177
    type "child"
  ]
  edge [
    source 59
    target 178
    type "child"
  ]
  edge [
    source 59
    target 179
    type "child"
  ]
  edge [
    source 59
    target 180
    type "child"
  ]
  edge [
    source 59
    target 181
    type "child"
  ]
  edge [
    source 59
    target 182
    type "child"
  ]
  edge [
    source 59
    target 183
    type "child"
  ]
  edge [
    source 72
    target 73
    type "link"
  ]
  edge [
    source 74
    target 75
    type "child"
  ]
  edge [
    source 74
    target 81
    type "child"
  ]
  edge [
    source 74
    target 84
    type "child"
  ]
  edge [
    source 74
    target 85
    type "child"
  ]
  edge [
    source 74
    target 86
    type "child"
  ]
  edge [
    source 74
    target 87
    type "child"
  ]
  edge [
    source 74
    target 89
    type "child"
  ]
  edge [
    source 74
    target 90
    type "child"
  ]
  edge [
    source 74
    target 92
    type "child"
  ]
  edge [
    source 74
    target 93
    type "child"
  ]
  edge [
    source 74
    target 94
    type "child"
  ]
  edge [
    source 74
    target 95
    type "child"
  ]
  edge [
    source 74
    target 96
    type "child"
  ]
  edge [
    source 74
    target 98
    type "child"
  ]
  edge [
    source 74
    target 99
    type "child"
  ]
  edge [
    source 74
    target 100
    type "child"
  ]
  edge [
    source 74
    target 101
    type "child"
  ]
  edge [
    source 74
    target 103
    type "child"
  ]
  edge [
    source 74
    target 104
    type "child"
  ]
  edge [
    source 74
    target 105
    type "child"
  ]
  edge [
    source 74
    target 106
    type "child"
  ]
  edge [
    source 74
    target 107
    type "child"
  ]
  edge [
    source 74
    target 108
    type "child"
  ]
  edge [
    source 74
    target 111
    type "child"
  ]
  edge [
    source 74
    target 112
    type "child"
  ]
  edge [
    source 74
    target 64
    type "child"
  ]
  edge [
    source 74
    target 67
    type "child"
  ]
  edge [
    source 74
    target 69
    type "child"
  ]
  edge [
    source 74
    target 70
    type "child"
  ]
  edge [
    source 74
    target 71
    type "child"
  ]
  edge [
    source 74
    target 72
    type "child"
  ]
  edge [
    source 74
    target 113
    type "child"
  ]
  edge [
    source 74
    target 114
    type "child"
  ]
  edge [
    source 74
    target 115
    type "child"
  ]
  edge [
    source 74
    target 12
    type "child"
  ]
  edge [
    source 74
    target 116
    type "child"
  ]
  edge [
    source 74
    target 117
    type "child"
  ]
  edge [
    source 74
    target 118
    type "child"
  ]
  edge [
    source 74
    target 120
    type "child"
  ]
  edge [
    source 74
    target 123
    type "child"
  ]
  edge [
    source 74
    target 124
    type "child"
  ]
  edge [
    source 74
    target 125
    type "child"
  ]
  edge [
    source 74
    target 126
    type "child"
  ]
  edge [
    source 74
    target 127
    type "child"
  ]
  edge [
    source 74
    target 128
    type "child"
  ]
  edge [
    source 74
    target 129
    type "child"
  ]
  edge [
    source 74
    target 130
    type "child"
  ]
  edge [
    source 74
    target 131
    type "child"
  ]
  edge [
    source 74
    target 132
    type "child"
  ]
  edge [
    source 74
    target 133
    type "child"
  ]
  edge [
    source 74
    target 134
    type "child"
  ]
  edge [
    source 74
    target 135
    type "child"
  ]
  edge [
    source 74
    target 136
    type "child"
  ]
  edge [
    source 74
    target 137
    type "child"
  ]
  edge [
    source 74
    target 138
    type "child"
  ]
  edge [
    source 74
    target 139
    type "child"
  ]
  edge [
    source 74
    target 140
    type "child"
  ]
  edge [
    source 74
    target 141
    type "child"
  ]
  edge [
    source 74
    target 142
    type "child"
  ]
  edge [
    source 74
    target 143
    type "child"
  ]
  edge [
    source 74
    target 144
    type "child"
  ]
  edge [
    source 74
    target 145
    type "child"
  ]
  edge [
    source 74
    target 146
    type "child"
  ]
  edge [
    source 74
    target 147
    type "child"
  ]
  edge [
    source 74
    target 148
    type "child"
  ]
  edge [
    source 74
    target 149
    type "child"
  ]
  edge [
    source 74
    target 150
    type "child"
  ]
  edge [
    source 74
    target 151
    type "child"
  ]
  edge [
    source 74
    target 152
    type "child"
  ]
  edge [
    source 74
    target 153
    type "child"
  ]
  edge [
    source 74
    target 154
    type "child"
  ]
  edge [
    source 74
    target 155
    type "child"
  ]
  edge [
    source 74
    target 156
    type "child"
  ]
  edge [
    source 74
    target 157
    type "child"
  ]
  edge [
    source 74
    target 158
    type "child"
  ]
  edge [
    source 74
    target 159
    type "child"
  ]
  edge [
    source 74
    target 160
    type "child"
  ]
  edge [
    source 74
    target 161
    type "child"
  ]
  edge [
    source 74
    target 162
    type "child"
  ]
  edge [
    source 74
    target 163
    type "child"
  ]
  edge [
    source 74
    target 164
    type "child"
  ]
  edge [
    source 74
    target 165
    type "child"
  ]
  edge [
    source 74
    target 166
    type "child"
  ]
  edge [
    source 74
    target 167
    type "child"
  ]
  edge [
    source 74
    target 168
    type "child"
  ]
  edge [
    source 74
    target 169
    type "child"
  ]
  edge [
    source 74
    target 170
    type "child"
  ]
  edge [
    source 75
    target 76
    type "link"
  ]
  edge [
    source 75
    target 80
    type "link"
  ]
  edge [
    source 77
    target 78
    type "child"
  ]
  edge [
    source 77
    target 12
    type "child"
  ]
  edge [
    source 81
    target 82
    type "link"
  ]
  edge [
    source 81
    target 83
    type "link"
  ]
  edge [
    source 81
    target 76
    type "link"
  ]
  edge [
    source 84
    target 82
    type "link"
  ]
  edge [
    source 84
    target 83
    type "link"
  ]
  edge [
    source 84
    target 76
    type "link"
  ]
  edge [
    source 85
    target 82
    type "link"
  ]
  edge [
    source 85
    target 83
    type "link"
  ]
  edge [
    source 85
    target 76
    type "link"
  ]
  edge [
    source 86
    target 76
    type "link"
  ]
  edge [
    source 87
    target 88
    type "link"
  ]
  edge [
    source 87
    target 76
    type "link"
  ]
  edge [
    source 89
    target 76
    type "link"
  ]
  edge [
    source 90
    target 91
    type "link"
  ]
  edge [
    source 90
    target 76
    type "link"
  ]
  edge [
    source 96
    target 97
    type "link"
  ]
  edge [
    source 101
    target 102
    type "link"
  ]
  edge [
    source 104
    target 102
    type "link"
  ]
  edge [
    source 108
    target 109
    type "link"
  ]
  edge [
    source 108
    target 110
    type "link"
  ]
  edge [
    source 111
    target 80
    type "link"
  ]
  edge [
    source 112
    target 80
    type "link"
  ]
  edge [
    source 118
    target 119
    type "link"
  ]
  edge [
    source 120
    target 121
    type "link"
  ]
  edge [
    source 120
    target 122
    type "link"
  ]
  edge [
    source 123
    target 77
    type "link"
  ]
  edge [
    source 124
    target 76
    type "link"
  ]
  edge [
    source 124
    target 79
    type "link"
  ]
  edge [
    source 126
    target 76
    type "link"
  ]
  edge [
    source 174
    target 109
    type "link"
  ]
  edge [
    source 174
    target 110
    type "link"
  ]
  edge [
    source 175
    target 80
    type "link"
  ]
  edge [
    source 176
    target 80
    type "link"
  ]
  edge [
    source 178
    target 88
    type "link"
  ]
  edge [
    source 181
    target 97
    type "link"
  ]
  edge [
    source 182
    target 102
    type "link"
  ]
  edge [
    source 183
    target 184
    type "link"
  ]
  edge [
    source 185
    target 42
    type "link"
  ]
  edge [
    source 185
    target 186
    type "link"
  ]
  edge [
    source 185
    target 187
    type "link"
  ]
  edge [
    source 185
    target 53
    type "link"
  ]
  edge [
    source 185
    target 58
    type "link"
  ]
  edge [
    source 185
    target 188
    type "link"
  ]
  edge [
    source 189
    target 42
    type "link"
  ]
  edge [
    source 189
    target 53
    type "link"
  ]
  edge [
    source 190
    target 191
    type "link"
  ]
  edge [
    source 193
    target 43
    type "link"
  ]
  edge [
    source 193
    target 194
    type "link"
  ]
  edge [
    source 193
    target 53
    type "link"
  ]
  edge [
    source 193
    target 58
    type "link"
  ]
  edge [
    source 195
    target 55
    type "link"
  ]
  edge [
    source 196
    target 197
    type "link"
  ]
  edge [
    source 199
    target 22
    type "link"
  ]
  edge [
    source 200
    target 22
    type "link"
  ]
  edge [
    source 201
    target 202
    type "link"
  ]
  edge [
    source 202
    target 203
    type "child"
  ]
  edge [
    source 202
    target 204
    type "child"
  ]
  edge [
    source 202
    target 205
    type "child"
  ]
  edge [
    source 202
    target 206
    type "child"
  ]
  edge [
    source 202
    target 207
    type "child"
  ]
  edge [
    source 202
    target 208
    type "child"
  ]
  edge [
    source 202
    target 209
    type "child"
  ]
  edge [
    source 202
    target 210
    type "child"
  ]
  edge [
    source 202
    target 211
    type "child"
  ]
  edge [
    source 202
    target 212
    type "child"
  ]
  edge [
    source 202
    target 213
    type "child"
  ]
  edge [
    source 202
    target 214
    type "child"
  ]
  edge [
    source 202
    target 215
    type "child"
  ]
  edge [
    source 202
    target 216
    type "child"
  ]
  edge [
    source 202
    target 217
    type "child"
  ]
  edge [
    source 218
    target 202
    type "link"
  ]
  edge [
    source 219
    target 202
    type "link"
  ]
  edge [
    source 220
    target 202
    type "link"
  ]
  edge [
    source 222
    target 202
    type "link"
  ]
  edge [
    source 223
    target 202
    type "link"
  ]
  edge [
    source 224
    target 202
    type "link"
  ]
  edge [
    source 226
    target 227
    type "link"
  ]
  edge [
    source 228
    target 227
    type "link"
  ]
  edge [
    source 247
    target 7
    type "link"
  ]
  edge [
    source 251
    target 252
    type "link"
  ]
  edge [
    source 252
    target 253
    type "child"
  ]
  edge [
    source 252
    target 254
    type "child"
  ]
  edge [
    source 252
    target 262
    type "child"
  ]
  edge [
    source 252
    target 12
    type "child"
  ]
  edge [
    source 252
    target 263
    type "child"
  ]
  edge [
    source 252
    target 264
    type "child"
  ]
  edge [
    source 252
    target 265
    type "child"
  ]
  edge [
    source 252
    target 266
    type "child"
  ]
  edge [
    source 252
    target 267
    type "child"
  ]
  edge [
    source 252
    target 269
    type "child"
  ]
  edge [
    source 252
    target 270
    type "child"
  ]
  edge [
    source 252
    target 271
    type "child"
  ]
  edge [
    source 252
    target 272
    type "child"
  ]
  edge [
    source 252
    target 273
    type "child"
  ]
  edge [
    source 252
    target 274
    type "child"
  ]
  edge [
    source 254
    target 255
    type "link"
  ]
  edge [
    source 254
    target 256
    type "link"
  ]
  edge [
    source 254
    target 257
    type "link"
  ]
  edge [
    source 254
    target 258
    type "link"
  ]
  edge [
    source 254
    target 259
    type "link"
  ]
  edge [
    source 254
    target 260
    type "link"
  ]
  edge [
    source 254
    target 261
    type "link"
  ]
  edge [
    source 267
    target 268
    type "link"
  ]
  edge [
    source 276
    target 277
    type "link"
  ]
  edge [
    source 276
    target 252
    type "link"
  ]
  edge [
    source 276
    target 278
    type "link"
  ]
  edge [
    source 278
    target 279
    type "child"
  ]
  edge [
    source 278
    target 280
    type "child"
  ]
  edge [
    source 278
    target 289
    type "child"
  ]
  edge [
    source 278
    target 290
    type "child"
  ]
  edge [
    source 278
    target 291
    type "child"
  ]
  edge [
    source 278
    target 282
    type "child"
  ]
  edge [
    source 278
    target 283
    type "child"
  ]
  edge [
    source 278
    target 292
    type "child"
  ]
  edge [
    source 278
    target 284
    type "child"
  ]
  edge [
    source 278
    target 285
    type "child"
  ]
  edge [
    source 278
    target 293
    type "child"
  ]
  edge [
    source 278
    target 286
    type "child"
  ]
  edge [
    source 278
    target 287
    type "child"
  ]
  edge [
    source 278
    target 294
    type "child"
  ]
  edge [
    source 278
    target 288
    type "child"
  ]
  edge [
    source 278
    target 295
    type "child"
  ]
  edge [
    source 278
    target 296
    type "child"
  ]
  edge [
    source 278
    target 297
    type "child"
  ]
  edge [
    source 278
    target 299
    type "child"
  ]
  edge [
    source 278
    target 301
    type "child"
  ]
  edge [
    source 278
    target 302
    type "child"
  ]
  edge [
    source 278
    target 308
    type "child"
  ]
  edge [
    source 278
    target 310
    type "child"
  ]
  edge [
    source 278
    target 312
    type "child"
  ]
  edge [
    source 278
    target 314
    type "child"
  ]
  edge [
    source 278
    target 316
    type "child"
  ]
  edge [
    source 278
    target 319
    type "child"
  ]
  edge [
    source 278
    target 321
    type "child"
  ]
  edge [
    source 278
    target 322
    type "child"
  ]
  edge [
    source 278
    target 323
    type "child"
  ]
  edge [
    source 278
    target 326
    type "child"
  ]
  edge [
    source 278
    target 329
    type "child"
  ]
  edge [
    source 278
    target 330
    type "child"
  ]
  edge [
    source 278
    target 331
    type "child"
  ]
  edge [
    source 278
    target 332
    type "child"
  ]
  edge [
    source 278
    target 333
    type "child"
  ]
  edge [
    source 278
    target 12
    type "child"
  ]
  edge [
    source 278
    target 334
    type "child"
  ]
  edge [
    source 278
    target 335
    type "child"
  ]
  edge [
    source 278
    target 336
    type "child"
  ]
  edge [
    source 278
    target 337
    type "child"
  ]
  edge [
    source 278
    target 338
    type "child"
  ]
  edge [
    source 278
    target 339
    type "child"
  ]
  edge [
    source 280
    target 281
    type "link"
  ]
  edge [
    source 281
    target 282
    type "child"
  ]
  edge [
    source 281
    target 283
    type "child"
  ]
  edge [
    source 281
    target 284
    type "child"
  ]
  edge [
    source 281
    target 285
    type "child"
  ]
  edge [
    source 281
    target 286
    type "child"
  ]
  edge [
    source 281
    target 287
    type "child"
  ]
  edge [
    source 281
    target 288
    type "child"
  ]
  edge [
    source 297
    target 298
    type "link"
  ]
  edge [
    source 299
    target 300
    type "link"
  ]
  edge [
    source 301
    target 278
    type "link"
  ]
  edge [
    source 302
    target 303
    type "link"
  ]
  edge [
    source 302
    target 304
    type "link"
  ]
  edge [
    source 302
    target 305
    type "link"
  ]
  edge [
    source 302
    target 306
    type "link"
  ]
  edge [
    source 302
    target 298
    type "link"
  ]
  edge [
    source 302
    target 307
    type "link"
  ]
  edge [
    source 308
    target 304
    type "link"
  ]
  edge [
    source 308
    target 305
    type "link"
  ]
  edge [
    source 308
    target 309
    type "link"
  ]
  edge [
    source 308
    target 298
    type "link"
  ]
  edge [
    source 308
    target 307
    type "link"
  ]
  edge [
    source 310
    target 311
    type "link"
  ]
  edge [
    source 312
    target 313
    type "link"
  ]
  edge [
    source 314
    target 315
    type "link"
  ]
  edge [
    source 316
    target 317
    type "link"
  ]
  edge [
    source 316
    target 318
    type "link"
  ]
  edge [
    source 319
    target 318
    type "link"
  ]
  edge [
    source 319
    target 320
    type "link"
  ]
  edge [
    source 321
    target 315
    type "link"
  ]
  edge [
    source 322
    target 317
    type "link"
  ]
  edge [
    source 322
    target 318
    type "link"
  ]
  edge [
    source 323
    target 324
    type "link"
  ]
  edge [
    source 323
    target 325
    type "link"
  ]
  edge [
    source 326
    target 327
    type "link"
  ]
  edge [
    source 326
    target 328
    type "link"
  ]
  edge [
    source 329
    target 327
    type "link"
  ]
  edge [
    source 329
    target 328
    type "link"
  ]
  edge [
    source 330
    target 324
    type "link"
  ]
  edge [
    source 332
    target 325
    type "link"
  ]
  edge [
    source 340
    target 252
    type "link"
  ]
  edge [
    source 340
    target 278
    type "link"
  ]
  edge [
    source 342
    target 252
    type "link"
  ]
  edge [
    source 342
    target 268
    type "link"
  ]
  edge [
    source 343
    target 344
    type "link"
  ]
  edge [
    source 347
    target 348
    type "link"
  ]
  edge [
    source 348
    target 349
    type "child"
  ]
  edge [
    source 348
    target 351
    type "child"
  ]
  edge [
    source 348
    target 116
    type "child"
  ]
  edge [
    source 348
    target 352
    type "child"
  ]
  edge [
    source 348
    target 353
    type "child"
  ]
  edge [
    source 348
    target 12
    type "child"
  ]
  edge [
    source 348
    target 354
    type "child"
  ]
  edge [
    source 348
    target 355
    type "child"
  ]
  edge [
    source 348
    target 356
    type "child"
  ]
  edge [
    source 348
    target 359
    type "child"
  ]
  edge [
    source 348
    target 362
    type "child"
  ]
  edge [
    source 348
    target 364
    type "child"
  ]
  edge [
    source 348
    target 367
    type "child"
  ]
  edge [
    source 348
    target 370
    type "child"
  ]
  edge [
    source 348
    target 373
    type "child"
  ]
  edge [
    source 348
    target 374
    type "child"
  ]
  edge [
    source 348
    target 376
    type "child"
  ]
  edge [
    source 348
    target 378
    type "child"
  ]
  edge [
    source 348
    target 379
    type "child"
  ]
  edge [
    source 348
    target 380
    type "child"
  ]
  edge [
    source 348
    target 381
    type "child"
  ]
  edge [
    source 348
    target 382
    type "child"
  ]
  edge [
    source 348
    target 383
    type "child"
  ]
  edge [
    source 348
    target 384
    type "child"
  ]
  edge [
    source 348
    target 385
    type "child"
  ]
  edge [
    source 348
    target 386
    type "child"
  ]
  edge [
    source 348
    target 391
    type "child"
  ]
  edge [
    source 348
    target 394
    type "child"
  ]
  edge [
    source 348
    target 395
    type "child"
  ]
  edge [
    source 348
    target 396
    type "child"
  ]
  edge [
    source 348
    target 397
    type "child"
  ]
  edge [
    source 348
    target 398
    type "child"
  ]
  edge [
    source 348
    target 399
    type "child"
  ]
  edge [
    source 348
    target 400
    type "child"
  ]
  edge [
    source 348
    target 402
    type "child"
  ]
  edge [
    source 348
    target 403
    type "child"
  ]
  edge [
    source 348
    target 405
    type "child"
  ]
  edge [
    source 348
    target 406
    type "child"
  ]
  edge [
    source 348
    target 408
    type "child"
  ]
  edge [
    source 348
    target 409
    type "child"
  ]
  edge [
    source 348
    target 411
    type "child"
  ]
  edge [
    source 348
    target 412
    type "child"
  ]
  edge [
    source 348
    target 414
    type "child"
  ]
  edge [
    source 348
    target 415
    type "child"
  ]
  edge [
    source 348
    target 417
    type "child"
  ]
  edge [
    source 348
    target 418
    type "child"
  ]
  edge [
    source 348
    target 420
    type "child"
  ]
  edge [
    source 348
    target 421
    type "child"
  ]
  edge [
    source 348
    target 422
    type "child"
  ]
  edge [
    source 348
    target 423
    type "child"
  ]
  edge [
    source 348
    target 427
    type "child"
  ]
  edge [
    source 348
    target 428
    type "child"
  ]
  edge [
    source 348
    target 430
    type "child"
  ]
  edge [
    source 348
    target 431
    type "child"
  ]
  edge [
    source 348
    target 433
    type "child"
  ]
  edge [
    source 348
    target 434
    type "child"
  ]
  edge [
    source 348
    target 436
    type "child"
  ]
  edge [
    source 348
    target 437
    type "child"
  ]
  edge [
    source 348
    target 439
    type "child"
  ]
  edge [
    source 348
    target 440
    type "child"
  ]
  edge [
    source 348
    target 442
    type "child"
  ]
  edge [
    source 348
    target 443
    type "child"
  ]
  edge [
    source 348
    target 445
    type "child"
  ]
  edge [
    source 348
    target 446
    type "child"
  ]
  edge [
    source 348
    target 448
    type "child"
  ]
  edge [
    source 348
    target 449
    type "child"
  ]
  edge [
    source 348
    target 451
    type "child"
  ]
  edge [
    source 348
    target 452
    type "child"
  ]
  edge [
    source 348
    target 454
    type "child"
  ]
  edge [
    source 348
    target 455
    type "child"
  ]
  edge [
    source 348
    target 457
    type "child"
  ]
  edge [
    source 348
    target 458
    type "child"
  ]
  edge [
    source 348
    target 460
    type "child"
  ]
  edge [
    source 348
    target 461
    type "child"
  ]
  edge [
    source 348
    target 463
    type "child"
  ]
  edge [
    source 348
    target 464
    type "child"
  ]
  edge [
    source 348
    target 466
    type "child"
  ]
  edge [
    source 348
    target 467
    type "child"
  ]
  edge [
    source 348
    target 468
    type "child"
  ]
  edge [
    source 348
    target 470
    type "child"
  ]
  edge [
    source 348
    target 471
    type "child"
  ]
  edge [
    source 348
    target 473
    type "child"
  ]
  edge [
    source 348
    target 474
    type "child"
  ]
  edge [
    source 348
    target 475
    type "child"
  ]
  edge [
    source 348
    target 476
    type "child"
  ]
  edge [
    source 348
    target 477
    type "child"
  ]
  edge [
    source 348
    target 479
    type "child"
  ]
  edge [
    source 348
    target 480
    type "child"
  ]
  edge [
    source 349
    target 350
    type "link"
  ]
  edge [
    source 356
    target 357
    type "link"
  ]
  edge [
    source 356
    target 358
    type "link"
  ]
  edge [
    source 359
    target 360
    type "link"
  ]
  edge [
    source 359
    target 361
    type "link"
  ]
  edge [
    source 362
    target 363
    type "link"
  ]
  edge [
    source 362
    target 358
    type "link"
  ]
  edge [
    source 364
    target 365
    type "link"
  ]
  edge [
    source 364
    target 366
    type "link"
  ]
  edge [
    source 367
    target 368
    type "link"
  ]
  edge [
    source 367
    target 369
    type "link"
  ]
  edge [
    source 370
    target 371
    type "link"
  ]
  edge [
    source 370
    target 372
    type "link"
  ]
  edge [
    source 374
    target 375
    type "link"
  ]
  edge [
    source 376
    target 377
    type "link"
  ]
  edge [
    source 378
    target 3
    type "link"
  ]
  edge [
    source 382
    target 3
    type "link"
  ]
  edge [
    source 386
    target 387
    type "link"
  ]
  edge [
    source 386
    target 388
    type "link"
  ]
  edge [
    source 386
    target 389
    type "link"
  ]
  edge [
    source 386
    target 390
    type "link"
  ]
  edge [
    source 391
    target 392
    type "link"
  ]
  edge [
    source 391
    target 387
    type "link"
  ]
  edge [
    source 391
    target 388
    type "link"
  ]
  edge [
    source 391
    target 393
    type "link"
  ]
  edge [
    source 400
    target 401
    type "link"
  ]
  edge [
    source 403
    target 404
    type "link"
  ]
  edge [
    source 406
    target 407
    type "link"
  ]
  edge [
    source 409
    target 410
    type "link"
  ]
  edge [
    source 412
    target 413
    type "link"
  ]
  edge [
    source 415
    target 416
    type "link"
  ]
  edge [
    source 418
    target 419
    type "link"
  ]
  edge [
    source 423
    target 424
    type "link"
  ]
  edge [
    source 423
    target 425
    type "link"
  ]
  edge [
    source 423
    target 426
    type "link"
  ]
  edge [
    source 428
    target 429
    type "link"
  ]
  edge [
    source 431
    target 424
    type "link"
  ]
  edge [
    source 431
    target 425
    type "link"
  ]
  edge [
    source 431
    target 432
    type "link"
  ]
  edge [
    source 434
    target 435
    type "link"
  ]
  edge [
    source 437
    target 438
    type "link"
  ]
  edge [
    source 440
    target 0
    type "link"
  ]
  edge [
    source 440
    target 441
    type "link"
  ]
  edge [
    source 443
    target 444
    type "link"
  ]
  edge [
    source 443
    target 0
    type "link"
  ]
  edge [
    source 446
    target 447
    type "link"
  ]
  edge [
    source 449
    target 450
    type "link"
  ]
  edge [
    source 452
    target 453
    type "link"
  ]
  edge [
    source 455
    target 456
    type "link"
  ]
  edge [
    source 458
    target 459
    type "link"
  ]
  edge [
    source 461
    target 462
    type "link"
  ]
  edge [
    source 464
    target 465
    type "link"
  ]
  edge [
    source 468
    target 469
    type "link"
  ]
  edge [
    source 471
    target 472
    type "link"
  ]
  edge [
    source 477
    target 478
    type "link"
  ]
  edge [
    source 482
    target 348
    type "link"
  ]
  edge [
    source 485
    target 459
    type "link"
  ]
  edge [
    source 486
    target 459
    type "link"
  ]
  edge [
    source 487
    target 459
    type "link"
  ]
  edge [
    source 488
    target 459
    type "link"
  ]
  edge [
    source 490
    target 491
    type "link"
  ]
  edge [
    source 492
    target 493
    type "link"
  ]
  edge [
    source 497
    target 498
    type "link"
  ]
  edge [
    source 497
    target 499
    type "link"
  ]
  edge [
    source 505
    target 506
    type "link"
  ]
  edge [
    source 507
    target 506
    type "link"
  ]
  edge [
    source 519
    target 520
    type "link"
  ]
  edge [
    source 521
    target 522
    type "child"
  ]
  edge [
    source 521
    target 523
    type "child"
  ]
  edge [
    source 521
    target 524
    type "child"
  ]
]
